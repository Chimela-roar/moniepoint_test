import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:moniepoint_test/application/animation.dart';
import 'package:moniepoint_test/application/theme.dart';
import 'package:moniepoint_test/application/utils.dart';

@RoutePage()
class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> with TickerProviderStateMixin {
  List emptySearch = [];
  late AnimationManager _animationManager;

  @override
  void initState() {
    // emptySearch = searchList;
    super.initState();
    _animationManager = AnimationManager(this);
  }

  void onChanged(String? value) {
    if (value == null || value.isEmpty) {
      emptySearch = [];
    } else {
      emptySearch = searchList
          .where(
            (element) =>
                element["name"]!.toLowerCase().contains(value.toLowerCase()) ||
                element["id"]!.toLowerCase().contains(value.toLowerCase()),
          )
          .toList();
    }
    _animationManager.reset();
    _animationManager.forward();
    setState(() {});
  }

  @override
  void dispose() {
    _animationManager.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 80,
        leadingWidth: 30,
        leading: GestureDetector(
          onTap: () {
            FocusManager.instance.primaryFocus!.unfocus();
            context.router.pop();
          },
          child: const Padding(
            padding: EdgeInsets.only(left: 10),
            child: Icon(
              Icons.arrow_back_ios_new_outlined,
              color: Colors.white,
            ),
          ),
        ),
        title: Hero(
          tag: "Search",
          child: Container(
            padding: const EdgeInsets.only(left: 10),
            height: 50,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(50)),
            child: Material(
              color: Colors.transparent,
              child: TextFormField(
                style: const TextStyle(fontSize: 17),
                onChanged: onChanged,
                enabled: true,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: const Icon(Icons.search_outlined, size: 23),
                    suffixIcon: Padding(
                      padding: const EdgeInsets.all(5),
                      child: Container(
                        decoration: BoxDecoration(
                            color: orangeColor,
                            borderRadius: BorderRadius.circular(50)),
                        child: Transform.rotate(
                          angle: pi / 2,
                          child: const Icon(
                            Icons.flip_outlined,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                      ),
                    ),
                    hintText: "Enter the receipt number...",
                    contentPadding: const EdgeInsets.only(top: 15, right: 10)),
              ),
            ),
          ),
        ),
      ),
      body: Padding(
          padding: const EdgeInsets.all(15),
          child: SlideTransition(
            position: _animationManager.slideAnimation,
            child: Container(
              padding: emptySearch.isNotEmpty
                  ? const EdgeInsets.all(10)
                  : EdgeInsets.zero,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromARGB(52, 158, 158, 158),
                      offset: Offset(0, 3),
                      blurRadius: 2,
                      spreadRadius: 0.0,
                    ),
                  ]),
              child: ListView.separated(
                shrinkWrap: true,
                separatorBuilder: (context, index) => const Divider(),
                itemCount: emptySearch.length,
                itemBuilder: (context, index) {
                  return Container(
                    padding: const EdgeInsets.all(10),
                    height: 70,
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.deepPurple,
                          radius: 20,
                          child: SizedBox(
                            height: 20,
                            width: 20,
                            child: Image.asset(
                              'assets/images/packageicon.png',
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                emptySearch[index]["name"] ?? "",
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(height: 5),
                              Text(
                                "#${emptySearch[index]["id"]} • ${emptySearch[index]["location"]}",
                                style: const TextStyle(
                                  fontSize: 15,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          )),
    );
  }
}

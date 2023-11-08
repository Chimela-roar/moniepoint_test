import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:moniepoint_test/application/theme.dart';

@RoutePage()
class Search extends StatelessWidget {
  const Search({super.key});

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
                enabled: true,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: const Icon(Icons.search_outlined, size: 20),
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
    );
  }
}

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:moniepoint_test/application/animation.dart';
import 'package:moniepoint_test/application/theme.dart';
import 'package:moniepoint_test/application/utils.dart';
import 'package:moniepoint_test/presentation/router/router.gr.dart';
import 'package:moniepoint_test/widget/custom_filled_button.dart';
import 'package:moniepoint_test/widget/custom_textfield.dart';
import 'package:flutter_animate/flutter_animate.dart';

@RoutePage()
class Calculate extends StatefulWidget {
  const Calculate({super.key});

  @override
  State<Calculate> createState() => _CalculateState();
}

class _CalculateState extends State<Calculate> with TickerProviderStateMixin {
  String category = "";
  double appBarHeight = 140;
  late AnimationManager _animationManager;

  @override
  void initState() {
    super.initState();
    appBarHeight = appBarHeight / 2;
    _animationManager = AnimationManager(this);
    _animationManager.forward();
  }

  @override
  void dispose() {
    _animationManager.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        context.router.replaceAll([
          const HomeIndex(children: [Home()])
        ]);
        return true;
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(appBarHeight),
          child: AppBar(
            toolbarHeight: appBarHeight,
            automaticallyImplyLeading: false,
            leading: GestureDetector(
              onTap: () {
                context.router.replaceAll([
                  const HomeIndex(children: [Home()])
                ]);
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: const Icon(
                  Icons.arrow_back_ios_new_outlined,
                  color: Colors.white,
                ).animate().slide(
                      duration: const Duration(milliseconds: 500),
                      begin: const Offset(-1, 0),
                      end: const Offset(0, 0),
                    ),
              ),
            ),
            centerTitle: true,
            title: const Text("Calculate"),
          ).animate().slide(
                duration: const Duration(milliseconds: 500),
                begin: const Offset(0, -1),
                end: const Offset(0, 0),
              ),
        ),
        body: SlideTransition(
          position: _animationManager.slideAnimation,
          child: Padding(
            padding:
                const EdgeInsets.only(top: 20, left: 15, right: 15, bottom: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Destination",
                        style: titleText.copyWith(fontSize: 19),
                      ),
                      const SizedBox(height: 15),
                      Container(
                        padding: const EdgeInsets.all(15),
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            boxShadow: const [
                              BoxShadow(
                                color: Color.fromARGB(17, 158, 158, 158),
                                offset: Offset(0, 4),
                                blurRadius: 1.0,
                                spreadRadius: 0.0,
                              ),
                            ]),
                        child: const Column(
                          children: [
                            CustomTextfield(
                              hintText: "Sender location",
                              icon: Icons.unarchive_outlined,
                            ),
                            SizedBox(height: 10),
                            CustomTextfield(
                              hintText: "Receiver location",
                              icon: Icons.archive_outlined,
                            ),
                            SizedBox(height: 10),
                            CustomTextfield(
                              hintText: "Approx weight",
                              icon: Icons.scale_outlined,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 30),
                      Text(
                        "Packaging",
                        style: titleText.copyWith(fontSize: 19),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        "What are you sending?",
                        style: titleText.copyWith(
                            fontSize: 18,
                            fontWeight: FontWeight.normal,
                            color: deepGrey,
                            letterSpacing: 0),
                      ),
                      const SizedBox(height: 15),
                      Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: const [
                                BoxShadow(
                                  color: Color.fromARGB(28, 158, 158, 158),
                                  offset: Offset(0, 4),
                                  blurRadius: 0.5,
                                  spreadRadius: 0.0,
                                ),
                              ]),
                          child: Theme(
                            data: Theme.of(context)
                                .copyWith(dividerColor: Colors.transparent),
                            child: ExpansionTile(
                              title: Row(
                                children: [
                                  Container(
                                    width: 45,
                                    padding: const EdgeInsets.only(left: 5),
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          "assets/images/box.png",
                                          scale: 5,
                                        ),
                                        const SizedBox(width: 7),
                                        Container(
                                          height: 20,
                                          width: 1,
                                          color: const Color.fromARGB(
                                              139, 158, 158, 158),
                                        )
                                      ],
                                    ),
                                  ),
                                  const Text(
                                    "Box",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 0),
                                  )
                                ],
                              ),
                            ),
                          )),
                      const SizedBox(height: 30),
                      Text(
                        "Categories",
                        style: titleText.copyWith(fontSize: 19),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        "What are you sending?",
                        style: titleText.copyWith(
                            fontSize: 18,
                            fontWeight: FontWeight.normal,
                            color: deepGrey,
                            letterSpacing: 0),
                      ),
                      const SizedBox(height: 15),
                      SlideTransition(
                        position: _animationManager.slideRightAnimation,
                        child: Wrap(
                            direction: Axis.horizontal,
                            children: List.generate(categories.length, (index) {
                              return Container(
                                margin: const EdgeInsets.only(right: 10),
                                child: FilterChip(
                                    backgroundColor: const Color(0xFFFBFAFB),
                                    label: Text(
                                      categories[index],
                                      style: TextStyle(
                                          fontSize: 17,
                                          color: category == categories[index]
                                              ? Colors.white
                                              : Colors.black),
                                    ),
                                    selected: category == categories[index],
                                    onSelected: (value) {
                                      setState(() {
                                        category = categories[index];
                                      });
                                    },
                                    side: const BorderSide(
                                      color: Color.fromARGB(255, 87, 87, 87),
                                    ),
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 5, vertical: 10),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    selectedColor: Colors.black,
                                    checkmarkColor: Colors.white,
                                    labelStyle: category == categories[index]
                                        ? const TextStyle(
                                            color: Colors.white,
                                          )
                                        : const TextStyle(
                                            color: Color(0XFF40454B))),
                              );
                            })),
                      )
                    ],
                  ),
                ),
                CustomFilledButton(
                    text: "Calculate",
                    onTap: () {
                      context.router.push(const CustomSuccess());
                    },
                    disabled: false)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

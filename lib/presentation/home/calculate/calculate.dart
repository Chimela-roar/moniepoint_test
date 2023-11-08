import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:moniepoint_test/application/animation.dart';
import 'package:moniepoint_test/application/theme.dart';
import 'package:moniepoint_test/application/utils.dart';
import 'package:moniepoint_test/presentation/router/router.gr.dart';
import 'package:moniepoint_test/widget/custom_filled_button.dart';
import 'package:moniepoint_test/widget/custom_textfield.dart';

@RoutePage()
class Calculate extends StatefulWidget {
  const Calculate({super.key});

  @override
  State<Calculate> createState() => _CalculateState();
}

class _CalculateState extends State<Calculate> with TickerProviderStateMixin {
  String category = "";
  late AnimationManager _animationManager;

  @override
  void initState() {
    super.initState();
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
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: GestureDetector(
          onTap: () {
            context.router.popAndPush(const HomeIndex(children: [Home()]));
          },
          child: const Padding(
            padding: EdgeInsets.only(left: 10),
            child: Icon(
              Icons.arrow_back_ios_new_outlined,
              color: Colors.white,
            ),
          ),
        ),
        centerTitle: true,
        title: const Text("Calculate"),
      ),
      body: SlideTransition(
        position: _animationManager.slideAnimation,
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Destination",
                      style: titleText.copyWith(fontSize: 22),
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
                              color: Color.fromARGB(28, 158, 158, 158),
                              offset: Offset(0, 4),
                              blurRadius: 1.0,
                              spreadRadius: 0.0,
                            ),
                          ]),
                      child: const Column(
                        children: [
                          CustomTextfield(
                            hintText: "Sender location",
                            icon: Icons.outbox_outlined,
                          ),
                          SizedBox(height: 15),
                          CustomTextfield(
                            hintText: "Receiver location",
                            icon: Icons.move_to_inbox_outlined,
                          ),
                          SizedBox(height: 15),
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
                      style: titleText.copyWith(fontSize: 22),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      "What are you sending?",
                      style: titleText.copyWith(
                          fontSize: 20,
                          fontWeight: FontWeight.normal,
                          color: deepGrey,
                          letterSpacing: 0),
                    ),
                    const SizedBox(height: 15),
                    Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
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
                                        "assets/images/receive.png",
                                        scale: 25,
                                      ),
                                      const SizedBox(width: 7),
                                      Container(
                                        height: 20,
                                        width: 1,
                                        color: Colors.grey,
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
                      style: titleText.copyWith(fontSize: 22),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      "What are you sending?",
                      style: titleText.copyWith(
                          fontSize: 20,
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
                              margin: const EdgeInsets.only(right: 10, top: 10),
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    category = categories[index];
                                  });
                                },
                                child: Container(
                                  height: 40,
                                  width: 90,
                                  decoration: BoxDecoration(
                                      color: category == categories[index]
                                          ? Colors.black
                                          : Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(color: Colors.black)),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Visibility(
                                          visible:
                                              category == categories[index],
                                          child: const Icon(
                                            Icons.check,
                                            size: 15,
                                            color: Colors.white,
                                          )),
                                      const SizedBox(width: 5),
                                      Text(
                                        categories[index],
                                        style: TextStyle(
                                            fontSize: 17,
                                            color: category == categories[index]
                                                ? Colors.white
                                                : Colors.black),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
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
    );
  }
}

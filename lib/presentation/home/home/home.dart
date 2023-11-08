import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:moniepoint_test/application/animation.dart';
import 'package:moniepoint_test/application/theme.dart';
import 'package:moniepoint_test/presentation/router/router.gr.dart';

@RoutePage()
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
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
        body: Column(
      children: [
        SlideTransition(
          position: _animationManager.slideTopAnimation,
          child: Container(
            padding:
                const EdgeInsets.only(top: 60, right: 15, left: 15, bottom: 20),
            height: 200,
            width: MediaQuery.of(context).size.width,
            color: primaryColor,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Image.asset(
                                "assets/images/profile_image.webp",
                                fit: BoxFit.cover,
                                width: 45,
                                height: 45,
                              )),
                          const SizedBox(width: 15),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.near_me,
                                      size: 13, color: greyColor),
                                  SizedBox(width: 5),
                                  Text("Your location",
                                      style: TextStyle(
                                          fontSize: 14, color: greyColor))
                                ],
                              ),
                              SizedBox(height: 5),
                              Row(
                                children: [
                                  Text("Lagos, Nigeria",
                                      style: TextStyle(
                                          fontSize: 15, color: Colors.white)),
                                  SizedBox(width: 5),
                                  Icon(Icons.expand_more,
                                      size: 15, color: Colors.white)
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      Container(
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50)),
                        child:
                            const Icon(Icons.notifications_outlined, size: 20),
                      ),
                    ],
                  ),
                  Hero(
                    tag: "Search",
                    child: Container(
                      padding: const EdgeInsets.only(left: 10),
                      height: 50,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50)),
                      child: Material(
                        color: Colors.transparent,
                        child: TextFormField(
                          readOnly: true,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              prefixIcon:
                                  const Icon(Icons.search_outlined, size: 20),
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
                              contentPadding:
                                  const EdgeInsets.only(top: 15, right: 10)),
                          onTap: () {
                            context.router.push(const Search());
                          },
                        ),
                      ),
                    ),
                  ),
                ]),
          ),
        ),
        Expanded(
          child: ListView(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: SlideTransition(
                  position: _animationManager.slideAnimation,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Tracking", style: titleText),
                      const SizedBox(height: 15),
                      Container(
                        padding: const EdgeInsets.all(15),
                        // height: 300,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15)),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Shipment Number",
                                      style: TextStyle(color: deepGrey),
                                    ),
                                    const SizedBox(height: 5),
                                    SizedBox(
                                      height: 20,
                                      width: MediaQuery.of(context).size.width /
                                          1.5,
                                      child: const Text(
                                        "NEJ274Y859453864JH",
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w700),
                                      ),
                                    )
                                  ],
                                ),
                                Image.asset(
                                  "assets/images/fork.png",
                                )
                              ],
                            ),
                            const Divider(thickness: 0.3),
                            const SizedBox(height: 10),
                            Row(
                              children: [
                                Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                      color: lightOrange,
                                      borderRadius: BorderRadius.circular(50)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image.asset(
                                      "assets/images/send.png",
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 10),
                                Expanded(
                                  child: SizedBox(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          "Sender",
                                          style: TextStyle(color: deepGrey),
                                        ),
                                        const SizedBox(height: 5),
                                        SizedBox(
                                          height: 20,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              1.5,
                                          child: const Text(
                                            "Atlanta, 5647",
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                                letterSpacing: 0.1,
                                                fontSize: 15,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                    child: SizedBox(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        "Time",
                                        style: TextStyle(color: deepGrey),
                                      ),
                                      const SizedBox(height: 5),
                                      SizedBox(
                                        height: 20,
                                        width:
                                            MediaQuery.of(context).size.width /
                                                1.5,
                                        child: Row(
                                          children: [
                                            Container(
                                              height: 5,
                                              width: 5,
                                              decoration: BoxDecoration(
                                                  color: Colors.green,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          50)),
                                            ),
                                            const SizedBox(width: 5),
                                            const Text(
                                              "2 days - 3 days",
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                              style: TextStyle(
                                                  letterSpacing: 0.1,
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ))
                              ],
                            ),
                            const SizedBox(height: 30),
                            Row(
                              children: [
                                Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                      color: lightGreen,
                                      borderRadius: BorderRadius.circular(50)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image.asset(
                                      "assets/images/receive.png",
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 10),
                                Expanded(
                                  child: SizedBox(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          "Receiver",
                                          style: TextStyle(color: deepGrey),
                                        ),
                                        const SizedBox(height: 5),
                                        SizedBox(
                                          height: 20,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              1.5,
                                          child: const Text(
                                            "Canada, 5647",
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                                letterSpacing: 0.1,
                                                fontSize: 15,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                    child: SizedBox(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        "Status",
                                        style: TextStyle(color: deepGrey),
                                      ),
                                      const SizedBox(height: 5),
                                      SizedBox(
                                        height: 20,
                                        width:
                                            MediaQuery.of(context).size.width /
                                                1.5,
                                        child: const Text(
                                          "Waiting to collect",
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              letterSpacing: 0.1,
                                              fontSize: 15,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      )
                                    ],
                                  ),
                                ))
                              ],
                            ),
                            const SizedBox(height: 3),
                            const Divider(thickness: 0.3),
                            const SizedBox(height: 3),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.add,
                                        size: 20, color: orangeColor),
                                    Text(
                                      "Add Stop",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w600,
                                          color: orangeColor),
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      const SizedBox(height: 30),
                      const Text("Available vehicles", style: titleText),
                      const SizedBox(height: 15),
                      SizedBox(
                        height: 200,
                        child: ListView.separated(
                          separatorBuilder: (context, index) =>
                              const SizedBox(width: 15),
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemCount: 4,
                          itemBuilder: (context, index) {
                            return Container(
                              padding: const EdgeInsets.all(15),
                              width: 150,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Stack(
                                children: [
                                  const Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Ocean Freight",
                                        style: TextStyle(
                                            fontSize: 16, letterSpacing: 0.3),
                                      ),
                                      SizedBox(height: 5),
                                      Text("International",
                                          style: TextStyle(color: deepGrey)),
                                    ],
                                  ),
                                  Positioned(
                                    left: -10,
                                    bottom: -40,
                                    child: SlideTransition(
                                      position:
                                          _animationManager.slideRightAnimation,
                                      child: Image.asset(
                                        "assets/images/sea_2.png",
                                        width: 300,
                                        height: 300,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    ));
  }
}

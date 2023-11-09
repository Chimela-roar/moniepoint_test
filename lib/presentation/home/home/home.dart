import 'dart:math';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:moniepoint_test/application/theme.dart';
import 'package:moniepoint_test/presentation/router/router.gr.dart';
import 'package:flutter_animate/flutter_animate.dart';

@RoutePage()
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          padding:
              const EdgeInsets.only(top: 50, right: 15, left: 15, bottom: 20),
          height: 190,
          width: MediaQuery.of(context).size.width,
          color: primaryColor,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                            radius: 20,
                            backgroundColor: Colors.white,
                            backgroundImage:
                                AssetImage('assets/images/profile_image.webp')),
                        SizedBox(width: 15),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.near_me, size: 15, color: greyColor),
                                SizedBox(width: 5),
                                Text("Your location",
                                    style: TextStyle(
                                        fontSize: 15, color: greyColor))
                              ],
                            ),
                            SizedBox(height: 5),
                            Row(
                              children: [
                                Text('Wertheimer, Illinois',
                                    style: TextStyle(
                                        fontSize: 17, color: Colors.white)),
                                SizedBox(width: 5),
                                Icon(Icons.keyboard_arrow_down_sharp,
                                    size: 15, color: Colors.white)
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 20,
                      child: Icon(
                        Icons.notifications_none_outlined,
                        color: Colors.black,
                      ),
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
                                const Icon(Icons.search_outlined, size: 23),
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
        ).animate().slide(
              duration: const Duration(milliseconds: 500),
              begin: const Offset(0, -1),
              end: const Offset(0, 0),
            ),
        ListView(
          shrinkWrap: true,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15),
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
                                const SizedBox(height: 7),
                                SizedBox(
                                  height: 20,
                                  width:
                                      MediaQuery.of(context).size.width / 1.5,
                                  child: const Text(
                                    "NEJ274Y859453864JH",
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w700),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                                height: 70,
                                width: 70,
                                child: Image.asset('assets/images/truck.png'))
                          ],
                        ),
                        const Divider(thickness: 0.3),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            SizedBox(
                              height: 50,
                              width: 50,
                              child: Image.asset(
                                "assets/images/sender.png",
                              ),
                            ),
                            const SizedBox(width: 5),
                            Expanded(
                              flex: 2,
                              child: SizedBox(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Sender",
                                      style: TextStyle(color: deepGrey),
                                    ),
                                    const SizedBox(height: 5),
                                    SizedBox(
                                      height: 20,
                                      width: MediaQuery.of(context).size.width /
                                          1.5,
                                      child: const Text(
                                        "Atlanta, 5647",
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            letterSpacing: 0.1,
                                            fontSize: 16,
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
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "Time",
                                    style: TextStyle(color: deepGrey),
                                  ),
                                  const SizedBox(height: 5),
                                  SizedBox(
                                    height: 20,
                                    width:
                                        MediaQuery.of(context).size.width / 1.5,
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 5,
                                          width: 5,
                                          decoration: BoxDecoration(
                                              color: Colors.green,
                                              borderRadius:
                                                  BorderRadius.circular(50)),
                                        ),
                                        const SizedBox(width: 5),
                                        const Text(
                                          "2 days - 3 days",
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              letterSpacing: 0.1,
                                              fontSize: 16,
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
                        const SizedBox(height: 20),
                        Row(
                          children: [
                            SizedBox(
                              height: 50,
                              width: 50,
                              child: Image.asset(
                                "assets/images/receiver.png",
                              ),
                            ),
                            const SizedBox(width: 5),
                            Expanded(
                              flex: 2,
                              child: SizedBox(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Receiver",
                                      style: TextStyle(color: deepGrey),
                                    ),
                                    const SizedBox(height: 5),
                                    SizedBox(
                                      height: 20,
                                      width: MediaQuery.of(context).size.width /
                                          1.5,
                                      child: const Text(
                                        "Canada, 5647",
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            letterSpacing: 0.1,
                                            fontSize: 16,
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
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "Status",
                                    style: TextStyle(color: deepGrey),
                                  ),
                                  const SizedBox(height: 5),
                                  SizedBox(
                                    height: 20,
                                    width:
                                        MediaQuery.of(context).size.width / 1.5,
                                    child: const Text(
                                      "Waiting to collect",
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          letterSpacing: 0.1,
                                          fontSize: 16,
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
                                Icon(Icons.add, size: 20, color: orangeColor),
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
                      height: 220,
                      child: ListView(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        children: const [
                          Vehicles(
                              image: "boat",
                              subTitle: "International",
                              title: "Ocean Freight"),
                          Vehicles(
                              image: "trailer",
                              subTitle: "Reliable",
                              title: "Cargo freight"),
                          Vehicles(
                              image: "trailer",
                              subTitle: "International",
                              title: "Air Freight"),
                          Vehicles(
                              image: "boat",
                              subTitle: "International",
                              title: "Sea Freight"),
                        ],
                      )),
                ],
              ).animate().slide(
                    duration: const Duration(milliseconds: 300),
                    begin: const Offset(0, 1),
                    end: const Offset(0, 0),
                  ),
            ),
          ],
        )
      ],
    ));
  }
}

class Vehicles extends StatelessWidget {
  final String title;
  final String subTitle;
  final String image;
  const Vehicles({
    super.key,
    required this.image,
    required this.subTitle,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      width: 160,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(fontSize: 17, letterSpacing: 0.3),
              ),
              const SizedBox(height: 5),
              Text(subTitle,
                  style: const TextStyle(color: deepGrey, fontSize: 15)),
            ],
          ),
          Align(
              alignment: Alignment.centerRight,
              child: Image.asset(
                "assets/images/$image.png",
              )
                  .animate(
                      delay: 600.ms,
                      onPlay: (controller) => controller.forward())
                  .slide(
                    duration: const Duration(milliseconds: 500),
                    begin: const Offset(1, 0),
                    end: const Offset(0, 0),
                  )),
        ],
      ),
    );
  }
}

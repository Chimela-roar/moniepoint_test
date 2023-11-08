import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:flutter_svg/svg.dart';
import 'package:moniepoint_test/application/theme.dart';

@RoutePage()
class PendingShipment extends StatelessWidget {
  const PendingShipment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Shipments",
            style: titleText.copyWith(fontSize: 24),
          ),
          const SizedBox(height: 15),
          AnimationLimiter(
            child: Expanded(
              child: ListView.separated(
                physics: const PageScrollPhysics(),
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 15),
                itemCount: 1,
                itemBuilder: (context, index) {
                  return AnimationConfiguration.staggeredList(
                    position: index,
                    duration: const Duration(seconds: 1),
                    child: SlideAnimation(
                      verticalOffset: 50.0,
                      child: FadeInAnimation(
                        child: Container(
                          // height: 170,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 2,
                                child: Container(
                                  padding: const EdgeInsets.all(15),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10),
                                        width: 115,
                                        height: 21,
                                        decoration: BoxDecoration(
                                            color: const Color.fromARGB(
                                                62, 156, 224, 158),
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: Row(
                                          children: [
                                            SvgPicture.asset(
                                              "assets/icons/sync.svg",
                                              height: 15,
                                              width: 15,
                                              color: Colors.green,
                                            ),
                                            const SizedBox(width: 10),
                                            const Text(
                                              "Pending",
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.normal,
                                                  color: Colors.green),
                                            )
                                          ],
                                        ),
                                      ),
                                      const SizedBox(height: 10),
                                      const Text(
                                        "Arriving Today!",
                                        style: TextStyle(
                                          fontSize: 20,
                                          letterSpacing: 0.3,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const SizedBox(height: 7),
                                      const Text(
                                        "Your delivery, #NHD4723985285 from Canada is arriving today",
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 2,
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                169, 56, 56, 56)),
                                      ),
                                      const SizedBox(height: 25),
                                      Row(
                                        children: [
                                          const Text(
                                            "\$1400 USD",
                                            style: TextStyle(
                                                color: primaryColor,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          const SizedBox(width: 5),
                                          Container(
                                            height: 5,
                                            width: 5,
                                            decoration: BoxDecoration(
                                                color: const Color.fromARGB(
                                                    137, 158, 158, 158),
                                                borderRadius:
                                                    BorderRadius.circular(50)),
                                          ),
                                          const SizedBox(width: 5),
                                          const Text("Sep 20, 2023"),
                                          const SizedBox(height: 25),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Image.asset(
                                  "assets/images/receive.png",
                                  scale: 10,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    ));
  }
}

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:moniepoint_test/application/theme.dart';
import 'package:moniepoint_test/presentation/router/router.gr.dart';

@RoutePage()
class Shipment extends StatelessWidget {
  const Shipment({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: AutoTabsRouter.tabBar(
          routes: const [
            AllShipment(),
            CompletedShipment(),
            InProgressShipment(),
            PendingShipment()
          ],
          builder: (context, child, controller) {
            return Scaffold(
              appBar: AppBar(
                automaticallyImplyLeading: false,
                leading: GestureDetector(
                  onTap: () {
                    context.router.replaceAll([
                      const HomeIndex(children: [Home()])
                    ]);
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
                title: const Text(
                  "Shipment History",
                ),
                bottom: TabBar(
                  labelPadding: const EdgeInsets.symmetric(horizontal: 20),
                  isScrollable: true,
                  controller: controller,
                  indicatorColor: orangeColor,
                  labelColor: Colors.white,
                  labelStyle: const TextStyle(fontSize: 18),
                  unselectedLabelColor: greyColor,
                  tabs: [
                    Tab(
                        child: TabLabel(
                      text: "All",
                      length: "7",
                      isSelected: controller.index == 0,
                    )),
                    Tab(
                        child: TabLabel(
                            text: "Completed",
                            length: "4",
                            isSelected: controller.index == 1)),
                    Tab(
                        child: TabLabel(
                            text: "In Progress",
                            length: "2",
                            isSelected: controller.index == 2)),
                    Tab(
                        child: TabLabel(
                            text: "Pending",
                            length: "1",
                            isSelected: controller.index == 3)),
                  ],
                ),
              ),
              body: child,
            );
          }),
    );
  }
}

class TabLabel extends StatelessWidget {
  final String text;
  final String length;
  final bool isSelected;
  const TabLabel(
      {super.key,
      required this.text,
      required this.length,
      required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(text),
        const SizedBox(width: 5),
        Container(
          height: 17,
          width: 25,
          decoration: BoxDecoration(
              color: isSelected
                  ? orangeColor
                  : const Color.fromARGB(83, 180, 180, 180),
              borderRadius: BorderRadius.circular(20)),
          child: Center(child: Text(length)),
        )
      ],
    );
  }
}

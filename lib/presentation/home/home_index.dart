import 'package:auto_route/auto_route.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:moniepoint_test/application/theme.dart';
import 'package:moniepoint_test/presentation/router/router.gr.dart';
import 'package:moniepoint_test/widget/custom_tab_indicator.dart';

@RoutePage()
class HomeIndex extends StatefulWidget {
  const HomeIndex({Key? key}) : super(key: key);

  @override
  State<HomeIndex> createState() => _HomeIndexState();
}

class _HomeIndexState extends State<HomeIndex> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
        extendBody: true,
        routes: const [Home(), DummyCalculate(), DummyShipment(), Profile()],
        bottomNavigationBuilder: (_, tabsRouter) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TabIndicators(
                activeIdx: tabsRouter.activeIndex,
                activeColor: primaryColor,
                numTabs: 4,
                padding: 0,
                height: 3,
              ),
              BottomNavigationBar(
                enableFeedback: false,
                elevation: 0,

                type: BottomNavigationBarType.fixed,
                onTap: (value) {
                  // value == 1
                  //     ? tabsRouter.setActiveIndex(value)
                  //      context.router.push(const Calculate());
                  //     : value == 2
                  //         ? context.router.push(const Shipment())
                  //         : tabsRouter.setActiveIndex(value);
                  // currentPageIndex = value;

                  if (value == 1) {
                    tabsRouter.setActiveIndex(value);
                    currentPageIndex = value;
                    context.router.popAndPush(const Calculate());
                  } else if (value == 2) {
                    tabsRouter.setActiveIndex(value);
                    currentPageIndex = value;
                    context.router.popAndPush(const Shipment());
                  } else {
                    tabsRouter.setActiveIndex(value);
                    currentPageIndex = value;
                  }
                },
                currentIndex: tabsRouter.activeIndex,
                selectedLabelStyle: const TextStyle(
                  letterSpacing: 0.2,
                  fontWeight: FontWeight.w700,
                  fontSize: 13.0,
                ),
                unselectedLabelStyle: const TextStyle(
                  letterSpacing: 0.2,
                  fontWeight: FontWeight.w700,
                  fontSize: 13.0,
                  color: Color(0xFF6B7280),
                ),
                //selectedItemColor: primaryColor,
                items: const [
                  BottomNavigationBarItem(
                    activeIcon: Icon(Icons.home_outlined),
                    icon: Icon(Icons.home_outlined),
                    label: 'Home',
                  ),
                  BottomNavigationBarItem(
                    activeIcon: Icon(Icons.calculate_outlined),
                    icon: Icon(Icons.calculate_outlined),
                    label: 'Calculate',
                  ),
                  BottomNavigationBarItem(
                    activeIcon: Icon(Icons.history_outlined),
                    icon: Icon(Icons.history_outlined),
                    label: 'Shipment',
                  ),
                  BottomNavigationBarItem(
                      activeIcon: Icon(Icons.person_outline),
                      icon: Icon(Icons.person_outline),
                      label: 'Profile')
                ],
              ),
            ],
          );
        });
  }
}

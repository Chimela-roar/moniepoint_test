import 'package:auto_route/auto_route.dart';
import 'package:moniepoint_test/presentation/router/router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: CustomLoading.page, initial: true),
        AutoRoute(page: Search.page),
        AutoRoute(page: Calculate.page),
        AutoRoute(page: Shipment.page, children: [
          AutoRoute(page: AllShipment.page),
          AutoRoute(page: CompletedShipment.page),
          AutoRoute(page: InProgressShipment.page),
          AutoRoute(page: PendingShipment.page),
        ]),
        AutoRoute(page: CustomSuccess.page),
        AutoRoute(
          path: "/",
          page: HomeIndex.page,
          children: [
            AutoRoute(page: Home.page, initial: true),
            AutoRoute(page: DummyCalculate.page),
            AutoRoute(page: DummyShipment.page),
            AutoRoute(page: Profile.page),
          ],
        ),
      ];
}

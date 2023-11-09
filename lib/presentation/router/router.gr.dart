// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i13;
import 'package:moniepoint_test/presentation/home/calculate/calculate.dart'
    as _i2;
import 'package:moniepoint_test/presentation/home/home/home.dart' as _i6;
import 'package:moniepoint_test/presentation/home/home/search.dart' as _i11;
import 'package:moniepoint_test/presentation/home/home_index.dart' as _i7;
import 'package:moniepoint_test/presentation/home/profile/profile.dart' as _i10;
import 'package:moniepoint_test/presentation/home/shipment/all_shipment.dart'
    as _i1;
import 'package:moniepoint_test/presentation/home/shipment/completed_shipment.dart'
    as _i3;
import 'package:moniepoint_test/presentation/home/shipment/in_progress_shipment.dart'
    as _i8;
import 'package:moniepoint_test/presentation/home/shipment/pending_shipment.dart'
    as _i9;
import 'package:moniepoint_test/presentation/home/shipment/shipment.dart'
    as _i12;
import 'package:moniepoint_test/widget/custom_success.dart' as _i4;
import 'package:moniepoint_test/widget/dummy_route.dart' as _i5;

abstract class $AppRouter extends _i13.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i13.PageFactory> pagesMap = {
    AllShipment.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AllShipment(),
      );
    },
    Calculate.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.Calculate(),
      );
    },
    CompletedShipment.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.CompletedShipment(),
      );
    },
    CustomSuccess.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.CustomSuccess(),
      );
    },
    DummyCalculate.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.DummyCalculate(),
      );
    },
    DummyShipment.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.DummyShipment(),
      );
    },
    Home.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.Home(),
      );
    },
    HomeIndex.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.HomeIndex(),
      );
    },
    InProgressShipment.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.InProgressShipment(),
      );
    },
    PendingShipment.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.PendingShipment(),
      );
    },
    Profile.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.Profile(),
      );
    },
    Search.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.Search(),
      );
    },
    Shipment.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i12.Shipment(),
      );
    },
  };
}

/// generated route for
/// [_i1.AllShipment]
class AllShipment extends _i13.PageRouteInfo<void> {
  const AllShipment({List<_i13.PageRouteInfo>? children})
      : super(
          AllShipment.name,
          initialChildren: children,
        );

  static const String name = 'AllShipment';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i2.Calculate]
class Calculate extends _i13.PageRouteInfo<void> {
  const Calculate({List<_i13.PageRouteInfo>? children})
      : super(
          Calculate.name,
          initialChildren: children,
        );

  static const String name = 'Calculate';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i3.CompletedShipment]
class CompletedShipment extends _i13.PageRouteInfo<void> {
  const CompletedShipment({List<_i13.PageRouteInfo>? children})
      : super(
          CompletedShipment.name,
          initialChildren: children,
        );

  static const String name = 'CompletedShipment';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i4.CustomSuccess]
class CustomSuccess extends _i13.PageRouteInfo<void> {
  const CustomSuccess({List<_i13.PageRouteInfo>? children})
      : super(
          CustomSuccess.name,
          initialChildren: children,
        );

  static const String name = 'CustomSuccess';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i5.DummyCalculate]
class DummyCalculate extends _i13.PageRouteInfo<void> {
  const DummyCalculate({List<_i13.PageRouteInfo>? children})
      : super(
          DummyCalculate.name,
          initialChildren: children,
        );

  static const String name = 'DummyCalculate';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i5.DummyShipment]
class DummyShipment extends _i13.PageRouteInfo<void> {
  const DummyShipment({List<_i13.PageRouteInfo>? children})
      : super(
          DummyShipment.name,
          initialChildren: children,
        );

  static const String name = 'DummyShipment';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i6.Home]
class Home extends _i13.PageRouteInfo<void> {
  const Home({List<_i13.PageRouteInfo>? children})
      : super(
          Home.name,
          initialChildren: children,
        );

  static const String name = 'Home';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i7.HomeIndex]
class HomeIndex extends _i13.PageRouteInfo<void> {
  const HomeIndex({List<_i13.PageRouteInfo>? children})
      : super(
          HomeIndex.name,
          initialChildren: children,
        );

  static const String name = 'HomeIndex';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i8.InProgressShipment]
class InProgressShipment extends _i13.PageRouteInfo<void> {
  const InProgressShipment({List<_i13.PageRouteInfo>? children})
      : super(
          InProgressShipment.name,
          initialChildren: children,
        );

  static const String name = 'InProgressShipment';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i9.PendingShipment]
class PendingShipment extends _i13.PageRouteInfo<void> {
  const PendingShipment({List<_i13.PageRouteInfo>? children})
      : super(
          PendingShipment.name,
          initialChildren: children,
        );

  static const String name = 'PendingShipment';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i10.Profile]
class Profile extends _i13.PageRouteInfo<void> {
  const Profile({List<_i13.PageRouteInfo>? children})
      : super(
          Profile.name,
          initialChildren: children,
        );

  static const String name = 'Profile';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i11.Search]
class Search extends _i13.PageRouteInfo<void> {
  const Search({List<_i13.PageRouteInfo>? children})
      : super(
          Search.name,
          initialChildren: children,
        );

  static const String name = 'Search';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i12.Shipment]
class Shipment extends _i13.PageRouteInfo<void> {
  const Shipment({List<_i13.PageRouteInfo>? children})
      : super(
          Shipment.name,
          initialChildren: children,
        );

  static const String name = 'Shipment';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

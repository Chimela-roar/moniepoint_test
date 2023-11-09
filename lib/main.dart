import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moniepoint_test/application/theme.dart';
import 'package:moniepoint_test/presentation/router/router.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Moniepoint Test',
      theme: ThemeData(
          scaffoldBackgroundColor: const Color(0xFFFBFAFB),
          textTheme:
              GoogleFonts.archivoTextTheme((Theme.of(context).textTheme)),
          colorScheme: ColorScheme.fromSeed(
              seedColor: primaryColor, background: const Color(0xFFF9F9F9)),
          useMaterial3: true,
          appBarTheme: const AppBarTheme(
              toolbarHeight: 70,
              backgroundColor: primaryColor,
              titleTextStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  letterSpacing: 0.3,
                  fontWeight: FontWeight.normal))),
      routerConfig: appRouter.config(),
      builder: (context, child) => ResponsiveWrapper.builder(
        child,
        maxWidth: 1200,
        minWidth: 480,
        defaultScale: true,
        breakpoints: [
          const ResponsiveBreakpoint.resize(450, name: MOBILE),
          const ResponsiveBreakpoint.autoScale(800, name: TABLET),
          const ResponsiveBreakpoint.autoScale(1000, name: TABLET),
          const ResponsiveBreakpoint.resize(1200, name: DESKTOP),
          const ResponsiveBreakpoint.autoScale(2460, name: "4K"),
        ],
      ),
    );
  }
}

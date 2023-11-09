import 'package:flutter/material.dart';

class AnimationManager {
  late AnimationController _controller;
  late AnimationController _controller1;
  late Animation<Offset> slideAnimation;
  late Animation<Offset> slideRightAnimation;
  late Animation<Offset> slideTopAnimation;

  AnimationManager(TickerProviderStateMixin vsync) {
    _controller = AnimationController(
      vsync: vsync,
      duration: const Duration(milliseconds: 1000),
    );
    _controller1 = AnimationController(
      vsync: vsync,
      duration: const Duration(milliseconds: 700),
    );

    slideAnimation = Tween<Offset>(
      begin: const Offset(0, 1),
      end: const Offset(0, 0),
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));

    slideTopAnimation = Tween<Offset>(
      begin: const Offset(0, -1),
      end: const Offset(0, 0),
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));

    slideRightAnimation = Tween<Offset>(
      begin: const Offset(1, 0),
      end: const Offset(0, 0),
    ).animate(CurvedAnimation(
      parent: _controller1,
      curve: Curves.easeInOut,
    ));
  }

  void forward() {
    _controller.forward();

    Future.delayed(const Duration(milliseconds: 500), () {
      _controller1.forward();
    });
  }

  void reset() {
    _controller.reset();
  }

  void dispose() {
    _controller.dispose();
    _controller1.dispose();
  }
}

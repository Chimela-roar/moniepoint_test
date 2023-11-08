import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:countup/countup.dart';
import 'package:moniepoint_test/application/theme.dart';
import 'package:moniepoint_test/presentation/router/router.gr.dart';
import 'package:moniepoint_test/widget/custom_filled_button.dart';

@RoutePage()
class CustomSuccess extends StatefulWidget {
  const CustomSuccess({super.key});

  @override
  State<CustomSuccess> createState() => _CustomSuccessState();
}

class _CustomSuccessState extends State<CustomSuccess>
    with TickerProviderStateMixin {
  final double initialScale = 0.0;
  final double finalScale = 1.0;
  late final AnimationController _controller;
  late final Animation<double> _animation;
  bool isAnimationCompleted = false;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );

    _animation = Tween<double>(
      begin: initialScale,
      end: finalScale,
    ).animate(_controller);

    _animation.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        setState(() {
          isAnimationCompleted = true;
        });
      }
    });

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                AnimatedBuilder(
                  animation: _controller,
                  builder: (context, child) {
                    return Transform.scale(
                      scale:
                          isAnimationCompleted ? finalScale : _animation.value,
                      child: Image.asset(
                        "assets/images/receive.png",
                        scale: 5,
                      ),
                    );
                  },
                ),

                // Image.asset(
                //   "assets/images/receive.png",
                //   scale: 5,
                // ),
                const SizedBox(height: 45),
                const Text(
                  "Total Estimated Amount",
                  style: TextStyle(fontSize: 30, letterSpacing: 0.3),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("\$",
                        style: TextStyle(fontSize: 36, color: Colors.green)),
                    Countup(
                      begin: 0,
                      end: 1400,
                      duration: const Duration(seconds: 3),
                      separator: ',',
                      style: const TextStyle(fontSize: 36, color: Colors.green),
                    ),
                    const SizedBox(width: 4),
                    const Text("USD",
                        style: TextStyle(fontSize: 25, color: Colors.green)),
                  ],
                ),
                const SizedBox(height: 10),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                      "This amount is estimated, this will vary if you change your location or weight",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 18, color: deepGrey)),
                ),
                const SizedBox(height: 40),
                CustomFilledButton(
                    text: "Back to home",
                    onTap: () {
                      context.router
                          .popAndPush(const HomeIndex(children: [Home()]));
                    },
                    disabled: false)
              ],
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ScreenContainer extends StatelessWidget {
  final Widget child;
  final bool isSplashScreen;

  const ScreenContainer({
    super.key,
    required this.child,
    this.isSplashScreen = false,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        decoration: BoxDecoration(
          color: isSplashScreen
              ? Theme.of(context).colorScheme.inversePrimary.withOpacity(0.3)
              : Colors.white,
        ),
        child: child,
      ),
    );
  }
}

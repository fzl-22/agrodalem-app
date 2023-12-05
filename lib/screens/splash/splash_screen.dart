import 'package:agrodalem_app/modules/widgets/buttons/action_button.dart';
import 'package:agrodalem_app/screens/login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  void startApp(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const LoginScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(
          left: 24,
          top: 0,
          right: 24,
          bottom: 24,
        ),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.inversePrimary.withOpacity(0.2),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "AGRODALEM",
                    style: GoogleFonts.robotoMono(
                      fontWeight: FontWeight.bold,
                      fontSize: 36,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                  const SizedBox(height: 12,),
                  Image.asset(
                    "assets/logo/INNO-2023-logo.webp",
                    width: 96,
                  )
                ],
              ),
            ),
            ActionButton(
              onPressed: () {
                startApp(context);
              },
              child: const Text("MULAI APLIKASI"),
            ),
          ],
        ),
      ),
    );
  }
}

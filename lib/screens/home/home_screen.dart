import 'package:agrodalem_app/modules/widgets/containers/screen_container.dart';
import 'package:agrodalem_app/screens/home/sections/configuration_section.dart';
import 'package:agrodalem_app/screens/home/sections/profile_section.dart';
import 'package:agrodalem_app/screens/home/sections/status_section.dart';
import 'package:agrodalem_app/screens/home/sections/weather_section.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const ScreenContainer(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 12),
            ProfileSection(),
            SizedBox(height: 12),
            WeatherSection(),
            SizedBox(height: 12),
            StatusSection(),
            SizedBox(height: 12),
            ConfigurationSection(),
          ],
        ),
      ),
    );
  }
}

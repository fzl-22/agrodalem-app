import 'package:agrodalem_app/modules/widgets/tiles/configuration_tile.dart';
import 'package:agrodalem_app/screens/configurations/ppm_config_screen.dart';
import 'package:agrodalem_app/screens/configurations/pump_config_screen.dart';
import 'package:agrodalem_app/screens/configurations/pump_time_config_screen.dart';
import 'package:flutter/material.dart';

class ConfigurationSection extends StatelessWidget {
  const ConfigurationSection({super.key});

  void editPPM(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const MinMaxPPMConfigScreen(),
      ),
    );
  }

  void editPump(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const PumpConfigScreen(),
      ),
    );
  }

  void editPumpTime(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const PumpTimeConfigScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const SizedBox(height: 12),
        Text(
          "Pengaturan Hidroponik",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
        const SizedBox(height: 12),
        ConfigurationTile(
          title: "Minimum dan Maksimum PPM",
          value: "Min: 20, Max: 80",
          onTap: () {
            editPPM(context);
          },
        ),
        ConfigurationTile(
          title: "Status Pompa",
          value: "MATI",
          onTap: () {
            editPump(context);
          },
        ),
        ConfigurationTile(
          title: "Jam Hidup Pompa",
          value: "08.00 - 10.00",
          onTap: () {
            editPumpTime(context);
          },
        ),
      ],
    );
  }
}

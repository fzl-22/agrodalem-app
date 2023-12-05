import 'package:agrodalem_app/modules/widgets/cards/plant_status_card.dart';
import 'package:flutter/material.dart';

class StatusSection extends StatelessWidget {
  const StatusSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        PlantStatusCard(
          imagePath: "assets/icons/plant.png",
          label: "PPM",
          value: "88",
        ),
        SizedBox(
          width: 8,
        ),
        PlantStatusCard(
          imagePath: "assets/icons/temperature.png",
          label: "Suhu Air",
          value: "20°C",
        ),
        SizedBox(
          width: 8,
        ),
        PlantStatusCard(
          imagePath: "assets/icons/water.png",
          label: "Vol. Air",
          value: "72%",
        ),
      ],
    );
  }
}

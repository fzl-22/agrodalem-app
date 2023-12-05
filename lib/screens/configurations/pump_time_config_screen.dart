import 'package:agrodalem_app/modules/widgets/buttons/action_button.dart';
import 'package:agrodalem_app/modules/widgets/containers/screen_container.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class PumpTimeConfigScreen extends StatefulWidget {
  const PumpTimeConfigScreen({super.key});

  @override
  State<PumpTimeConfigScreen> createState() => _PumpTimeConfigScreenState();
}

class _PumpTimeConfigScreenState extends State<PumpTimeConfigScreen> {
  TimeOfDay startTime = const TimeOfDay(hour: 8, minute: 0);
  TimeOfDay endTime = const TimeOfDay(hour: 10, minute: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            IconlyLight.arrow_left_2,
          ),
        ),
        title: Text(
          "Minimum dan Maksimum PPM",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
        backgroundColor: Theme.of(context).colorScheme.surface,
      ),
      body: ScreenContainer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 12),
            Text(
              "Isikan jam nyala dan mati pompa",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Jam Nyala Pompa:",
                ),
                Row(
                  children: [
                    Text(
                      startTime.format(context),
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Future<TimeOfDay?> selectedTime = showTimePicker(
                          initialTime: TimeOfDay.now(),
                          context: context,
                        );
                      },
                      child: const Text(
                        "Pilih Jam",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Jam Mati Pompa:",
                ),
                Row(
                  children: [
                    Text(
                      endTime.format(context),
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Future<TimeOfDay?> selectedTime = showTimePicker(
                          initialTime: TimeOfDay.now(),
                          context: context,
                        );
                      },
                      child: const Text(
                        "Pilih Jam",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            ActionButton(
              onPressed: () {},
              child: const Text("EDIT"),
            ),
          ],
        ),
      ),
    );
  }
}

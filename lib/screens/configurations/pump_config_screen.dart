import 'package:agrodalem_app/modules/widgets/buttons/action_button.dart';
import 'package:agrodalem_app/modules/widgets/containers/screen_container.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class PumpConfigScreen extends StatefulWidget {
  const PumpConfigScreen({super.key});

  @override
  State<PumpConfigScreen> createState() => _PumpConfigScreenState();
}

class _PumpConfigScreenState extends State<PumpConfigScreen> {
  final TextEditingController minPPMController = TextEditingController();
  final TextEditingController maxPPMController = TextEditingController();
  bool isActive = false;

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
          "Status Pompa",
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
              "Nyalakan atau matikan pompa",
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
                  "Status Pompa",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                Switch(
                  value: isActive,
                  onChanged: (value) {
                    setState(() {
                      isActive = !isActive;
                    });
                  },
                )
              ],
            ),
            const SizedBox(height: 24),
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

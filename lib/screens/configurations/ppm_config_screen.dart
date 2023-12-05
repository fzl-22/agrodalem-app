import 'package:agrodalem_app/modules/widgets/buttons/action_button.dart';
import 'package:agrodalem_app/modules/widgets/containers/screen_container.dart';
import 'package:agrodalem_app/modules/widgets/fields/form_input_field.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class MinMaxPPMConfigScreen extends StatefulWidget {
  const MinMaxPPMConfigScreen({super.key});

  @override
  State<MinMaxPPMConfigScreen> createState() => _MinMaxPPMConfigScreenState();
}

class _MinMaxPPMConfigScreenState extends State<MinMaxPPMConfigScreen> {
  final TextEditingController minPPMController = TextEditingController();
  final TextEditingController maxPPMController = TextEditingController();

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
              "Isikan nilai maksimum dan minimum PPM yang baru",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            const SizedBox(height: 12),
            FormInputField(
              controller: minPPMController,
              iconData: IconlyBold.arrow_up,
              hintText: "Maksimum PPM",
            ),
            const SizedBox(
              height: 12,
            ),
            FormInputField(
              controller: minPPMController,
              iconData: IconlyBold.arrow_down,
              hintText: "Minimum PPM",
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

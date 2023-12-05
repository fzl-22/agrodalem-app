import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class ConfigurationTile extends StatelessWidget {
  final String title;
  final String value;
  final VoidCallback onTap;

  const ConfigurationTile({
    super.key,
    required this.title,
    required this.value,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
      ),
      subtitle: Text(
        value,
        style: TextStyle(
          color: Theme.of(context).colorScheme.primary,
        ),
      ),
      contentPadding: EdgeInsets.zero,
      trailing: IconButton(
        onPressed: () {},
        icon: const Icon(
          IconlyLight.arrow_right_2,
        ),
      ),
      onTap: onTap,
      visualDensity: const VisualDensity(horizontal: 0, vertical: -2),
    );
  }
}

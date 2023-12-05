import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class ProfileSection extends StatelessWidget {
  const ProfileSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const CircleAvatar(
        radius: 30,
        backgroundImage: NetworkImage(
            "https://avatars.githubusercontent.com/u/96810584?v=4"),
      ),
      title: Text(
        "Selamat pagi!",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18,
          color: Theme.of(context).colorScheme.primary,
        ),
      ),
      subtitle: const Text(
        "Ahmad Faisal",
        style: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 14,
        ),
      ),
      trailing: const Icon(
        IconlyLight.logout,
        size: 28,
      ),
      contentPadding: EdgeInsets.zero,
    );
  }
}

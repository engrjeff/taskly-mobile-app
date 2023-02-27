import 'package:flutter/material.dart';
import 'package:taskly_mobile/theme/palette.dart';

class Greeting extends StatelessWidget {
  const Greeting({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          const CircleAvatar(
            radius: 24,
            backgroundImage: NetworkImage('https://jeffsegovia.dev/me.jpg'),
          ),
          const SizedBox(width: 12),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Good morning 👋',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  // color: Colors.grey.shade500,
                ),
              ),
              const Text(
                'Jeff Segovia',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

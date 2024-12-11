import 'package:flutter/material.dart';

import '../../../../../core/functions/get_current_user.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(getCurrentUser().email),
          const SizedBox(height: 20),
          Text(getCurrentUser().name),
          const SizedBox(height: 20),
          Text(getCurrentUser().phoneNumber),
          const SizedBox(height: 20),
          Text(getCurrentUser().bloodType),
          const SizedBox(height: 20),
          Text(getCurrentUser().location),
          const SizedBox(height: 20),
          Text(getCurrentUser().birthDate),
        ],
      ),
    );
  }
}

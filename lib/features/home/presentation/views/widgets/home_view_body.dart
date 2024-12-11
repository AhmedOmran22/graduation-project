import 'package:flutter/material.dart';
import 'package:graduation_project/core/utils/text_styles.dart';
import 'package:graduation_project/core/widgets/custom_button.dart';

import '../../../../../core/functions/get_current_user.dart';
import '../../../../../core/routes/routes_name.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            getCurrentUser().email,
            style: TextStyles.interRegular18.copyWith(
              fontSize: 20,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 20),
          Text(
            getCurrentUser().name,
            style: TextStyles.interRegular18.copyWith(
              fontSize: 20,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 20),
          Text(
            getCurrentUser().phoneNumber,
            style: TextStyles.interRegular18.copyWith(
              fontSize: 20,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 20),
          Text(
            "blood type : ${getCurrentUser().bloodType}",
            style: TextStyles.interRegular18.copyWith(
              fontSize: 20,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 20),
          Text(
            getCurrentUser().location,
            style: TextStyles.interRegular18.copyWith(
              fontSize: 20,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 20),
          Text(
            getCurrentUser().birthDate,
            style: TextStyles.interRegular18.copyWith(
              fontSize: 20,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 20),
          CustomButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, RoutesName.login);
            },
            text: "Logout",
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'core/routes/on_generate_route.dart';
import 'core/routes/routes_name.dart';

void main() {
  runApp(const GraduationProject());
}

class GraduationProject extends StatelessWidget {
  const GraduationProject({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: onGenerateRoutes,
      initialRoute: RoutesName.splash,
    );
  }
}

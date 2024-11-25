import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'core/routes/on_generate_route.dart';
import 'core/routes/routes_name.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const GraduationProject());
}

class GraduationProject extends StatelessWidget {
  const GraduationProject({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: onGenerateRoutes,
      initialRoute: RoutesName.splash,
    );
  }
}

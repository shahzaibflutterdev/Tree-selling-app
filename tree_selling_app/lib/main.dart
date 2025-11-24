import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tree_selling_app/constants/colors.dart';
import 'package:tree_selling_app/views/screens/auth/login/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
        builder: (context, orientation, screenType) {
          return MaterialApp(
              theme: ThemeData(
                primaryColor: AppColors.primary,
              ),
              home: LoginScreen(),
            );
        }
    );
  }
}


import 'package:bookly/Features/splash/presentation/view/splash_view.dart';
import 'package:bookly/constance.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme:  ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kPrimaryColor
      ),
    home:const SplashView(),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:goldy/core/constant/app_color.dart';
import 'package:goldy/core/routing/routes.dart';
import 'package:goldy/core/widgets/custom_Botton.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomBotton(
            text: 'Goldy',
            color: AppColor.primaryColor,
            onpressed: () {
              Navigator.pushNamed(context, AppRoutes.GoldScreen);
            },
          ),
          SizedBox(height: 20),
          CustomBotton(
            text: 'Sliver',
            color: AppColor.seconderyColor,
            onpressed: () {
              Navigator.pushNamed(context, AppRoutes.SliverScreen);
            },
          ),
        ],
      ),
    );
  }
}

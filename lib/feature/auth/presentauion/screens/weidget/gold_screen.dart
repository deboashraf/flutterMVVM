import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:goldy/core/constant/app_color.dart';
import 'package:goldy/core/constant/app_images.dart';
import 'package:goldy/feature/auth/data/repo/gold_repo.dart';
import 'package:goldy/feature/auth/presentauion/cubit/gold_cubit.dart';
import 'package:goldy/feature/auth/presentauion/cubit/gold_state.dart';

class GoldScreen extends StatelessWidget {
   GoldScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GoldCubit(GoldRepo())..getGold(),
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title:  Text(
            'Gold',
            style: TextStyle(
              color: AppColor.primaryColor,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
        ),
        body: BlocBuilder<GoldCubit, GoldState>(
          builder: (context, state) {
            if (state is Goldloading) {
              return  Center(child: CircularProgressIndicator());
            } else if (state is GoldError) {
              return Center(
                child: Text(
                  state.errmessage,
                  style:  TextStyle(color: Colors.white),
                ),
              );
            } else if (state is Goldsucess) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(AppImages.gold),
                   SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        state.goldModel.price.toString(),
                        style:  TextStyle(
                          color: AppColor.primaryColor,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                       SizedBox(width: 8),
                       Text(
                        'USD',
                        style: TextStyle(
                          color: AppColor.primaryColor,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              );
            } else {
              return  SizedBox.shrink();
            }
          },
        ),
      ),
    );
  }
}
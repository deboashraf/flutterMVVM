import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:goldy/core/constant/app_color.dart';
import 'package:goldy/core/constant/app_images.dart';
import 'package:goldy/feature/auth/data/repo/silver_repo.dart';
import 'package:goldy/feature/auth/presentauion/cubit/silver_cubit.dart';
import 'package:goldy/feature/auth/presentauion/cubit/silver_state.dart';

class SilverScreen extends StatelessWidget {
   SilverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SilverCubit(SilverRepo())..getSilver(),
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title:  Text(
            'Silver',
            style: TextStyle(
              color: AppColor.seconderyColor,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
        ),
        body: BlocBuilder<SilverCubit, SilverState>(
          builder: (context, state) {
            if (state is SilverLoading) {
              return  Center(child: CircularProgressIndicator());
            } else if (state is SilverError) {
              return Center(
                child: Text(
                  state.errmessage,
                  style:  TextStyle(color: Colors.white),
                ),
              );
            } else if (state is SilverSuccess) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(AppImages.gold),
                   SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        state.silverModel.price.toString(),
                        style:  TextStyle(
                          color: AppColor.seconderyColor,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                       SizedBox(width: 8),
                       Text(
                        'USD',
                        style: TextStyle(
                          color: AppColor.seconderyColor,
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
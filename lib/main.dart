import 'package:flutter/material.dart';
import 'package:goldy/core/networking/dio_helper.dart';
import 'package:goldy/core/presentation/home_screen%20.dart';
import 'package:goldy/core/routing/app_router.dart';
import 'package:goldy/core/routing/routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DioHelper.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final AppRouter appRoutes = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: HomeScreen(),
      initialRoute: AppRoutes.homeScreen,
      onGenerateRoute: appRoutes.generateRoute,
    );
  }
}

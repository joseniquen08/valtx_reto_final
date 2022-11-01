import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reto_final/app/routes/app_routes.dart';
import 'package:reto_final/app/routes/app_views.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Euclid Circular B',
      ),
      initialRoute: AppRoutes.home,
      getPages: AppViews.views,
    );
  }
}

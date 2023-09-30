import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:learning_101/202/service_post_learn_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData.light(
          useMaterial3: true,
        ).copyWith(
            progressIndicatorTheme: const ProgressIndicatorThemeData(color: Colors.orange),
            cardTheme: CardTheme(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),
            appBarTheme: const AppBarTheme(
              centerTitle: true,
              systemOverlayStyle: SystemUiOverlayStyle.light,
              backgroundColor: Colors.transparent,
              elevation: 0,
            )),
        home: const ServiceLearn());
  }
}

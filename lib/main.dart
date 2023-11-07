import 'package:flutter/material.dart';
import 'package:instagram_clone_app/features/presentation/page/credential/sign_in_page.dart';
import 'package:instagram_clone_app/features/presentation/page/credential/sign_up_page.dart';
import 'package:instagram_clone_app/features/presentation/page/main_screen/main_screen.dart';
import 'package:instagram_clone_app/on_generate_route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram Clone',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      onGenerateRoute: OnGenerateRoute.route,
      initialRoute: "/",
      routes: {
        "/": (context) {
          return const MainScreen();
        }
      },
    );
  }
}

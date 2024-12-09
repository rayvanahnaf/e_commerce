import 'package:e_commerce/pages/pages.dart';
import 'package:flutter/material.dart';

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
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: SplashScreenPage(),
      debugShowCheckedModeBanner: false,
      routes: {
        '/home' : (context) => HomePage(),
        '/sign-in' : (context) => SignInPage(),
        '/sign-up' : (context) => SignUpPage(),
        '/main' : (context) => MainPage(),
        '/detail-chat' : (context) => DetailChatPage(),
        '/edit-profile' : (context) => EditProfilePage(),
        '/product' : (context) => ProductPage(),
      },
    );
  }
}
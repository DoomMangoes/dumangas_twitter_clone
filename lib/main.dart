import 'package:dumangas_twitter_clone/features/auth/view/login_view.dart';
import 'package:dumangas_twitter_clone/features/auth/view/signup_view.dart';
import 'package:dumangas_twitter_clone/theme/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Twitter Clone',
      theme: AppTheme.theme,
      debugShowCheckedModeBanner: false,
      home: const SignUpView(),
    );
  }
}

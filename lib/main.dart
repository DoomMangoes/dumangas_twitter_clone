
import 'package:dumangas_twitter_clone/features/auth/view/signup_view.dart';
import 'package:dumangas_twitter_clone/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: MainApp()));
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

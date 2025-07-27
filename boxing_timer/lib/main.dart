import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:boxing_timer/theme/app_theme.dart';
import 'package:boxing_timer/screens/timer_screen.dart';

void main() {
  runApp(const ProviderScope(child: BoxingTimerApp()));
}

class BoxingTimerApp extends StatelessWidget {
  const BoxingTimerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Boxing Timer',
      theme: AppTheme.snesTheme,
      home: const TimerScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

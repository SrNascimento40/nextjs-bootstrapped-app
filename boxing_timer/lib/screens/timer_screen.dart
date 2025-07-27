import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/timer_provider.dart';
import '../widgets/timer_display.dart';
import '../widgets/control_buttons.dart';

class TimerScreen extends ConsumerWidget {
  const TimerScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final timerState = ref.watch(timerProvider);

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              AppTheme.backgroundColor,
              const Color(0xFF0f3460),
            ],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 60),
              TimerDisplay(
                time: timerState.formattedTime,
                phaseText: timerState.phaseText,
              ),
              const SizedBox(height: 80),
              ControlButtons(
                isRunning: timerState.isRunning,
                isPaused: timerState.isPaused,
                onStart: () => ref.read(timerProvider.notifier).start(),
                onPause: () => ref.read(timerProvider.notifier).pause(),
                onStop: () => ref.read(timerProvider.notifier).stop(),
              ),
              const SizedBox(height: 40),
              if (timerState.currentRound > 1)
                Text(
                  'Round ${timerState.currentRound}',
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: AppTheme.accentColor,
                    fontSize: 20,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

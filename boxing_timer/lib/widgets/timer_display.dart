import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TimerDisplay extends StatelessWidget {
  final String time;
  final String phaseText;

  const TimerDisplay({
    super.key,
    required this.time,
    required this.phaseText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          phaseText,
          style: GoogleFonts.pressStart2p(
            fontSize: 24,
            color: const Color(0xFFe94560),
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 20),
        Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: const Color(0xFF16213e),
            border: Border.all(
              color: const Color(0xFFe94560),
              width: 3,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Text(
            time,
            style: GoogleFonts.pressStart2p(
              fontSize: 72,
              color: const Color(0xFFf5f5f5),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ControlButtons extends StatelessWidget {
  final bool isRunning;
  final bool isPaused;
  final VoidCallback onStart;
  final VoidCallback onPause;
  final VoidCallback onStop;

  const ControlButtons({
    super.key,
    required this.isRunning,
    required this.isPaused,
    required this.onStart,
    required this.onPause,
    required this.onStop,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (!isRunning) ...[
          _buildButton(
            context,
            'START',
            const Color(0xFF4CAF50),
            onStart,
          ),
        ] else ...[
          _buildButton(
            context,
            isPaused ? 'RESUME' : 'PAUSE',
            const Color(0xFFFFC107),
            onPause,
          ),
          const SizedBox(width: 20),
          _buildButton(
            context,
            'STOP',
            const Color(0xFFF44336),
            onStop,
          ),
        ],
      ],
    );
  }

  Widget _buildButton(
    BuildContext context,
    String text,
    Color color,
    VoidCallback onPressed,
  ) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
          side: BorderSide(
            color: color.withOpacity(0.8),
            width: 2,
          ),
        ),
        elevation: 8,
        shadowColor: color.withOpacity(0.5),
      ),
      child: Text(
        text,
        style: GoogleFonts.pressStart2p(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

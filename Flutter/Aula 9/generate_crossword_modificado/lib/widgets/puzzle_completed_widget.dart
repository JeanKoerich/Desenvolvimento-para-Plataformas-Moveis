import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers.dart'; // importa seus providers

class PuzzleCompletedWidget extends ConsumerWidget {
  const PuzzleCompletedWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.celebration, color: Colors.green, size: 64),
          const SizedBox(height: 16),
          const Text(
            'Parabéns! Puzzle Completo!',
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 24),
          ElevatedButton(
            onPressed: () {
              ref.invalidate(workQueueProvider);
              ref.invalidate(puzzleProvider);
            },
            child: const Text('Jogar Novamente'),
          ),
        ],
      ),
    );
  }
}

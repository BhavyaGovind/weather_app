import 'package:flutter/material.dart';

import 'shared/spaced_column.dart';

class HourlyPredictionCard extends StatelessWidget {
  const HourlyPredictionCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SpacedColumn(
        spacing: 5.0,
        padding: const EdgeInsets.only(right: 15.0, left: 15.0),
        children: [
          Text(
            "09:00",
            style: Theme.of(context).textTheme.displaySmall,
          ),
          const Icon(
            Icons.done_all_rounded,
            size: 30,
          ),
          Text(
            "303.9",
            style: Theme.of(context).textTheme.displaySmall,
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ChartBar extends StatelessWidget {
  final String label;
  final int amount;
  final int total;
  final Color color;

  const ChartBar({
    Key? key,
    required this.label,
    required this.amount,
    required this.total,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        FittedBox(
          child: Text(
            label,
            style: const TextStyle(
              fontSize: 16,
            ),
          ),
        ),
        const SizedBox(height: 10),
        Expanded(
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              FractionallySizedBox(
                heightFactor: amount / total,
                child: Container(
                  decoration: BoxDecoration(
                    color: color,
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),
        FittedBox(
          child: Text(
            '$amount',
            style: const TextStyle(
              fontSize: 18,
            ),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

class ChartBar extends StatelessWidget {
  final String label;
  final int amount;
  final double total;
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
    return LayoutBuilder(
      builder: (context, constraints) {
        return Column(
          children: [
            Container(
              //height: constraints.maxHeight * 0.15,
              child: FittedBox(
                child: Text(
                  '$label',
                  style: const TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: constraints.maxHeight * 0.02,
            ),
            Container(
              height: constraints.maxHeight * 0.6,
              //width: 50,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  FractionallySizedBox(
                    heightFactor: total,
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
            SizedBox(
              height: constraints.maxHeight * 0.02,
            ),
            Container(
              //height: constraints.maxHeight * 0.15,
              child: FittedBox(
                child: Text(
                  '$amount',
                  style: const TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}

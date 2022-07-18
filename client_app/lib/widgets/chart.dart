import 'package:client_app/widgets/chart_bar.dart';
import 'package:flutter/material.dart';

import '../pages/pages.dart';

class Chart extends StatelessWidget {
  const Chart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: EdgeInsets.all(10),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _ChartBar(
              label: 'Gryffindor',
              amount: 10,
              total: 0.1,
              color: Colors.red,
            ),
            _ChartBar(
              label: 'Hufflepuff',
              amount: 20,
              total: 0.2,
              color: Colors.yellow,
            ),
            _ChartBar(
              label: 'Ravenclaw',
              amount: 10,
              total: 0.1,
              color: Colors.blue,
            ),
            _ChartBar(
              label: 'Slytherin',
              amount: 20,
              total: 0.2,
              color: Colors.green,
            ),
          ],
        ),
      ),
    );
  }
}

class _ChartBar extends StatelessWidget {
  final String label;
  final int amount;
  final double total;
  final Color color;

  const _ChartBar(
      {Key? key,
      required this.label,
      required this.amount,
      required this.total,
      required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(HousePage.routeName);
      },
      child: SizedBox(
        width: 50,
        child: ChartBar(
          label: label,
          amount: amount,
          total: total,
          color: color,
        ),
      ),
    );
  }
}

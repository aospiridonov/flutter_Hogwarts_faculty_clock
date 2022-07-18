import 'package:client_app/widgets/chart_bar.dart';
import 'package:flutter/material.dart';

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
            ChartBar(
              label: 'Gryffindor',
              amount: 10,
              total: 0.1,
              color: Colors.red,
            ),
            ChartBar(
              label: 'Hufflepuff',
              amount: 20,
              total: 0.2,
              color: Colors.yellow,
            ),
            ChartBar(
              label: 'Ravenclaw',
              amount: 10,
              total: 0.1,
              color: Colors.blue,
            ),
            ChartBar(
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

import 'package:flutter/material.dart';
import 'package:client_app/widgets/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HousePage extends StatelessWidget {
  //final String title;
  //final String image;

  static const routeName = '/house';

  const HousePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Card(
        color: Colors.grey[100],
        child: Padding(
          padding: const EdgeInsets.all(50),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 100,
                width: 100,
                //color: Colors.red,
                child: SvgPicture.asset('assets/images/Blason_Gryffondor.svg'),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                height: 400,
                //width: 200,
                child: ChartBar(
                  label: 'Gryffindor',
                  amount: 10,
                  total: 0.1,
                  color: Colors.red,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                //crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ElevatedButton(onPressed: () {}, child: Text('-10')),
                  ElevatedButton(onPressed: () {}, child: Text('-1')),
                  ElevatedButton(onPressed: () {}, child: Text('+1')),
                  ElevatedButton(onPressed: () {}, child: Text('+10')),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:client_app/cubits/cubits.dart';
import 'package:client_app/data/models/models.dart';
import 'package:client_app/repositories/repositories.dart';
import 'package:client_app/services/services.dart';
import 'package:flutter/material.dart';
import 'package:client_app/widgets/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class HousePage extends StatelessWidget {
  static const routeName = '/house';

  const HousePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as HouseArguments;
    final house = args.house;
    final service = args.service;
    return Scaffold(
      appBar: AppBar(),
      body: Card(
        color: Colors.grey[100],
        child: Padding(
          padding: const EdgeInsets.all(50),
          child: BlocProvider(
            create: (context) => HouseCubit(
              GrpcHouseRepository(
                service,
                id: house.id,
              ),
            )..load(),
            child: BlocBuilder<HouseCubit, HouseState>(
              builder: (context, state) {
                int points = state.points;
                int total = state.total;
                return Column(
                  //mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      height: 100,
                      width: 100,
                      //color: Colors.red,
                      child: SvgPicture.asset('assets/images/${house.image}'),
                    ),
                    const SizedBox(height: 25),
                    SizedBox(
                      height: 400,
                      //width: 200,
                      child: ChartBar(
                        label: house.name,
                        amount: points,
                        total: total,
                        color: house.color,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      //crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        ElevatedButton(
                          onPressed: (points < 10)
                              ? null
                              : () => context.read<HouseCubit>().decrement(10),
                          child: const Text('-10'),
                        ),
                        ElevatedButton(
                            onPressed: (points < 1)
                                ? null
                                : () => context.read<HouseCubit>().decrement(1),
                            child: const Text('-1')),
                        ElevatedButton(
                          onPressed: () =>
                              context.read<HouseCubit>().increment(1),
                          child: const Text('+1'),
                        ),
                        ElevatedButton(
                          onPressed: () =>
                              context.read<HouseCubit>().increment(10),
                          child: const Text('+10'),
                        ),
                      ],
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

class HouseArguments {
  final GrpcBranchService service;
  final House house;

  const HouseArguments({
    required this.service,
    required this.house,
  });
}

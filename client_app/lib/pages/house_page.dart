import 'package:client_app/cubits/cubits.dart';
import 'package:client_app/data/models/models.dart';
import 'package:client_app/repositories/repositories.dart';
import 'package:client_app/services/services.dart';
import 'package:client_app/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HousePage extends StatelessWidget {
  static const routeName = '/house';

  const HousePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as HouseArguments;
    final house = args.house;
    final service = args.service;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(),
      body: Card(
        color: Colors.grey[100],
        child: Padding(
          padding: const EdgeInsets.all(10),
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
                if (total == 0) {
                  total = 1;
                }
                return Column(
                  children: [
                    if (height > 400)
                      SizedBox(
                        height: 100,
                        width: 100,
                        child: SvgPicture.asset('assets/images/${house.image}'),
                      ),
                    const SizedBox(height: 10),
                    Expanded(
                      child: ChartBar(
                        label: house.name,
                        amount: points,
                        total: total,
                        color: house.color,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
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

import 'package:client_app/services/services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:client_app/blocs/blocs.dart';
import 'package:client_app/data/models/models.dart';
import 'package:client_app/pages/pages.dart';
import 'package:client_app/widgets/chart_bar.dart';

class ChartView extends StatelessWidget {
  const ChartView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.all(10),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: BlocBuilder<BranchBloc, BranchState>(
          builder: (context, state) {
            return state.when(
                loading: () =>
                    const CircularProgressIndicator.adaptive(strokeWidth: 2),
                loaded: (List<House> houses) {
                  int total = houses.fold(0, (p, e) => p + e.points);
                  var housesChart = houses.map((house) {
                    return _HouseBar(
                      branchId: 0,
                      house: house,
                      total: total,
                    );
                  }).toList();

                  return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [...housesChart]);
                },
                initial: () => Container(),
                error: () => Container());
          },
        ),
      ),
    );
  }
}

class _HouseBar extends StatelessWidget {
  final int branchId;
  final House house;
  final int total;

  const _HouseBar({
    Key? key,
    required this.branchId,
    required this.house,
    required this.total,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        final service = context.read<GrpcBranchService>();
        Navigator.of(context).pushNamed(
          HousePage.routeName,
          arguments: HouseArguments(
            service: service,
            house: house,
          ),
        );
      },
      child: SizedBox(
        width: 50,
        child: ChartBar(
          label: house.name,
          amount: house.points,
          total: total,
          color: house.color,
        ),
      ),
    );
  }
}

import 'package:client_app/data/models/models.dart';
import 'package:flutter/material.dart';

class BranchListTile extends StatelessWidget {
  const BranchListTile(
      {Key? key, this.onDismissed, this.onTap, required this.branch})
      : super(key: key);

  final DismissDirectionCallback? onDismissed;
  final VoidCallback? onTap;
  final Branch branch;

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: Key('BranchListTile${branch.id}'),
      onDismissed: onDismissed,
      direction: DismissDirection.endToStart,
      child: InkWell(
        onTap: onTap,
        child: Card(
          child: Container(
            padding: const EdgeInsets.all(20),
            child: Center(
              child: Text(
                branch.name,
                style: const TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

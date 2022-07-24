import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:client_app/blocs/blocs.dart';

class ConnectionsView extends StatelessWidget {
  const ConnectionsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ConnectionsBloc, ConnectionsState>(
      bloc: context.watch<ConnectionsBloc>(),
      buildWhen: (previous, current) {
        return true;
      },
      builder: (context, state) => state.when(
        initial: () => const Center(
          child: CircularProgressIndicator.adaptive(
            strokeWidth: 2,
          ),
        ),
        loaded: (connections) => ListView.builder(
          itemCount: connections.length,
          itemBuilder: (BuildContext context, int index) {
            final connection = connections[index];
            List<Text> list = [];
            connection.info.forEach((k, v) => list.add(Text('$k: $v')));
            return Card(
              child: Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                        '${DateTime.fromMillisecondsSinceEpoch(connection.timestamp).toLocal()}'),
                    ...list,
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

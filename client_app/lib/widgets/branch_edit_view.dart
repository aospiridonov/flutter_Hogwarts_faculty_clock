import 'package:client_app/blocs/blocs.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BranchEditView extends StatelessWidget {
  const BranchEditView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final status = context.select((EditBranchBloc bloc) => bloc.state.status);
    final isNewTodo = context.select(
      (EditBranchBloc bloc) => bloc.state.isNewTodo,
    );
    final theme = Theme.of(context);
    final floatingActionButtonTheme = theme.floatingActionButtonTheme;
    final fabBackgroundColor = floatingActionButtonTheme.backgroundColor ??
        theme.colorScheme.secondary;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          isNewTodo ? 'New branch' : 'Edit branch',
        ),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        shape: const ContinuousRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(32)),
        ),
        backgroundColor: status.isLoadingOrSuccess
            ? fabBackgroundColor.withOpacity(0.5)
            : fabBackgroundColor,
        onPressed: status.isLoadingOrSuccess
            ? null
            : () => context
                .read<EditBranchBloc>()
                .add(const EditBranchEventSubmitted()),
        child: status.isLoadingOrSuccess
            ? const CircularProgressIndicator()
            : const Icon(Icons.check_rounded),
      ),
      body: Center(
        child: Card(
          margin: const EdgeInsets.all(20),
          child: Container(
            padding: EdgeInsets.all(10),
            height: 120,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [_TitleField()],
            ),
          ),
        ),
      ),
    );
  }
}

class _TitleField extends StatelessWidget {
  const _TitleField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final state = context.watch<EditBranchBloc>().state;
    final hintText = state.initialBranch?.name ?? '';

    return TextFormField(
      key: const Key('editBranchView_title_textFormField'),
      initialValue: state.title,
      decoration: InputDecoration(
        enabled: !state.status.isLoadingOrSuccess,
        labelText: 'Branch name',
        hintText: hintText,
      ),
      maxLength: 50,
      inputFormatters: [
        LengthLimitingTextInputFormatter(50),
        FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z0-9\s]')),
      ],
      onChanged: (value) {
        context.read<EditBranchBloc>().add(EditBranchEventTitleChanged(value));
      },
    );
  }
}

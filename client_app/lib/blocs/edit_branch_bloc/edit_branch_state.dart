part of 'edit_branch_bloc.dart';

enum EditStatus { initial, loading, success, failure }

extension EditBranchStateX on EditStatus {
  bool get isLoadingOrSuccess => [
        EditStatus.loading,
        EditStatus.success,
      ].contains(this);
}

class EditBranchState extends Equatable {
  const EditBranchState({
    this.status = EditStatus.initial,
    this.initialBranch,
    this.title = '',
  });

  final EditStatus status;
  final Branch? initialBranch;
  final String title;

  bool get isNewTodo => initialBranch == null;

  EditBranchState copyWith({
    EditStatus? status,
    Branch? initialBranch,
    String? title,
    String? description,
  }) {
    return EditBranchState(
        status: status ?? this.status,
        initialBranch: initialBranch ?? this.initialBranch,
        title: title ?? this.title);
  }

  @override
  List<Object?> get props => [status, initialBranch, title];
}

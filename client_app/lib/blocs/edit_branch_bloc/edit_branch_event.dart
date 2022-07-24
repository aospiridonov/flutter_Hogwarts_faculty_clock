part of 'edit_branch_bloc.dart';

@freezed
class EditBranchEvent with _$EditBranchEvent {
  const factory EditBranchEvent.titleChanged(String title) =
      EditBranchEventTitleChanged;
  const factory EditBranchEvent.submitted() = EditBranchEventSubmitted;
}

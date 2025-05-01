part of 'add_node_cubit.dart';

@immutable
sealed class AddNodeState {}

final class AddNodeInitial extends AddNodeState {}

final class AddNodeLoding extends AddNodeState {}

final class AddNodeSuccess extends AddNodeState {}

final class AddNodeFeliure extends AddNodeState {
  final String errorMessage;

  AddNodeFeliure(this.errorMessage);
}

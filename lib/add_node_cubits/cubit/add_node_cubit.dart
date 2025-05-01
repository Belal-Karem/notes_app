import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'add_node_state.dart';

class AddNodeCubit extends Cubit<AddNodeState> {
  AddNodeCubit() : super(AddNodeInitial());
}

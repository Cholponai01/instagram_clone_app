import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'get_single_user_state.dart';

class GetSingleUserCubit extends Cubit<GetSingleUserState> {
  GetSingleUserCubit() : super(GetSingleUserInitial());
}

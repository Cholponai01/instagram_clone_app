import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:instagram_clone_app/features/domain/entities/user/user_entity.dart';
import 'package:instagram_clone_app/features/domain/usecases/firebase_usecases/user/get_current_uid_usecase.dart';
import 'package:instagram_clone_app/features/domain/usecases/firebase_usecases/user/get_users_usecase.dart';
import 'package:instagram_clone_app/features/domain/usecases/firebase_usecases/user/update_user_usecase.dart';

part 'user_state.dart';

class UserCubit extends Cubit<UserState> {
  final UpdateUserUseCase updateUserUseCase;
  final GetUsersUseCase getUsersUseCase;

  UserCubit(this.updateUserUseCase, this.getUsersUseCase)
      : super(UserInitial());
}

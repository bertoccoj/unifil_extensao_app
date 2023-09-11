import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:minha_cidade/core/i_failure.dart';
import 'package:minha_cidade/domain/auth/i_auth_facade.dart';

import '../../../domain/auth/user.dart';

part 'user_cubit.freezed.dart';
part 'user_state.dart';

@injectable
class UserCubit extends Cubit<UserState> {
  final IAuthFacade _authFacade;

  UserCubit(this._authFacade) : super(const UserState.initial());

  load() async {
    final result = await _authFacade.getUser();

    result.fold(
      (l) => emit(UserState.loadFailed(l)),
      (r) => emit(UserState.loaded(r)),
    );
  }
}

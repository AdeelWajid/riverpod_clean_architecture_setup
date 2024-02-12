import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_clean_architecture_setup/features/auth/domain/usecase/user_usecases.dart';

import '../../infrastructure/respositroy/provider.dart';

final usersListProvider = Provider<UserUseCase>((ref){
  return UserUseCaseImpl(ref.read(userListProvider));
});

final createUserProvider = Provider<UserUseCase>((ref){
  return UserUseCaseImpl(ref.read(newUserProvider));
});

final updateUserDataProvider = Provider<UserUseCase>((ref){
  return UserUseCaseImpl(ref.read(updateUserProvider));
});

final deleteUserDataProvider = Provider<UserUseCase>((ref){
  return UserUseCaseImpl(ref.read(deleteUserProvider));
});
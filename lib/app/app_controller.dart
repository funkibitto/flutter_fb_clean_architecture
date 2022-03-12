import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_fb_clean_architecture/app/modules/auth/domain/usecases/get_auth_state_changed_usecase.dart';
import 'package:flutter_fb_clean_architecture/app/modules/auth/domain/usecases/get_current_user_usecase.dart';

class AppController {
  final GetAuthStateChangedUseCase getAuthStateChangedUseCase;
  final GetCurrentUserUseCase getCurrentUserUseCase;

  AppController({
    required this.getCurrentUserUseCase,
    required this.getAuthStateChangedUseCase,
  });

  Stream<User?> getAuthStateChanged() {
    return getAuthStateChangedUseCase.call();
  }

  User? getCurrentUser() {
    return getCurrentUserUseCase.call();
  }
}

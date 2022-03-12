import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_fb_clean_architecture/app/modules/auth/domain/repositories/auth_repository.dart';

class GetAuthStateChangedUseCase {
  final AuthRepository repository;

  GetAuthStateChangedUseCase({required this.repository});

  Stream<User?> call() => repository.getAuthStateChanged;
}

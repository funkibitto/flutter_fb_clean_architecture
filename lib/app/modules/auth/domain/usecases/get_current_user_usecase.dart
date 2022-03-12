import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_fb_clean_architecture/app/modules/auth/domain/repositories/auth_repository.dart';

class GetCurrentUserUseCase {
  final AuthRepository repository;

  GetCurrentUserUseCase({required this.repository});

  User? call() => repository.getCurrentUser;
}

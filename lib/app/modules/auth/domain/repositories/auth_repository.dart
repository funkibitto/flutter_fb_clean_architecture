import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthRepository {
  Stream<User?> get getAuthStateChanged;

  User? get getCurrentUser;
}

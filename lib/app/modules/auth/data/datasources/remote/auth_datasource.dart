import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthDatasource {
  Stream<User?> get getAuthStateChanged;

  User? get getCurrentUser;
}

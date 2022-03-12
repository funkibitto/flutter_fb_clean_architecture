import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_fb_clean_architecture/app/modules/auth/data/datasources/remote/auth_datasource.dart';

class AuthDatasourceImpl implements AuthDatasource {
  final FirebaseAuth firebaseAuth;

  AuthDatasourceImpl({
    required this.firebaseAuth,
  });

  @override
  Stream<User?> get getAuthStateChanged => firebaseAuth.authStateChanges();

  @override
  User? get getCurrentUser => firebaseAuth.currentUser;
}

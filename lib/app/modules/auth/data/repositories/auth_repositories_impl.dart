import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_fb_clean_architecture/app/modules/auth/data/datasources/remote/auth_datasource.dart';
import 'package:flutter_fb_clean_architecture/app/modules/auth/domain/repositories/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthDatasource datasource;

  AuthRepositoryImpl({required this.datasource});

  @override
  Stream<User?> get getAuthStateChanged => datasource.getAuthStateChanged;

  @override
  User? get getCurrentUser => datasource.getCurrentUser;
}

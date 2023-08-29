import 'package:flutter/material.dart';
import 'package:flutter_application_1/Database/Authentication_service.dart';

class AuthenticationNotifier extends ChangeNotifier {
  final AuthenticationService _authenticationService = AuthenticationService();

  Future<String?> signup({
    required String email,
    required String password,
  }) async {
    try {
      await _authenticationService.signup(email: email, password: password);
    } catch (e) {
      print(e);
    }
    return null;
  }

  Future<String?> login({
    required String email,
    required String password,
  }) async {
    try {
      await _authenticationService.login(email: email, password: password);
    } catch (e) {
      print(e);
    }
    return null;
  }
}

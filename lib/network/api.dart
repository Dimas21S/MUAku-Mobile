import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

class ApiService {
  String baseUrl = 'http://10.0.2.2:8000';
  String token = '';
  SharedPreferences localStorage;

  ApiService({
    required this.baseUrl,
    required this.token,
    required this.localStorage,
  });

  _getToken() async {
    localStorage = await SharedPreferences.getInstance();
    token = jsonDecode(localStorage.getString('token') ?? '{}');
  }
}

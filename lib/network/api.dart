import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

class ApiService {
  String baseUrl = 'http://192.168.1.8:8000';
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

import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class ApiService {
  String baseUrl = 'https://api.example.com';
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

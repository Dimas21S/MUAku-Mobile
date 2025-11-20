import 'package:carimua/pages/admin/admin_verification.dart';
import 'package:carimua/pages/artist/artist_beranda.dart';
import 'package:carimua/pages/artist/artist_chat.dart';
import 'package:carimua/pages/artist/submit_request.dart';
import 'package:carimua/pages/auth/artist_login.dart';
import 'package:carimua/pages/auth/artist_register.dart';
import 'package:carimua/pages/auth/register.dart';
import 'package:carimua/pages/contact_us.dart';
import 'package:carimua/pages/auth/login.dart';
import 'package:carimua/pages/user/user_find_location.dart';
import 'package:carimua/pages/user/user_home.dart';
import 'package:carimua/pages/user/user_profile.dart';
import 'package:flutter/material.dart';
import 'pages/about_us.dart';
import 'pages/landing_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      // home: LandingPage(),
      home: UserHome(),
      routes: {
        '/about': (context) => const AboutUsPage(),
        '/contact': (context) => const ContactUsPage(),

        // Autentikasi
        '/login': (context) => const LoginPage(),
        '/register': (context) => const RegisterPage(),
        '/login-mua': (context) => const ArtistLoginPage(),
        '/register-mua': (context) => const ArtistRegisterPage(),

        //User
        '/profil': (context) => const UserProfile(),
        '/lokasi': (context) => const UserFindLocation(),
        // '/beranda': (context) => const UserHome(),

        // Admin
        '/admin-home': (context) => const AdminVerification(),

        // Make Up Artist
        '/beranda-mua': (context) => const ArtistBeranda(),
        '/chat-mua': (context) => const ArtistChat(),
        '/submit-request': (context) => const SubmitRequest(),
      },
    );
  }
}

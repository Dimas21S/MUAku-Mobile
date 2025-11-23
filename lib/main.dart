import 'package:carimua/pages/admin/admin_verification.dart';
import 'package:carimua/pages/artist/artist_beranda.dart';
import 'package:carimua/pages/artist/artist_chat.dart';
import 'package:carimua/pages/artist/submit_request.dart';
import 'package:carimua/pages/auth/artist_login.dart';
import 'package:carimua/pages/auth/artist_register.dart';
import 'package:carimua/pages/auth/register.dart';
import 'package:carimua/pages/chat/artist_to_user.dart';
import 'package:carimua/pages/chat/user_to_artist.dart';
import 'package:carimua/pages/contact_us.dart';
import 'package:carimua/pages/auth/login.dart';
import 'package:carimua/pages/user/user_favorite.dart';
import 'package:carimua/pages/user/user_find_location.dart';
import 'package:carimua/pages/user/user_home.dart';
import 'package:carimua/pages/user/user_profile.dart';
import 'package:carimua/pages/user/user_to_description.dart';
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
        '/favourite': (context) => const UserFavorite(),
        '/deskripsi-artist': (context) => UserToDescription(),
        // '/beranda': (context) => const UserHome(),

        // Khusus Chat
        '/user-to-artist': (context) => const UserToArtist(),
        '/artist-to-user': (context) => const ArtistToUser(),

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

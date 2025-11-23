import 'package:flutter/material.dart';

class ArtistLoginPage extends StatefulWidget {
  const ArtistLoginPage({super.key});

  @override
  State<ArtistLoginPage> createState() => _ArtistLoginPageState();
}

class _ArtistLoginPageState extends State<ArtistLoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),

                // Menangani gambar Sign In
                Center(
                  child: Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                        image: AssetImage('assets/images/user_sign_in.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                // Menangani teks Login untuk MUA
                RichText(
                  text: const TextSpan(
                    text: 'If you already have an account, please',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                      height: 1.5,
                    ),
                    children: [
                      TextSpan(
                        text: 'Login here',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 24),

                // Menangani Username
                const Text(
                  'Username',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 0),
                TextFormField(
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    hintText: 'Enter your username',
                  ),
                ),

                const SizedBox(height: 16),

                // Menangani Password
                const Text(
                  'Password',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 0),
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    hintText: 'Enter your password',
                  ),
                ),

                const SizedBox(height: 20),

                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () => {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    child: const Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 16),

                const Center(
                  child: Text(
                    "Or continue with",
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                ),

                const SizedBox(height: 16),

                Center(
                  child: SizedBox(
                    width: 200,
                    height: 50,
                    child: OutlinedButton.icon(
                      onPressed: () {},
                      label: const Text('Login with Google'),
                      icon: const Icon(
                        Icons.g_mobiledata,
                        color: Colors.red,
                        size: 24,
                      ),
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(color: Colors.grey),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusGeometry.circular(8.0),
                        ),
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 40),

                const Center(
                  child: Text(
                    '© 2025 pakaimua. All rights reserved.',
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

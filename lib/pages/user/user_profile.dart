import 'package:flutter/material.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({super.key});

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset('assets/images/logofullnyah.png', height: 40),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text('Home', style: TextStyle(color: Colors.black)),
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              'Location',
              style: TextStyle(color: Colors.black),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              'Favorites',
              style: TextStyle(color: Colors.black),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: const Text('Profile', style: TextStyle(color: Colors.black)),
          ),
          const SizedBox(width: 10),
        ],
      ),

      // Error di bagian ini
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),

          child: Card(
            elevation: 3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),

            child: Padding(
              padding: const EdgeInsets.all(20.0),

              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Avatar
                  const CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage('assets/images/about_us.png'),
                  ),

                  const SizedBox(width: 30),

                  // User info
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Azriel Mayang Mengurai',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        const SizedBox(height: 16),

                        // Email row
                        Row(
                          children: const [
                            Icon(Icons.email, size: 20),
                            SizedBox(width: 8),
                            Text(
                              'l0rialpiaris@gmail.com',
                              style: TextStyle(fontSize: 16),
                            ),
                          ],
                        ),

                        const SizedBox(height: 10),

                        // Password row
                        Row(
                          children: const [
                            Icon(Icons.lock, size: 20),
                            SizedBox(width: 8),
                            Text(
                              '*************',
                              style: TextStyle(fontSize: 16),
                            ),
                          ],
                        ),

                        const SizedBox(height: 30),

                        Row(
                          children: [
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFFB68D40),
                              ),
                              child: const Text('Edit profile'),
                            ),

                            const SizedBox(width: 15),

                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFFB23B35),
                              ),
                              child: const Text('Logout'),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),

      bottomNavigationBar: const Padding(
        padding: EdgeInsets.only(bottom: 8),
        child: Text(
          '© 2025 pakaimua. All rights reserved.',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.black54, fontSize: 12),
        ),
      ),
    );
  }
}

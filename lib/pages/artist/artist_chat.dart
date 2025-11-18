import 'package:flutter/material.dart';

class ArtistChat extends StatefulWidget {
  const ArtistChat({super.key});

  @override
  State<ArtistChat> createState() => _ArtistChatState();
}

class _ArtistChatState extends State<ArtistChat> {
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
            child: const Text('Profil', style: TextStyle(color: Colors.black)),
          ),
          TextButton(
            onPressed: () {},
            child: const Text('Chat', style: TextStyle(color: Colors.black)),
          ),
          TextButton(
            onPressed: () {},
            child: const Text('Logout', style: TextStyle(color: Colors.red)),
          ),
          const SizedBox(width: 10),
        ],
      ),
    );
  }
}

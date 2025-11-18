import 'package:flutter/material.dart';

class ArtistBeranda extends StatefulWidget {
  const ArtistBeranda({super.key});

  @override
  State<ArtistBeranda> createState() => _ArtistBerandaState();
}

class _ArtistBerandaState extends State<ArtistBeranda> {
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

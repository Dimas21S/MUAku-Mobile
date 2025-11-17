import 'package:flutter/material.dart';

class UserFavorite extends StatefulWidget {
  const UserFavorite({super.key});

  @override
  State<UserFavorite> createState() => _UserFavoriteState();
}

class _UserFavoriteState extends State<UserFavorite> {
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
    );
  }
}

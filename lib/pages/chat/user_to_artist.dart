import 'package:flutter/material.dart';

class UserToArtist extends StatefulWidget {
  const UserToArtist({super.key});

  @override
  State<UserToArtist> createState() => _UserToArtistState();
}

class _UserToArtistState extends State<UserToArtist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leadingWidth: 120,
        leading: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),

            const SizedBox(width: 10),

            CircleAvatar(
              radius: 18,
              backgroundImage: AssetImage('assets/images/logofullnyah.png'),
            ),
          ],
        ),
        backgroundColor: Color.fromRGBO(228, 207, 206, 1),
        elevation: 0,
      ),
    );
  }
}

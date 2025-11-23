import 'package:flutter/material.dart';

class ArtistToUser extends StatefulWidget {
  const ArtistToUser({super.key});

  @override
  State<ArtistToUser> createState() => _ArtistToUserState();
}

class _ArtistToUserState extends State<ArtistToUser> {
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

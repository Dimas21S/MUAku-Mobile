import 'package:flutter/material.dart';

class UserToDescription extends StatefulWidget {
  const UserToDescription({super.key});

  @override
  State<UserToDescription> createState() => _UserToDescriptionState();
}

class _UserToDescriptionState extends State<UserToDescription> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
        backgroundColor: Color.fromRGBO(228, 207, 206, 1),
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/');
            },
            icon: Icon(Icons.heat_pump_rounded),
          ),
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/lokasi');
            },
            tooltip: 'Chat',
            icon: Icon(Icons.chat),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.wechat),
            tooltip: 'WhatsApp',
          ),
          const SizedBox(width: 10),
        ],
      ),

      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(16),
          width: double.infinity,
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  // ------------
                  // FOTO PROFIL MUA
                  // ------------
                  Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/logofullnyah.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  const SizedBox(width: 15),

                  // ------------
                  // BIOGRAFI MUA
                  // ------------
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Username',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      const SizedBox(height: 5),

                      Text(
                        'Party and Event',
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w100,
                        ),
                      ),

                      const SizedBox(height: 10),

                      Text(
                        'No. Telepon',
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w100,
                        ),
                      ),

                      const SizedBox(height: 10),

                      Text(
                        'Link Lokasi',
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w100,
                        ),
                      ),

                      const SizedBox(height: 10),

                      const Text(
                        'Jadwal Make Up',
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w100,
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              const SizedBox(height: 10),

              Divider(),

              // -------------
              // DESKRIPSI MUA
              // -------------
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Deskripsi',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),

                  const SizedBox(height: 5),

                  Text(
                    'Isi deskripsi',
                    textAlign: TextAlign.start,
                    style: TextStyle(fontSize: 10),
                  ),
                ],
              ),

              Divider(),

              // -------------
              // GALERI MUA
              // -------------
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Galeri',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),

                  // TEMPAT UNTUK MENARUH FOTO-FOTO MUA
                  Row(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

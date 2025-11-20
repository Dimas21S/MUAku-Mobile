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
        backgroundColor: const Color.fromRGBO(228, 207, 206, 1),
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

import 'package:flutter/material.dart';

class UserHome extends StatefulWidget {
  const UserHome({super.key});

  @override
  State<UserHome> createState() => _UserHomeState();
}

class _UserHomeState extends State<UserHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset('assets/images/logofullnyah.png', height: 40),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/');
            },
            child: const Text('Home', style: TextStyle(color: Colors.black)),
          ),
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/lokasi');
            },
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
            onPressed: () {
              Navigator.pushNamed(context, '/profil');
            },
            child: const Text('Profile', style: TextStyle(color: Colors.black)),
          ),
          const SizedBox(width: 10),
        ],
      ),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 600,
                height: 240,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/logofullnyah.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              const SizedBox(height: 8),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          shape: CircleBorder(),
                          padding: EdgeInsets.all(16),
                        ),
                        child: Image.asset(
                          'assets/images/logofullnyah.png',
                          width: 30,
                          height: 30,
                        ),
                      ),

                      const SizedBox(height: 3),

                      Text('Pesta dan Acara', style: TextStyle(fontSize: 10)),
                    ],
                  ),

                  const SizedBox(width: 5),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          shape: CircleBorder(),
                          padding: EdgeInsets.all(16),
                        ),
                        child: Image.asset(
                          'assets/images/logofullnyah.png',
                          width: 30,
                          height: 30,
                        ),
                      ),

                      const SizedBox(height: 3),

                      Text('Pesta dan Acara', style: TextStyle(fontSize: 10)),
                    ],
                  ),

                  const SizedBox(width: 5),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          shape: CircleBorder(),
                          padding: EdgeInsets.all(16),
                        ),
                        child: Image.asset(
                          'assets/images/logofullnyah.png',
                          width: 30,
                          height: 30,
                        ),
                      ),

                      const SizedBox(height: 3),

                      Text('Pesta dan Acara', style: TextStyle(fontSize: 10)),
                    ],
                  ),
                ],
              ),

              const SizedBox(height: 10),

              Wrap(
                spacing: 10,
                runSpacing: 10,
                alignment: WrapAlignment.center,
                children: [
                  SizedBox(
                    height: 30,
                    width: 40,
                    child: Card(
                      shape: RoundedRectangleBorder(),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(12),
                              topRight: Radius.circular(12),
                            ),
                            child: SizedBox(
                              width: double.infinity,
                              height:
                                  150, // Tinggi tetap → kotak jika lebar card sebanding
                              child: Image.asset(
                                'assets/images/logofullnyah.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const Text(
                                  'Kategori: Artistic',
                                  style: TextStyle(fontSize: 14),
                                ),

                                const SizedBox(height: 5),

                                const Text(
                                  'Kategori: Artistic',
                                  style: TextStyle(fontSize: 14),
                                ),

                                const SizedBox(height: 10),

                                SizedBox(
                                  width: double.infinity,
                                  child: OutlinedButton(
                                    onPressed: () {},
                                    child: const Text('Lihat Profil'),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
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

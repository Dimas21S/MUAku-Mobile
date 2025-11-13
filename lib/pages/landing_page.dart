import 'package:flutter/material.dart';

void main() {
  runApp(const LandingPage());
}

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea( // 👉 biar gak ketutupan status bar
          child: Container(
            width: double.infinity,
            height: 1207,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFFBBB4D6),
                  Color(0xFF403879),
                  Color(0xFF231D4F),
                ],
                stops: [0.53, 0.86, 1.0],
              ),
            ),
            child: Stack(
              children: [
                // Layer 2: Gambar wanita (background utama)
                Positioned.fill(
                  child: Image.asset(
                    "assets/images/gambar wanita.png",
                    fit: BoxFit.cover, // isi seluruh layar
                  ),
                ),

                // Layer 3: Gambar ellipse (pojok kiri atas)
                Positioned(
                  top: 0,
                  left: 0,
                  child: Image.asset(
                    "assets/images/Ellipse landing page.png",
                    fit: BoxFit.none,
                  ),
                ),

                // Konten utama
                SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(height: 80), // jarak dari atas dikurangi sedikit
                        Text(
                          "Selamat Datang di Outfit Planner!",
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          "Rencanakan gayamu setiap hari dengan mudah dan cepat.",
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            color: Colors.white70,
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(height: 50),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            foregroundColor: const Color(0xFF231D4F),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 40, vertical: 15),
                          ),
                          onPressed: () {},
                          child: const Text(
                            "Mulai Sekarang",
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                        const SizedBox(height: 800),
                      ],
                    ),
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

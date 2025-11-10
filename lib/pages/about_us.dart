import 'package:flutter/material.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Bagian Header dengan background image dan judul
              Stack(
                children: [
                  Container(
                    height: 180,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/about_us.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 10,
                    left: 10,
                    child: IconButton(
                      icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
                      onPressed: () => Navigator.pop(context),
                    ),
                  ),
                  const Positioned(
                    bottom: 20,
                    left: 0,
                    right: 0,
                    child: Center(
                      child: Text(
                        "About Us",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          shadows: [
                            Shadow(
                              offset: Offset(0, 2),
                              blurRadius: 6,
                              color: Colors.black45,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              // Konten utama dengan gradient background
              Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFFe6e0f8),
                      Color(0xFFc8b0ff),
                      Color(0xFFb69fff),
                      Color(0xFF8d6eff),
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Text(
                      "pakaimua adalah platform yang menghadirkan kreativitas dan keahlian dari para makeup artist berbakat. Kami percaya bahwa setiap sentuhan kuas memiliki makna, menciptakan tampilan yang tidak hanya memperindah tetapi juga mencerminkan kepribadian dan keunikan seseorang. Di MUAku, kami menghubungkan para MUA profesional dengan mereka yang ingin tampil memukau, baik untuk acara spesial, sesi pemotretan, atau sekadar mempercantik tampilan sehari-hari.",
                      style: TextStyle(
                        color: Colors.grey[900],
                        fontSize: 15,
                        height: 1.6,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    const SizedBox(height: 20),

                    // Gambar dan teks samping
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            'assets/images/about_us1.png',
                            width: 120,
                            height: 120,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(width: 15),
                        const Expanded(
                          child: Text(
                            "Selain menjadi wadah untuk menampilkan hasil riasan terbaik, MUAku juga menjadi sumber inspirasi dengan tren kecantikan dan berbagai tips makeup.",
                            style: TextStyle(
                              color: Colors.black87,
                              fontSize: 15,
                              height: 1.6,
                            ),
                            textAlign: TextAlign.justify,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),

                    Text(
                      "Kami hadir untuk membantu setiap individu mengekspresikan dirinya melalui seni rias wajah, memastikan mereka merasa percaya diri dan bersinar di setiap momen. Jelajahi dunia kecantikan bersama MUAku dan temukan gaya terbaik untukmu!",
                      style: TextStyle(
                        color: Colors.grey[900],
                        fontSize: 15,
                        height: 1.6,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    const SizedBox(height: 30),

                    const Text(
                      "© 2025 pakaimua. All rights reserved.",
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 12,
                      ),
                    ),
                    const SizedBox(height: 10),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

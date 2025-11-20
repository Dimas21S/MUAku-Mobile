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

      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SearchAnchor(
                builder: (context, controller) {
                  return SearchBar(
                    hintText: 'Search...',
                    controller: controller,
                    onSubmitted: (value) {},
                  );
                },
                suggestionsBuilder: (context, controller) {
                  return List<ListTile>.generate(5, (index) {
                    final suggestion = 'Suggestion $index';
                    return ListTile(title: Text(suggestion), onTap: () {});
                  });
                },
              ),

              const SizedBox(height: 10),

              SizedBox(
                height: 30,
                width: 30,
                child: Card(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const CircleAvatar(
                        radius: 20,
                        backgroundImage: AssetImage(
                          'assets/images/logofullnyah.png',
                        ),
                      ),

                      const SizedBox(width: 8),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Nama Pengguna',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          const SizedBox(height: 3),

                          Text('Kategori MUA', style: TextStyle(fontSize: 5)),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

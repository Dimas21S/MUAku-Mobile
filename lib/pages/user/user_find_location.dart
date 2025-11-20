import 'package:flutter/material.dart';

class UserFindLocation extends StatefulWidget {
  const UserFindLocation({super.key});

  @override
  State<UserFindLocation> createState() => _UserFindLocationState();
}

class _UserFindLocationState extends State<UserFindLocation> {
  String? dropdownValue;

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

      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromRGBO(223, 219, 220, 1),
              Color.fromRGBO(230, 219, 217, 1),
              Color.fromRGBO(228, 207, 206, 1),
              Color.fromRGBO(211, 206, 229, 1),
            ],
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // ------------------ SEARCH + DROPDOWN ------------------
                  Row(
                    children: [
                      Expanded(
                        child: SearchAnchor(
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
                              return ListTile(
                                title: Text(suggestion),
                                onTap: () {},
                              );
                            });
                          },
                        ),
                      ),

                      const SizedBox(width: 8),

                      // -------- Dropdown Fix --------
                      DropdownButton<String>(
                        value: dropdownValue,
                        onChanged: (value) {
                          setState(() => dropdownValue = value);
                        },
                        items: const [
                          DropdownMenuItem(
                            value: 'Option 1',
                            child: Text('Option 1'),
                          ),
                          DropdownMenuItem(
                            value: 'Option 2',
                            child: Text('Option 2'),
                          ),
                          DropdownMenuItem(
                            value: 'Option 3',
                            child: Text('Option 3'),
                          ),
                        ],
                      ),
                    ],
                  ),

                  const SizedBox(height: 20),

                  // ------------------- CARD ARTIST -------------------
                  Card(
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        children: [
                          const CircleAvatar(
                            radius: 22,
                            backgroundImage: AssetImage(
                              'assets/images/avatar.png',
                            ),
                          ),

                          const SizedBox(width: 10),

                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'ArtistMUAKU',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  'Location: Unknown',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          const Icon(Icons.location_on, color: Colors.red),
                          const SizedBox(width: 5),
                          const Text("Lokasi"),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

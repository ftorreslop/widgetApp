import 'package:flutter/material.dart';

class HomesScreen extends StatelessWidget {
  static const String name = 'homes';

  const HomesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            const Padding(padding: EdgeInsets.symmetric(vertical: 5)),
            Image.asset('assets/images/oficial.png'),
            Center(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Card(
                  color: Colors.white,
                  elevation: 15,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            const SizedBox(width: 10),
                            Image.asset(
                              'assets/images/mapfre.png',
                              height: 35,
                            ),
                            const SizedBox(width: 25),
                            Image.asset(
                              'assets/images/nfc.jpg',
                              height: 35,
                            ),
                          ],
                        ),
                        const SizedBox(height: 25),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(75),
                          child: Image.asset(
                            'assets/images/useri.jpg',
                            height: 120,
                          ),
                        ),
                        const SizedBox(height: 15),
                        const Text(
                          'DANY LACUZA',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 5),
                        const Text(
                          'Director Comercial',
                          style: TextStyle(fontSize: 22),
                        ),
                        const SizedBox(height: 15),
                        Image.asset(
                          'assets/images/qr.jpg',
                          width: 135,
                        ),
                        const SizedBox(height: 5),
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.deepPurple,
                          child: Image.asset(
                            'assets/images/morada.png',
                            width: 135,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.deepPurple,
                  child: IconButton(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                    color: Colors.white,
                    onPressed: () {},
                    icon: const Icon(Icons.share, size: 20),
                    style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.purple),
                    ),
                  ),
                ),
                const SizedBox(width: 25),
                TextButton(
                  onPressed: () {},
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.white),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                    child: Text(
                      'Offline Version',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

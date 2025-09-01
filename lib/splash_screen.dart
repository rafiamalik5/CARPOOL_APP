import 'package:carpool_app/search_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //provides screen structure
      backgroundColor: Colors.white, //Sets screen’s background color to white.
      body: Center(
        //main screen content is centered horizontally and vertically.
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.center, //ensures column is vertically centered.
          children: [
            Image.asset("assets/car.png", height: 200),
            const SizedBox(height: 20),
            const Text(
              "CarPoolin",
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            const Text(
              "Drive & Share Money",
              style: TextStyle(color: Colors.grey, fontSize: 16),
            ),
            const SizedBox(
              height: 40,
            ), //Adds 40px vertical spacing before button.
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(20),
              ),
              child: const Icon(Icons.arrow_forward, color: Colors.white),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SearchScreen()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

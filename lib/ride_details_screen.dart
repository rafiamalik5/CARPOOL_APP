import 'package:flutter/material.dart'; //Imports Flutter’s Material Design widgets library, which provides UI widgets like Scaffold, AppBar, Text, etc.

class RideDetailsScreen extends StatelessWidget {
  const RideDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //tells Flutter where this widget is in widget tree.
    return Scaffold(
      //is basic page layout widget in Flutter
      backgroundColor:
          Colors.white, //Sets whole screen’s background color to white.
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Ride Details"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start, //aligns children to left.
          children: [
            Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.blue[50],
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "14:30 → 17:30",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Pick up & Drop-off points",
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "21 €",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ), //Adds vertical spacing of 20 pixels below ride info.
            Row(
              children: [
                const CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage(
                    "assets/driver.jpg",
                  ), // Driver picture
                ),
                const SizedBox(
                  width: 15,
                ), //Adds horizontal spacing between picture and text.
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Stephen",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text("Big White Car", style: TextStyle(color: Colors.grey)),
                  ],
                ),
              ],
            ),
            const Spacer(), //pushes everything above upwards and forces button to bottom of screen.
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(
                    double.infinity,
                    50,
                  ), //makes it stretch full width and 50px tall.
                  backgroundColor: Colors.blue,
                ),
                onPressed: () {}, //currently empty
                child: const Text("Order Now", style: TextStyle(fontSize: 18)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

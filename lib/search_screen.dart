import 'package:carpool_app/ride_details_screen.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //provides basic app page layout
      backgroundColor: Colors.blue[50], //Sets background to a light blue shade.
      appBar: AppBar(
        title: const Text("Where are you going?"),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("From", style: TextStyle(fontWeight: FontWeight.bold)),
            const TextField(
              decoration: InputDecoration(hintText: "Enter start location"),
            ),
            const SizedBox(height: 20),
            const Text("To", style: TextStyle(fontWeight: FontWeight.bold)),
            const TextField(
              decoration: InputDecoration(hintText: "Enter destination"),
            ),
            const SizedBox(height: 20),
            const Text("Date", style: TextStyle(fontWeight: FontWeight.bold)),
            const TextField(
              decoration: InputDecoration(hintText: "Pick a date"),
            ),
            const SizedBox(height: 20),
            const Text(
              "Passengers",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const Row(
              children: [
                CircleAvatar(child: Text("1")),
                SizedBox(width: 10),
                CircleAvatar(child: Text("2")),
                SizedBox(width: 10),
                CircleAvatar(child: Text("3")),
              ],
            ),
            const Spacer(), //Pushes everything above upwards, so button is stuck to bottom
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 50),
                  backgroundColor: Colors.blue,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const RideDetailsScreen(),
                    ),
                  );
                },
                child: const Text("Search", style: TextStyle(fontSize: 18)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

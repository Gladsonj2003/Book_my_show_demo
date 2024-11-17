import 'package:flutter/material.dart';
import 'booking_screen.dart'; // Import the BookingScreen

class MovieDetailScreen extends StatelessWidget {
  final int movieId;

  const MovieDetailScreen({super.key, required this.movieId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Movie Details'),
        backgroundColor: Colors.redAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Movie Description
            const Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 16),
            // Movie Poster
            Center(
              child: Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage('https://via.placeholder.com/400x200'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(12.0),
                ),
              ),
            ),
            const SizedBox(height: 16),
            // Movie Title
            Text(
              'Movie $movieId',
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            // Booking Button
            ElevatedButton(
              onPressed: () {
                // Navigate to booking screen
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BookingScreen(movieId: movieId),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.redAccent, // Updated parameter name
                padding: const EdgeInsets.symmetric(vertical: 15),
                textStyle: const TextStyle(fontSize: 18),
              ),
              child: const Text('Book Tickets'),
            ),
          ],
        ),
      ),
    );
  }
}

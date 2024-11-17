import 'package:flutter/material.dart';

class BookingScreen extends StatelessWidget {
  final int movieId;

  const BookingScreen({super.key, required this.movieId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Book Tickets'),
        backgroundColor: Colors.redAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Select Date and Time',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            // Add date and time picker widgets
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Select Date',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Select Time',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Select Seats',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            // Add seat selection widgets
            Wrap(
              spacing: 8.0,
              children: List.generate(8, (index) {
                return ChoiceChip(
                  label: Text('Seat ${index + 1}'),
                  selected: false,
                  onSelected: (selected) {},
                );
              }),
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () {
                // Add booking logic here
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Tickets booked successfully!')),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.redAccent, // Updated parameter name
                padding: const EdgeInsets.symmetric(vertical: 15),
                textStyle: const TextStyle(fontSize: 18),
              ),
              child: const Text('Confirm Booking'),
            ),
          ],
        ),
      ),
    );
  }
}

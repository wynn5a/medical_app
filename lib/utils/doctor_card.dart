import 'package:flutter/material.dart';

class DoctorCard extends StatelessWidget {
  final String imagePath;
  final String name;
  final String address;
  final String score;

  const DoctorCard(
      {super.key,
      required this.imagePath,
      required this.name,
      required this.address,
      required this.score});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: Container(
        width: 200,
        height: 100,
        padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
        decoration: BoxDecoration(
            color: Colors.deepPurple[100],
            borderRadius: BorderRadius.circular(12)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.asset(
                imagePath,
                width: 100,
                height: 100,
              ),
            ),
            const SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                Text(score, style: const TextStyle(fontWeight: FontWeight.bold),)
              ],
            ),
            const SizedBox(height: 20),
            Text(
              name,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 5),
            Text(address)
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:medical_app/utils/category_card.dart';
import 'package:medical_app/utils/doctor_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _HomeScreenState();
  }
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              // app bar
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //name
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Hello,",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        "Wynn Ming",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      )
                    ],
                  ),
                  //profile picture
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.deepPurple[100],
                        borderRadius: BorderRadius.circular(30)),
                    padding: const EdgeInsets.all(18),
                    child: const Icon(Icons.person),
                  )
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              // card -> how do you feel
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: Colors.pink[100],
                    borderRadius: BorderRadius.circular(12)),
                child: Row(
                  children: [
                    //picture
                    SizedBox(
                      height: 100,
                      width: 100,
                      child: Lottie.network(
                          'https://assets7.lottiefiles.com/packages/lf20_42B8LS.json'),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    //text + button
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "How do you feel?",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          const SizedBox(height: 12),
                          const Text(
                            'Fill out your medical card right now',
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          const SizedBox(height: 12),
                          Container(
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.deepPurple[300],
                            ),
                            child: const Center(
                              child: Text(
                                'Get started',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 25),
              //search bar
              Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                    color: Colors.deepPurple[100],
                    borderRadius: BorderRadius.circular(12)),
                child: const TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'How can we help you?',
                      prefixIcon: Icon(Icons.search)),
                ),
              ),
              const SizedBox(height: 25),
              SizedBox(
                height: 60,
                // color: Colors.white,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    CategoryCard(
                        icon: 'lib/resources/icons/teeth.png', name: 'Dentist'),
                    CategoryCard(
                        icon: 'lib/resources/icons/scalpel.png',
                        name: 'Surgeon'),
                    CategoryCard(
                        icon: 'lib/resources/icons/capsule.png',
                        name: 'Capsule'),
                  ],
                ),
              ),
              const SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Doctor list',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Text(
                    'See all',
                    style: TextStyle(color: Colors.black54),
                  )
                ],
              ),
              const SizedBox(height: 25),
              // doctor list
              Expanded(
                  child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  DoctorCard(
                      imagePath: 'lib/resources/images/doctor1.jpg',
                      name: 'Dr. Arlene McCoy',
                      address: 'Therapist, 7 ye.',
                      score: '4.9'),
                  DoctorCard(
                      imagePath: 'lib/resources/images/doctor2.jpg',
                      name: 'Dr. Albert Flores',
                      address: 'Surgeon, 5 ye.',
                      score: '4.7'),
                  DoctorCard(
                      imagePath: 'lib/resources/images/doctor3.jpg',
                      name: 'Dr. Arlene McCoy',
                      address: 'Therapist, 7 ye.',
                      score: '4.9'),
                ],
              )),
            ],
          ),
        ),
      ),
    );
  }
}

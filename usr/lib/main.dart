import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sparkle Car Wash',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const CarWashHomePage(),
    );
  }
}

class CarWashHomePage extends StatelessWidget {
  const CarWashHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sparkle Car Wash'),
        actions: [
          TextButton(onPressed: () {}, child: const Text('Home', style: TextStyle(color: Colors.white))),
          TextButton(onPressed: () {}, child: const Text('Services', style: TextStyle(color: Colors.white))),
          TextButton(onPressed: () {}, child: const Text('About Us', style: TextStyle(color: Colors.white))),
          TextButton(onPressed: () {}, child: const Text('Contact', style: TextStyle(color: Colors.white))),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header Section
            Container(
              height: 400,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage('https://images.unsplash.com/photo-1605152276897-4f618f831968?q=80&w=2070&auto=format&fit=crop'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                color: Colors.black.withOpacity(0.5),
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text(
                        'Your Car\'s Best Friend',
                        style: TextStyle(
                          fontSize: 48,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'We provide top-quality car washing and detailing services.',
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 30),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                        ),
                        child: const Text('Book Now', style: TextStyle(fontSize: 20)),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            // Services Section
            Padding(
              padding: const EdgeInsets.all(40.0),
              child: Column(
                children: [
                  const Text('Our Services', style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 20),
                  Wrap(
                    spacing: 20,
                    runSpacing: 20,
                    alignment: WrapAlignment.center,
                    children: const [
                      ServiceCard(
                        title: 'Exterior Wash',
                        price: '\$25',
                        description: 'A thorough wash of your car\'s exterior, including wheels and tires.',
                        icon: Icons.wash,
                      ),
                      ServiceCard(
                        title: 'Interior Cleaning',
                        price: '\$40',
                        description: 'Complete vacuuming, dusting, and cleaning of the interior.',
                        icon: Icons.event_seat,
                      ),
                      ServiceCard(
                        title: 'Full Detailing',
                        price: '\$150',
                        description: 'The complete package. Includes exterior wash, interior cleaning, waxing, and polishing.',
                        icon: Icons.car_rental,
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // About Us Section
            Container(
              color: Colors.grey[200],
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text('About Sparkle Car Wash', style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
                        SizedBox(height: 20),
                        Text(
                          'We are a team of passionate car enthusiasts dedicated to making your car look its absolute best. We use only the highest quality products and techniques to ensure a perfect finish every time. Customer satisfaction is our top priority.',
                          style: TextStyle(fontSize: 16, height: 1.5),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 40),
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        'https://images.unsplash.com/photo-1556802694-524055c0186c?q=80&w=1974&auto=format&fit=crop',
                        height: 300,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Footer
            Container(
              color: Colors.blue,
              padding: const EdgeInsets.all(20.0),
              child: Center(
                child: Column(
                  children: const [
                     Text('© 2024 Sparkle Car Wash. All Rights Reserved.', style: TextStyle(color: Colors.white)),
                     SizedBox(height: 10),
                     Text('123 Clean Street, Sparkle City, 12345', style: TextStyle(color: Colors.white)),
                     SizedBox(height: 10),
                     Text('contact@sparklecarwash.com | (123) 456-7890', style: TextStyle(color: Colors.white)),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ServiceCard extends StatelessWidget {
  final String title;
  final String price;
  final String description;
  final IconData icon;

  const ServiceCard({
    super.key,
    required this.title,
    required this.price,
    required this.description,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: Card(
        elevation: 5,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Icon(icon, size: 50, color: Theme.of(context).primaryColor),
              const SizedBox(height: 10),
              Text(title, style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              const SizedBox(height: 10),
              Text(price, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.green)),
              const SizedBox(height: 10),
              Text(description, textAlign: TextAlign.center),
            ],
          ),
        ),
      ),
    );
  }
}

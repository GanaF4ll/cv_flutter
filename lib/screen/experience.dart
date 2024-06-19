import 'package:flutter/material.dart';

class ExperienceScreen extends StatelessWidget {
  const ExperienceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expériences'),
        backgroundColor: Colors.blue.shade700,
        actions: [
          IconButton(
            icon: const Icon(Icons.facebook),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.wordpress),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.volcano),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: 16),
            _buildFormationSection(
              logo: 'assets/sncf.jpg',
              title: 'SNCF Voyageur',
              items: [
                'Développeur Full-Stack',
                'Création et maintenance de différents Workflows',
              ],
            ),
            const SizedBox(height: 16),
            _buildFormationSection(
              logo: 'assets/LogoWhite.png',
              title: 'Virtual Sentinel',
              items: [
                'Projet de fin d\'année',
                'Application de formation à la cybersécurité',
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFormationSection({
    required String logo,
    required String title,
    required List<String> items,
  }) {
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Flexible(
              flex: 1,
              child: Image.asset(
                logo,
                width: 50,
                height: 50,
              ),
            ),
            const SizedBox(width: 16),
            Flexible(
              flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    title,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: items
                        .map((item) => Text(
                              item,
                              style: const TextStyle(fontSize: 14),
                            ))
                        .toList(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: ExperienceScreen(),
  ));
}

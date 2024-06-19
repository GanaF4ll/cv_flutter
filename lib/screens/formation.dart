import 'package:flutter/material.dart';

class FormationScreen extends StatelessWidget {
  const FormationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Formation'),
        backgroundColor: Colors.blue.shade400,
        actions: [
          IconButton(
            icon: const Icon(Icons.facebook),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.twitter),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.dataset_linked),
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
              logo: 'assets/mds.png',
              title: 'My Digital School',
              items: [
                'Bachelor 3 – Développeur Web & Mobile',
                'Master 1 & 2 – Développeur Full-Stack',
              ],
            ),
            const SizedBox(height: 16),
            _buildFormationSection(
              logo: 'assets/enaco.png',
              title: 'Enaco',
              items: [
                'Bachelor 3 – E-Commerce',
              ],
            ),
            const SizedBox(height: 16),
            _buildFormationSection(
              logo: 'assets/progresscom.png',
              title: 'PROGRESSCOM',
              items: [
                'BTS – Management des unités commerciales',
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
    home: FormationScreen(),
  ));
}

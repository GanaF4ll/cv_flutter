import 'package:flutter/material.dart';

class CompetenceScreen extends StatelessWidget {
  const CompetenceScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Compétences'),
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
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text('Logiciels',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(
              child: Wrap(
                spacing: 10,
                runSpacing: 10,
                children: [
                  listImage('assets/ps.png', 'Photoshop'),
                  listImage('assets/ai.png', 'Illustrator'),
                  listImage('assets/figma.png', 'Figma'),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Text('Web',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(
              child: Wrap(
                spacing: 10,
                runSpacing: 10,
                children: [
                  listImage('assets/react.png', 'React'),
                  listImage('assets/html.png', 'HTML5'),
                  listImage('assets/js.png', 'JavaScript'),
                  listImage('assets/postgre.png', 'Postgre'),
                  listImage('assets/php.png', 'PHP'),
                  listImage('assets/css.png', 'Css'),
                  listImage('assets/mysql.png', 'Mysql.js'),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Text('Mobile',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(
              child: Wrap(
                spacing: 10,
                runSpacing: 10,
                children: [
                  listImage('assets/flutter.png', 'Flutter'),
                  listImage('assets/rn.png', 'Unity'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget listImage(String source, String label) {
    return Container(
      width: 90,
      height: 90,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 4,
            offset: Offset(2, 2),
          ),
        ],
      ),
      child: Column(
        children: [
          Image.asset(
            source,
            width: 50,
            height: 50,
          ),
          const SizedBox(height: 4),
          Text(
            label,
            style: const TextStyle(fontSize: 12),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Infos'),
        backgroundColor: Colors.blue.shade700,
        actions: [
          IconButton(
            icon: const Icon(Icons.facebook),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.facebook),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.dataset_linked),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            infoItem(
              'Fan de basket-ball',
              'images/basket.jpg',
              'J\'ai toujours été passionné par le basket-ball. J\'ai joué dans différentes équipes locales et je suis un fervent supporter de la NBA. J\'aime regarder les matchs et analyser les stratégies des différentes équipes.',
            ),
            const SizedBox(height: 20),
            infoItem(
              'Passionné par les pizzas',
              'images/pizza.jpg',
              'J\'ai toujours aimé les pizzas. J\'aime les cuisiner et les déguster. J\'ai même suivi des cours de cuisine pour apprendre à les préparer. J\'ai une préférence pour les pizzas italiennes.',
            ),
          ],
        ),
      ),
    );
  }

  Widget infoItem(String title, String imagePath, String description) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          imagePath,
          width: double.infinity,
          height: 200,
          fit: BoxFit.cover,
        ),
        const SizedBox(height: 10),
        Text(
          title,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          description,
          style: const TextStyle(fontSize: 16),
        ),
        const Divider(
          height: 30,
          thickness: 1,
          color: Colors.grey,
        ),
      ],
    );
  }
}

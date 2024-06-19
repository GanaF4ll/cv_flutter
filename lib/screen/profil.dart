import 'package:flutter/material.dart';

class ProfilScreen extends StatelessWidget {
  const ProfilScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Formation'),
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              color:
                  Colors.blue.shade300, // Une couleur plus douce pour l'en-tête
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    'Gana FALL',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  ClipOval(
                    child: Image.asset(
                      'images/amir.webp', // Assurez-vous que le chemin est correct
                      height: 100,
                      width: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      IconButton(
                          onPressed: () => {},
                          icon:
                              const Icon(Icons.facebook, color: Colors.amber)),
                      IconButton(
                          onPressed: () => {},
                          icon:
                              const Icon(Icons.facebook, color: Colors.amber)),
                      IconButton(
                          onPressed: () => {},
                          icon:
                              const Icon(Icons.facebook, color: Colors.amber)),
                    ],
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Icon(Icons.mail, color: Colors.amber),
                      SizedBox(width: 10),
                      Text('ganafall9498@gmail.com',
                          style: TextStyle(fontSize: 18)),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Icon(Icons.phone, color: Colors.amber),
                      SizedBox(width: 10),
                      Text('0666098289', style: TextStyle(fontSize: 18)),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Icon(Icons.location_city, color: Colors.amber),
                      SizedBox(width: 10),
                      Text('Maisons-Alfort', style: TextStyle(fontSize: 18)),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Icon(Icons.info, color: Colors.amber),
                      SizedBox(width: 10),
                      Expanded(
                        child: Text(
                          'Développeur web',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ],
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

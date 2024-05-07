import 'package:flutter/material.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(30),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text('Experience'),
            const SizedBox(height: 20),
            const Row(
              children: <Widget>[
                Icon(Icons.person),
                SizedBox(width: 10),
                Column(
                  children: [
                    Text("Infos"),
                  ],
                ),
              ],
            ),
          ]),
    );
  }
}

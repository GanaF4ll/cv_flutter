import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 200,
            child: ListView(children: const [
              ListTile(
                  leading: Icon(Icons.home),
                  title: Text('Gana Fall'),
                  subtitle: Text('address')),
              ListTile(
                leading: Icon(Icons.mail_outline),
                title: Text('mail'),
                subtitle: Text('ganafall9498@gmail.com'),
              ),
              ListTile(
                leading: Icon(Icons.phone),
                title: Text('Téléphone'),
                subtitle: Text('0666098289'),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}

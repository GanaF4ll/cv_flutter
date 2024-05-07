import 'package:flutter/material.dart';
import 'package:cv_flutter/data/competence.data.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CompetenceScreen extends StatelessWidget {
  const CompetenceScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(30),
      child: Column(children: <Widget>[
        listFront(),
      ]),
    );
  }

  SizedBox listFront() {
    return SizedBox(
      height: 400,
      // Map sur une Map
      child: ListView.builder(
          itemCount: front.length,
          itemBuilder: (BuildContext ctxt, int index) {
            var skill = front[index];
            return ListTile(
              // Removed const
              leading: SvgPicture.asset("assets/icons/${skill["img"]}"),
              title: Text(skill["name"]),
            );
          }),
    );
  }
}

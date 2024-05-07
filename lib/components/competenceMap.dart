import 'package:flutter/material.dart';

class ListComponent extends StatelessWidget {
  final List<Map<String, String>> mapList;

  const ListComponent({Key? key, required this.mapList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: ListView.builder(
        itemCount: mapList.length,
        itemBuilder: (BuildContext ctxt, int index) {
          var map = mapList[index];
          return ListTile(
            leading: Image.asset("assets/icons/${map["img"]!}"),
            title: Text(map["name"]!),
          );
        },
      ),
    );
  }
}

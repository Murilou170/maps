// ignore_for_file: file_names

import 'package:flutter/material.dart';

import 'components/get_map_widget.dart';

class InitialScreen extends StatelessWidget {
  const InitialScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Google Maps'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 200),
              width: 600,
              height: 50,
              color: Colors.orange,
              child: Text('Buscando Profissional'),
            ),
            Container(
              width: 600,
              height: 400,
              child: getMap(),
            )
          ],
        ),
      ),
    );
  }
}

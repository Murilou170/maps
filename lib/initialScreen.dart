// ignore_for_file: file_names

import 'package:flutter/material.dart';

import 'components/get_map_widget.dart';

class InitialScreen extends StatelessWidget {
  const InitialScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            title: Text('google maps'),
            floating: true,
            expandedHeight: 100,
            forceElevated: innerBoxIsScrolled,
          ),
        ],
        body: Center(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 100),
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
      ),
    );
  }
}

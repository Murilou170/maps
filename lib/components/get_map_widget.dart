import 'dart:html';

import 'package:flutter/material.dart';
import 'dart:ui' as ui;

import 'package:google_maps/google_maps.dart';

class getMap extends StatelessWidget {
  const getMap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String htmlId = "7";
    // ignore: undefined_prefixed_name
    ui.platformViewRegistry.registerViewFactory(htmlId, (int viewId) {
      final myLatlng = LatLng(-15.79712, -47.91609);
      // -15.79712, -47.91609
      final mapOptions = MapOptions()
        ..zoom = 10
        ..center = LatLng(-15.79712, -47.91609);

      final elem = DivElement()
        ..id = htmlId
        ..style.width = "100%"
        ..style.height = "100%"
        ..style.border = 'none';

      final map = GMap(elem, mapOptions);

      Marker(MarkerOptions()
        ..position = myLatlng
        ..map = map
        ..title = 'Hello World');

      return elem;
    });
    return HtmlElementView(viewType: htmlId);
  }
}

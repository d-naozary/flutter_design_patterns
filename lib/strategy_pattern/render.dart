import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

abstract class Renderer {
  Widget render();
}

class Imagerenderer extends Renderer {
  @override
  Widget render() {
    return Image.asset("assets/render_image.jpg");
  }
}

class ButtonRenderer extends Renderer {
  @override
  Widget render() {
    return ElevatedButton(
      onPressed: () {},
      child: Text("Rendered Button"),
    );
  }
}

class WidgetRenderer extends Renderer {
  @override
  Widget render() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Icon(
          Icons.local_fire_department,
          color: Colors.amberAccent,
        ),
        Text("Row Widget"),
        Icon(
          Icons.local_fire_department,
          color: Colors.red,
        ),
      ],
    );
  }
}

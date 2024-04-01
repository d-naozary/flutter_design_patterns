import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_design_patterns/strategy_pattern/render.dart';

class RendererPage extends StatefulWidget {
  const RendererPage({super.key});

  @override
  State<RendererPage> createState() => _RendererPageState();
}

class _RendererPageState extends State<RendererPage> {
  String? renderer;
  Renderer? currRenderer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Choose your renderer"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [],
        ),
      ),
    );
  }
}

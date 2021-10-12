import 'package:flutter/material.dart';


class Preload extends StatefulWidget {


  @override
  _PreloadState createState() => _PreloadState();
}

class _PreloadState extends State<Preload> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: CircularProgressIndicator()),
    );
  }
}

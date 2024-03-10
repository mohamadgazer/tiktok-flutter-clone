import 'package:flutter/material.dart';

class CameraView extends StatelessWidget {
  const CameraView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Camera Page'),
      ),
      body: const Center(
        child: Text('This is the Camera Page'),
      ),
    );
  }
}

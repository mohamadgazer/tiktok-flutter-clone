import 'package:flutter/material.dart';

class UploadVideoView extends StatelessWidget {
  const UploadVideoView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Upload Video Page'),
      ),
      body: const Center(
        child: Text('This is the Upload Video Page'),
      ),
    );
  }
}

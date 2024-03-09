import 'package:flutter/material.dart';

class EditUserView extends StatelessWidget {
  const EditUserView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit User Page'),
      ),
      body: const Center(
        child: Text('This is the Edit User Page'),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class CreatePage extends StatefulWidget {
  @override
  _CreatePage createState() => _CreatePage();
}

class _CreatePage extends State<CreatePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Page'),
      ),
      body: Center(
        child: TextButton(
          child: const Text('Back'),
          onPressed: () => Navigator.pop(context),
        )
      ),
    );
  }
}

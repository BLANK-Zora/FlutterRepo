import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    const int days = 190;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Catalog App"),
      ),
        body: Center(
          child: Container(
            child: Text("days = $days"),
        ),
      ),
      drawer: const Drawer(),
    );
  }
}

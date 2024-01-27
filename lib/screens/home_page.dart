import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // const int days = 190;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Catalog App"),
      ),
      body: Center(
        child: Container(
          height: 400,
          width: 700,
          alignment: Alignment.topCenter,
          decoration: BoxDecoration(
            color: Colors.pink.shade200
          ),
          child: const Text("Heading",
          ),
        ),
      ),
      drawer: const Drawer(),
    );
  }
}

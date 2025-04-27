import 'package:flutter/material.dart';
import 'package:assignment05/listview_page.dart';
import 'package:assignment05/gridview_page.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Landing Page'),
        backgroundColor: const Color.fromARGB(255, 0, 170, 255),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            _showNavigationDialog(context);
          },
          child: const Text('Go to Pages'),
        ),
      ),
    );
  }

  void _showNavigationDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Choose a Page'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context); 
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ListviewPage()),
                  );
                },
                child: const Text('List View Page'),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context); 
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const GridviewPage()),
                  );
                },
                child: const Text('Grid View Page'),
              ),
            ],
          ),
        );
      },
    );
  }
}

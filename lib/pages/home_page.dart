import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color? _backGroundColor = Colors.grey[500];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backGroundColor,
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          children: [
            const Text(
              "What's your favorite color?",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
            const SizedBox(height: 25),
            DropdownMenu(
              dropdownMenuEntries: const [
                DropdownMenuEntry(value: Colors.red, label: "Red"),
                DropdownMenuEntry(value: Colors.yellow, label: "Yellow"),
                DropdownMenuEntry(value: Colors.blue, label: "Blue"),
                DropdownMenuEntry(value: Colors.teal, label: "Teal"),
                DropdownMenuEntry(value: Colors.cyan, label: "Cyan"),
                DropdownMenuEntry(
                    value: Colors.deepPurple, label: "DeepPurple"),
              ],
              onSelected: (color) {
                if (color != null) {
                  setState(() {
                    _backGroundColor = color;
                  });
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}

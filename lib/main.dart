import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  Color myButtonColor = Colors.red;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    hintText: 'Введіть число (напр. 25, 50, 80)',
                  ),
                  onChanged: (text) {
                    setState(() {
                      int number = int.tryParse(text) ?? 0;
                      if (number < 30) {
                        myButtonColor = Colors.red;
                      } else if (number > 70) {
                        myButtonColor = Colors.green;
                      } else {
                        myButtonColor = Colors.yellow;
                      }
                    });
                  },
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: myButtonColor),
                onPressed: () {},
                child: const Text(
                  'Кнопка',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

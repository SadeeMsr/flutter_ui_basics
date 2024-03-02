import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/task_board_screen.dart';


class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              Expanded(
                flex: 5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "Welcome to",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
                    ),
                    Text(
                      "Plan IT",
                      style: TextStyle(fontSize: 50, fontWeight: FontWeight.w800),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  children: [
                    const Text(
                      "Your Personal task management \n and planning solution",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      height: 60,
                      width: 250,
                      decoration: const BoxDecoration(
                        color: Color.fromRGBO(57, 57, 57, 1),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const TaskBoardScreen()),
                          );
                        },
                        child: const Center(
                          child: Text(
                            "Let's get Started",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

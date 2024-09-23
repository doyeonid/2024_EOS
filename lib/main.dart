import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EOS ToDoList',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor:Colors.lightGreen),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}


class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.lightGreen,
      title: Text('EOS ToDoList'),
      leading: Icon(Icons.check_box_outlined),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            color: Colors.lightGreen[100],
            height: 250,
            padding: EdgeInsets.all(50),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: 5, color: Colors.grey),
                      color: Colors.white,
                    ),
                    width: 150,
                    height: 150,
                    child: Icon(Icons.person, color: Colors.grey, size: 100)
                  ),
                  Container(
                    width: 10,
                    height: 150
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Eos',),
                      Text(
                        '김도연',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30
                        ),
                      ),
                      Text('냥대 컴소 24학번'),
                    ],
                  ),
                ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(child: Text('hello eos')),
    );
  }
}

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        fontFamily: 'Pretendard',
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        backgroundColor: Color(0xFFA4C639).withOpacity(0.1),
        title: Text('EOS ToDoList'),
        leading: Image.asset('assets/images/eos_logo.png'),
    ),

        body: Column(
          children: [
            Container(
                height: 200,
                color: Colors.transparent,
                padding: EdgeInsets.all(25),
                child: Row(children: [
                  Container(
                    width: 140,
                    height: 140,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(width: 10, color: Colors.grey),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Center(
                      child: Image.asset('assets/images/eos_logo.png'),
                    ),
                  ),
                  SizedBox(
                    width: 35,
                  ),
                  Expanded(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '김도연',
                            style:
                            TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text('최선을 다하기!')
                        ]
                    ),
                  )
                ])),
            Container(
                height: 500,
                color: Color(0xFFA4C639).withOpacity(0.1)
            )
          ],
        ));
  }
}
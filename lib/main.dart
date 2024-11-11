import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

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
      home: HomeScreen(),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:todolist_eos/screens/home_screen.dart';
//
// void main() {
//   runApp(const MyApp());
// }
// class MyApp extends StatefulWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   void initState(){
//     super.initState();
//     toDoList.add("11111111");
//     toDoList.add("22222222");
//     toDoList.add("33333333");
//   }
//   State<MyApp> createState() => _MyAppState();
// }
//
// class _MyAppState extends State<MyApp> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'EOS ToDoList',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
//         fontFamily: 'Pretendard',
//         useMaterial3: true,
//       ),
//       home: MyHomePage(),
//     );
//   }
// }

// class MyHomePage extends StatelessWidget {
//   const MyHomePage({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//         backgroundColor: Color(0xFFA4C639).withOpacity(0.1),
//         title: Text('EOS ToDoList'),
//         leading: Image.asset('assets/images/eos_logo.png'),
//     ),
//
//         body: Column(
//           children: [
//             Container(
//                 height: 200,
//                 padding: EdgeInsets.all(25),
//                 child: Row(children: [
//                   Container(
//                     width: 140,
//                     height: 140,
//                     decoration: BoxDecoration(
//                       color: Colors.white,
//                       border: Border.all(width: 10, color: Colors.grey),
//                       borderRadius: BorderRadius.circular(100),
//                     ),
//                     child: Center(
//                       child: Image.asset('assets/images/eos_logo.png'),
//                     ),
//                   ),
//                   SizedBox(
//                     width: 35,
//                   ),
//                   Expanded(
//                     child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             '김도연',
//                             style:
//                             TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
//                           ),
//                           SizedBox(
//                             height: 15,
//                           ),
//                           Text('최선을 다하기!')
//                         ]
//                         //elevation: 0,
//                     ),
//                   )
//                 ])),
//             Container(
//                 height: 500,
//                 color: Color(0xFFA4C639).withOpacity(0.3)
//             )
//           ],
//           Padding(
//               padding: EdgeInsets.only(top:80, left: 40, right: 25),
//               child: Container{
//                 height: MediaQuery.of(context).size.height - 400;
//                 child: ListView.builder(itemBuilder: BuildContext context, int index){
//                   return ListTile(
//                     title: Text(todoList[index]),
//                     trailing: IconButtomssndnnsjkfnjsnfjkdsnfdn
//                   );
//
//           },
//           }
//           Positioned(
//             bottom: 30,
//             right: 30,
//             child: ElevatedButton(
//               onPressed: () {
//                 setStates(){
//                   todoList.add("********");
//                 }
//               },
//               child: Icon(Icons.add, size:30, Colors.white),
//               style: ElevatedButton.styleFrom(
//                 elevation: 10,
//                 backgroundColor: Color(0xFFA4C639).withOpacity(0.3),
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(8),
//                 )
//               ),
//             ),
//           )
//         ));
//   }
// }
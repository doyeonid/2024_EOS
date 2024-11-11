import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widgets/add_button.dart';
import '../widgets/todo_item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> todoLists = [];

  @override
  void initState() {
    super.initState();
    todoLists.add("11111111");
    todoLists.add("22222222");
    todoLists.add("33333333");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFA4C639).withOpacity(0.1),
        title: Row(
          children: [
            Image.asset(
              'assets/images/eos_logo.png',
              width: 30,
              height: 30,
            ),
            SizedBox(width: 8),
            Text('EOS ToDoList'),
            Spacer(),
            Stack(
              children: [
                Positioned(
                  right: 0,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    color: Colors.redAccent,
                    child: Text(
                      "NEW",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Center(
                    child: Image.asset('assets/images/eos_logo.png'),
                  ),
                ),
                SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '최윤영(본인 이름)',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      '4.0 이상 학점 받기(열심히 다짐!)',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              color: Color(0xFFA4C639).withOpacity(0.1),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    "To do list",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  height: 300, // 리스트가 표시될 영역의 높이 조절
                  child: ListView.builder(
                    itemCount: todoLists.length,
                    itemBuilder: (BuildContext context, int index) {
                      return ToDoItem(
                        title: todoLists[index],
                        onDelete: () {
                          setState(() {
                            todoLists.removeAt(index);
                          });
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            todoLists.add("새로운 항목");
          });
        },
        backgroundColor: Color(0xFFA4C639),
        child: Icon(Icons.add),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  list todoLists = [];
  @override
  void initState() {
    super.initState();
    todoList.add("11111111");
    todoList.add("22222222");
    todoList.add("33333333");
  }

  @override
  void dispose() {
    //TODO: implement dispose
    super.dispose();
  }

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
                padding: EdgeInsets.all(25),
                height: 200,
                child:Row(
                    children: [
                      Container(
                        width: 140,
                        height: 140,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(width:10, color: Colors.grey),
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child:Center(
                            child: Image.asset('assets/images/eos_logo.png')
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
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text('hello!')
                            ]),
                      )
                    ])),
            Stack(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 500,
                    decoration: BoxDecoration(
                        color: Color(0xFFA4C639).withOpacity(0.1),
                        borderRadius: BorderRadius.circular(20)
                    ),
                  ),
                ),
                Positioned(
                  bottom: 30,
                  right: 50,
                  child: AddButton(
                    onPressed: () {
                      setState(() {
                        toDoLists.add("+++++++++");
                      });
                    },
                  ))
                  top: 20,
                  left: (MediaQuery.of(context).size.width - 150)/2,
                  child: Container(
                    width: 150,
                    height: 38,
                    decoration: BoxDecoration(
                      color: Color(0xFFA4C639).withOpacity(0.3),
                      borderRadius: BorderRadius.circular(30),
                    ),

                    child: Center(
                      child: Text(
                        "To do list",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 23,
                            fontWeight: FontWeight.w600
                        ),
                      ),
                    ),

                    child: ListView.builder(
                      itemCount: toDoLists.length,
                      itemBuilder: (BuildContext context, int index) {
                        return ToDoItem(
                        // TODO: 알맞은 parameter값 전달하기
                        );
                    }),
                  ),
                )
              ],
            )
          ],
        ));
  }
}
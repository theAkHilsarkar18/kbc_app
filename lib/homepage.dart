import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int i = 0;

  List questionList = [
    "1. Who is first lady chief minister of Gujrat ? ",
    "2. What is birthdate of Akhil Sarkar ? ",
    "3. In which year india was independent ? ",
    "4. What is CAPITAL of Japan ? ",
  ];

  List answerList = ["Anandiben","19th March","1947","Tokyo"];

  List aList = ["Anandiben","19th March","1973","Berlin"];
  List bList = ["Indira Gandhi","20th Nov","1979","Denver"];
  List cList = ["Smriti Irani","2nd May","1947","Balermo"];
  List dList = ["Jaya Lalita","22nd Sept","1982","Tokyo"];

  List useranswerList = [];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("KBC app",style: TextStyle(color: Colors.green.shade900,fontWeight: FontWeight.bold,letterSpacing: 3)),
          backgroundColor: Color(0xff20fa99) ,
        ),
        body: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50),bottomRight: Radius.circular(50),),
                  gradient: LinearGradient(
                    colors: [
                    Colors.greenAccent,
                    Colors.green,
                      Colors.teal,
                    ]
                  ),
                ),
                width: double.infinity,
                alignment: Alignment.center,
                child: Text(
                  "${questionList[i]}",
                  style: TextStyle(fontSize: 20, color: Colors.white,letterSpacing: 2,fontWeight: FontWeight.w500),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          useranswerList.add("${aList[i]}");
                          if (useranswerList[i] == answerList[i]) {
                            Navigator.pushNamed(context, 'winner');
                            i++;
                            if(i==10)
                            {
                              i=0;
                            }
                          } else {
                            Navigator.pushNamed(context, 'output');
                            i=0;
                            useranswerList.clear();
                          }
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),

                          gradient: LinearGradient(
                              colors: [
                                Colors.greenAccent,
                                Colors.green,
                                Colors.teal,
                              ]
                          ),

                        ),
                        margin: EdgeInsets.all(10),
                        height: 55,
                        width: 280,

                        padding: EdgeInsets.all(10),
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(width: 20,),
                            Container(
                              height: 55,
                              width: 30,
                              alignment: Alignment.center,
                              child: Text(
                                "A.",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                ),
                              ),
                            ),
                            Container(
                              height: 55,
                              width: 200,
                              alignment: Alignment.center,
                              child: Text(
                                "${aList[i]}",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),


                    InkWell(
                      onTap: () {
                        setState(() {
                          useranswerList.add("${bList[i]}");
                          if (useranswerList[i] == answerList[i]) {
                            Navigator.pushNamed(context, 'winner');
                            i++;
                            if(i == 10){
                              i=0;
                            }
                          } else {
                            Navigator.pushNamed(context, 'output');
                            i=0;
                            useranswerList.clear();
                          }
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: LinearGradient(
                              colors: [
                                Colors.greenAccent,
                                Colors.green,
                                Colors.teal,
                              ]
                          ),
                        ),
                        margin: EdgeInsets.all(10),
                        height: 55,
                        width: 280,
                        padding: EdgeInsets.all(10),
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(width: 20,),
                            Container(
                              height: 55,
                              width: 30,
                              alignment: Alignment.center,
                              child: Text(
                                "B.",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                ),
                              ),
                            ),
                            Container(
                              height: 55,
                              width: 200,
                              alignment: Alignment.center,
                              child: Text(
                                "${bList[i]}",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          useranswerList.add("${cList[i]}");
                          if (useranswerList[i] == answerList[i]) {
                            Navigator.pushNamed(context, 'winner');
                            i++;
                            if(i == 10){
                              i=0;
                            }
                          } else {
                            Navigator.pushNamed(context, 'output');
                            i=0;
                            useranswerList.clear();
                          }
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: LinearGradient(
                              colors: [
                                Colors.greenAccent,
                                Colors.green,
                                Colors.teal,
                              ]
                          ),
                        ),
                        margin: EdgeInsets.all(10),
                        height: 55,
                        width: 280,
                        padding: EdgeInsets.all(10),
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(width: 20,),
                            Container(
                              height: 55,
                              width: 30,
                              alignment: Alignment.center,
                              child: Text(
                                "C.",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                ),
                              ),
                            ),
                            Container(
                              height: 55,
                              width: 200,
                              alignment: Alignment.center,
                              child: Text(
                                "${cList[i]}",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          useranswerList.add("${dList[i]}");
                          if (useranswerList[i] == answerList[i]) {
                            Navigator.pushNamed(context, 'winner');
                            i++;
                            if(i == 10){
                              i=0;
                            }
                          } else {
                            Navigator.pushNamed(context, 'output');
                            i=0;
                            useranswerList.clear();
                          }
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: LinearGradient(
                              colors: [
                                Colors.greenAccent,
                                Colors.green,
                                Colors.teal,
                              ]
                          ),
                        ),
                        margin: EdgeInsets.all(10),
                        height: 55,
                        width: 280,
                        padding: EdgeInsets.all(10),
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(width: 20,),
                            Container(
                              height: 55,
                              width: 30,
                              alignment: Alignment.center,
                              child: Text(
                                "D.",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                ),
                              ),
                            ),
                            Container(
                              height: 55,
                              width: 200,
                              alignment: Alignment.center,
                              child: Text(
                                "${dList[i]}",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
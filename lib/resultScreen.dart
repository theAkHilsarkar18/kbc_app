import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OutPut extends StatefulWidget {
  const OutPut({Key? key}) : super(key: key);

  @override
  State<OutPut> createState() => _OutPutState();
}

class _OutPutState extends State<OutPut> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("KBC app",style: TextStyle(color: Colors.green.shade900,fontWeight: FontWeight.bold,letterSpacing: 3)),
          backgroundColor: Color(0xff20fa99) ,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "👎",
                  style: TextStyle(
                    fontSize: 40,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Your Answer is not Correct",
                  style: TextStyle(
                    fontSize: 38,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "You Lost",
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap:(){
                setState(() {
                  Navigator.pop(context, '/');
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
                height: 50,
                width: 100,
                alignment: Alignment.center,
                child: Text(
                  "Restart",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
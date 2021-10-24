import 'package:flutter/material.dart';
import 'package:todolist/Screens/Home/components/img_header.dart';
import 'package:todolist/Screens/Home/components/task_card_widget.dart';
import 'package:todolist/Screens/Home/components/text_header.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black26,
      body: Container(
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: 7,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Container(
                color: Colors.white,
                height: 70,
                padding: EdgeInsets.only(left: 10, top: 10, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    ImgHeader(
                      imgheader: 'assets/images/fvn.png',
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    TextHeader(
                      TextName: 'Fandy Ahmad Irianto',
                      TextNotif: '2 Tugas Tersisa',
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 6),
              child: SafeArea(
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(),
                  child: Stack(
                    children: [
                      Column(
                        children: [
                          TaskCardWidget(
                            title: 'Daily Stand Up',
                            note: 'Makan makan', 
                            date: 'Minggu, 24 Juli 2010',
                          ),
                          TaskCardWidget(
                            title: 'Daily Stand Up',
                            note: 'Makan makan', 
                            date: 'Minggu, 24 Juli 2010',
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
        
            // Container(
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //     children: <Widget>[
            //       Positioned(
                    
            //         bottom: 0,
            //         child: Container(
            //           width: 50,
            //           height: 50,
            //           child: Icon(
            //             Icons.task,
            //             color: Colors.blue,
            //           ),
            //         ),
            //       ),
            //       Positioned(
            //         bottom: 0,
            //         child: Container(
            //           width: 50,
            //           height: 50,
            //           decoration: BoxDecoration(
            //               color: Colors.blue,
            //               borderRadius: BorderRadius.circular(20)),
            //           child: Icon(
            //             Icons.add,
            //             color: Colors.white,
            //           ),
            //         ),
            //       ),
            //       Positioned(
            //         bottom: 0,
            //         left: 0,
            //         child: Container(
            //           width: 50,
            //           height: 50,
            //           child: Icon(Icons.settings, color: Colors.blue),
            //         ),
            //       )
            //     ],
            //   ),
            // )
          ],
        ), 
      ), 
    );
  }
}

import 'package:flutter/material.dart';
import 'package:todolist/Screens/Home/components/getstarted_card.dart';
import 'package:todolist/Screens/Home/components/img_header.dart';
import 'package:todolist/Screens/Home/components/task_card_widget.dart';
import 'package:todolist/Screens/Home/components/text_header.dart';
import 'package:todolist/Screens/TaskScreen/task_screen.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Future<void> showInformationDialog(BuildContext context) async {
    return await showDialog(
        context: context,
        builder: (context) {
          final TextEditingController _textEditingController =
              TextEditingController();
          bool isChecked = false;
          return StatefulBuilder(builder: (context, setState) {
            return AlertDialog(
              content: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      TextFormField(
                        controller: _textEditingController,
                        validator: (value) {
                          return value!.isNotEmpty ? null : "Invalid Field";
                        },
                        decoration:
                            InputDecoration(hintText: "Enter Some Text"),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Choice Box"),
                          Checkbox(
                              value: isChecked,
                              onChanged: (checked) {
                                setState((){
                                  isChecked = checked!;
                                }) ;
                              })
                        ],
                      )
                    ],
                  )),
              actions: <Widget>[
                TextButton(
                  child: Text('Noted'),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.of(context).pop();
                    }
                  },
                )
              ],
            );
          });
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black26,
      body: Container(
        width: double.infinity,
        height: double.infinity,
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
                          GetStartedCard(
                              title1: 'GetStarted!',
                              note1:
                                  'Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.'),
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
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {},
                    child: Positioned(
                      bottom: 0,
                      child: Container(
                        width: 50,
                        height: 50,
                        child: Icon(
                          Icons.task,
                          color: Colors.black,
                          size: 30,
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () async {
                      await showInformationDialog(context);
                    },
                    child: Positioned(
                      bottom: 0,
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(20)),
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Positioned(
                      bottom: 0,
                      left: 0,
                      child: Container(
                        width: 50,
                        height: 50,
                        child: Icon(
                          Icons.settings,
                          color: Colors.black,
                          size: 30,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

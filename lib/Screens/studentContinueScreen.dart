// ignore_for_file: library_private_types_in_public_api, prefer_typing_uninitialized_variables, file_names

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:student_teacher_app/Screens/studentHomeScreen.dart';

class StudentContinueScreen extends StatefulWidget {
  const StudentContinueScreen({Key? key, this.uid, this.password, this.name}) : super(key: key);
  final uid;
  final password;
  final name;

  @override
  _StudentContinueScreenState createState() => _StudentContinueScreenState();
}

class _StudentContinueScreenState extends State<StudentContinueScreen> {
  late var uid = widget.uid;
  late var password = widget.password;
  late var name = widget.name;

  var sname;
  var docid;

  var phone;
  var email;
  var classs;
  var subjects;
  var image;

  var s1;
  var s2;
  var s3;
  var s4;
  var s5;
  var s6;
  var s7;
  var s8;

  var t1;
  var t2;
  var t3;
  var t4;
  var t5;
  var t6;
  var t7;
  var t8;

  var jan;
  var feb;
  var mar;
  var apr;
  var may;
  var jun;
  var jul;
  var aug;
  var sep;
  var oct;
  var nov;
  var dec;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Continue'),
        centerTitle: true,
        backgroundColor: Colors.blue[800],
      ),
      body: StreamBuilder(
        stream: FirebaseFirestore.instance
            .collection('manager')
            .doc(uid)
            .collection('students')
            .where("password", whereIn: [password, 'null']).snapshots(),
        builder: (context, AsyncSnapshot snapshot) {
          DocumentSnapshot snap = snapshot.data.docs[0];
          sname = snap['name'].toString();

          if (snapshot.data!.docs.length == 1) {
            snap = snapshot.data.docs[0];
            docid = snapshot.data.docs[0].id;
          } else {
            snap = snapshot.data.docs[1];
            docid = snapshot.data.docs[1].id;
          }
          sname = snap['name'].toString();
          classs = snap['class'].toString();
          phone = snap['phone'].toString();
          email = snap['email'].toString();
          image = snap['image'].toString();
          subjects = snap['subjects'].toString();
          s1 = snap['s1'].toString();
          s2 = snap['s2'].toString();
          s3 = snap['s3'].toString();
          s4 = snap['s4'].toString();
          s5 = snap['s5'].toString();
          s6 = snap['s6'].toString();
          s7 = snap['s7'].toString();
          s8 = snap['s8'].toString();
          t1 = snap['t1'].toString();
          t2 = snap['t2'].toString();
          t3 = snap['t3'].toString();
          t4 = snap['t4'].toString();
          t5 = snap['t5'].toString();
          t6 = snap['t6'].toString();
          t7 = snap['t7'].toString();
          t8 = snap['t8'].toString();
          jan = snap['jan'].toString();
          feb = snap['feb'].toString();
          mar = snap['mar'].toString();
          apr = snap['apr'].toString();
          may = snap['may'].toString();
          jun = snap['jun'].toString();
          jul = snap['jul'].toString();
          aug = snap['aug'].toString();
          sep = snap['sep'].toString();
          oct = snap['oct'].toString();
          nov = snap['nov'].toString();
          dec = snap['dec'].toString();

          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (sname != 'No Student')
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(5, 0, 5, 50),
                      child: SizedBox(
                        height: 170,
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: InkWell(
                            onTap: () {

                            },
                            child: Material(
                              color: Colors.white,
                              elevation: 10.0,
                              borderRadius: BorderRadius.circular(25.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: const <Widget>[
                                      Center(
                                        child: Text(
                                          'Login Successful',
                                          style: TextStyle(
                                            fontSize: 24.0,
                                            color: Colors.pinkAccent,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: const <Widget>[
                                      Center(
                                        child: Text(
                                          'to',
                                          style: TextStyle(
                                            fontSize: 24.0,
                                            color: Colors.pinkAccent,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: <Widget>[
                                      Center(
                                        child: Text(
                                          name,
                                          style: const TextStyle(
                                            fontSize: 28.0,
                                            color: Colors.deepPurple,
                                            fontWeight: FontWeight.w900,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(5, 0, 5, 50),
                      child: SizedBox(
                        height: 170,
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: InkWell(
                            onTap: () {

                            },
                            child: Material(
                              color: Colors.white,
                              elevation: 10.0,
                              borderRadius: BorderRadius.circular(25.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: const [
                                      Center(
                                        child: Text(
                                          'Welcome',
                                          style: TextStyle(
                                            fontSize: 24.0,
                                            color: Colors.blue,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: <Widget>[
                                      Center(
                                        child: Text(
                                          sname,
                                          style: TextStyle(
                                            fontSize: 30.0,
                                            color: Colors.teal[800],
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 80,
                    ),

                    Padding(
                      padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
                      child: SizedBox(
                        height: 100,
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => StudentHomeScreen(uid:uid,name:sname,
                                      phone:phone,email:email,classname:classs,subjects:subjects,image:image
                                      ,password: password,
                                    s1:s1,
                                    s2:s2,
                                    s3:s3,
                                    s4:s4,
                                    s5:s5,
                                    s6:s6,
                                    s7:s7,
                                    s8:s8,
                                    t1:t1,
                                    t2:t2,
                                    t3:t3,
                                    t4:t4,
                                    t5:t5,
                                    t6:t6,
                                    t7:t7,
                                    t8:t8,
                                    jan :jan,
                                    feb: feb,
                                    mar: mar,
                                    apr: apr,
                                    may: may,
                                    jun: jun,
                                    jul: jul,
                                    aug: aug,
                                    sep: sep,
                                    oct: oct,
                                    nov: nov,
                                    dec: dec,
                                  )));
                            },
                            child: Material(
                              color: Colors.blue,
                              elevation: 10.0,
                              borderRadius: BorderRadius.circular(25.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: const <Widget>[
                                  Center(
                                    child: Text(
                                      'Continue',
                                      style: TextStyle(
                                        fontSize: 24.0,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              else
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: InkWell(
                    onTap: () {
                      // Navigator.push(context,
                      //     MaterialPageRoute(builder: (context) => teacherlogin()));
                    },
                    child: Material(
                      color: Colors.white,
                      elevation: 10.0,
                      borderRadius: BorderRadius.circular(25.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const <Widget>[
                          Center(
                            child: Text(
                              'Invalid Password',
                              style: TextStyle(
                                fontSize: 24.0,
                                color: Colors.pinkAccent,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
            ],
          );
        },
      ),
    );
  }
}

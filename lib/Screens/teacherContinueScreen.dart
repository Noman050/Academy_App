// ignore_for_file: library_private_types_in_public_api, prefer_typing_uninitialized_variables, file_names
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:student_teacher_app/Screens/teacherHomeScreen.dart';


class TeacherContinueScreen extends StatefulWidget {
  const TeacherContinueScreen({Key? key, this.uid, this.password, this.name}) : super(key: key);
  final uid;
  final password;
  final name;
  @override
  _TeacherContinueScreenState createState() => _TeacherContinueScreenState();
}
class _TeacherContinueScreenState extends State<TeacherContinueScreen> {
  late var uid = widget.uid;
  late var password = widget.password;
  late var name = widget.name;
  var tname;
  var docid;
  var phone;
  var email;
  var classs;
  var subject;
  var image;
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
            .collection('teachers')
            .where("password", whereIn: [password, 'null']).snapshots(),
        builder: (context, AsyncSnapshot snapshot) {
          DocumentSnapshot snap = snapshot.data.docs[0];
          tname = snap['name'].toString();
          if (snapshot.data!.docs.length == 1) {
            snap = snapshot.data.docs[0];
            docid = snapshot.data.docs[0].id;
          } else {
            snap = snapshot.data.docs[1];
            docid = snapshot.data.docs[1].id;
          }
          tname = snap['name'].toString();
          subject = snap['subject'].toString();
          classs = snap['class'].toString();
          phone = snap['phone'].toString();
          email = snap['email'].toString();
          image = snap['image'].toString();
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (tname != 'No Teacher')
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
                                    children: const <Widget>[
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
                                          tname,
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
                                  MaterialPageRoute(builder: (context) => TeacherHomeScreen(uid:uid,name:tname,
                                      phone:phone,email:email,classs:classs,subject:subject,image:image
                                      ,password: password)));
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

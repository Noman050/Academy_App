// ignore_for_file: prefer_typing_uninitialized_variables, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:student_teacher_app/Screens/notificationScreen.dart';
import 'package:student_teacher_app/Screens/studentFeeScreen.dart';
import 'package:student_teacher_app/Screens/teacherSubjectScreen.dart';
import 'teacherInfoScreen.dart';


class StudentHomeScreen extends StatefulWidget {
  const StudentHomeScreen({Key? key, this.classname, this.name, this.email, this.phone, this.password, this.subjects,
    this.image, this.s1, this.s2, this.s3, this.s4, this.s5, this.s6, this.s7, this.s8, this.uid, this.t1, this.t2, this.t3, this.t4, this.t5, this.t6, this.t7, this.t8, this.jan, this.feb, this.mar, this.apr, this.may, this.jun, this.jul, this.aug, this.sep, this.oct, this.nov, this.dec,
  }) :super(key: key);

  final uid;
  final classname;
  final name;
  final email;
  final phone;
  final  password;
  final subjects;
  final image;
  final s1;
  final s2;
  final s3;
  final s4;
  final s5;
  final s6;
  final s7;
  final s8;

  final t1;
  final t2;
  final t3;
  final t4;
  final t5;
  final t6;
  final t7;
  final t8;

  final jan;
  final feb;
  final mar;
  final apr;
  final may;
  final jun;
  final jul;
  final aug;
  final sep;
  final oct;
  final nov;
  final dec;

  @override
  _StudentHomeScreenState createState() => _StudentHomeScreenState();
}

class _StudentHomeScreenState extends State<StudentHomeScreen> {
  late var uid = widget.uid;
  late var password = widget.password;
  late var name = widget.name;
  late var phone = widget.phone;
  late var email = widget.email;
  late var image = widget.image;
  late String classname = widget.classname;
  late String subjects = widget.subjects;
  late String s1 = widget.s1;
  late String s2 = widget.s2;
  late String s3 = widget.s3;
  late String s4 = widget.s4;
  late String s5 = widget.s5;
  late String s6 = widget.s6;
  late String s7 = widget.s7;
  late String s8 = widget.s8;
  late String t1 = widget.t1;
  late String t2 = widget.t2;
  late String t3 = widget.t3;
  late String t4 = widget.t4;
  late String t5 = widget.t5;
  late String t6 = widget.t6;
  late String t7 = widget.t7;
  late String t8 = widget.t8;
  late var jan=widget.jan;
  late var feb=widget.feb;
  late var mar=widget.mar;
  late var apr=widget.apr;
  late var may=widget.may;
  late var jun=widget.jun;
  late var jul=widget.jul;
  late var aug=widget.aug;
  late var sep=widget.sep;
  late var oct=widget.oct;
  late var nov=widget.nov;
  late var dec=widget.dec;
  var tname;
  var docid;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        centerTitle: true,
        backgroundColor: Colors.blue[800],
      ),
      body:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
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
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => TeacherInfoScreen(uid:uid,name:name,
                                  phone:phone,email:email,classs:classname,subject:subjects,image:image
                                  ,password: password)));
                        },
                        child: Material(
                          color: Colors.white,
                          elevation: 30.0,
                          borderRadius: BorderRadius.circular(25.0),
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.blue,
                                  width: 3
                              ),
                              borderRadius: BorderRadius.circular(25.0),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: <Widget>[
                                    const Center(
                                      child: Text(
                                        'My Info',
                                        style: TextStyle(
                                          fontSize: 24.0,
                                          color: Colors.blue,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ),
                                    CircleAvatar(
                                      backgroundColor: Colors.transparent,
                                      radius: 50,
                                      child: ClipOval(
                                          child: SizedBox(
                                            height: 80,
                                            width: 80,
                                            child:  Image.network(image)
                                          )
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
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(5, 0, 5, 50),
                  child: SizedBox(
                    height: 170,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => TeacherSubject(uid:uid,name:name, image:image,
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
                                 )));
                        },
                        child: Material(
                          color: Colors.white,
                          elevation: 30.0,
                          borderRadius: BorderRadius.circular(25.0),
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.teal,
                                  width: 3
                              ),
                              borderRadius: BorderRadius.circular(25.0),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: <Widget>[
                                    Column(
                                      children: const [
                                        Center(
                                          child: Text(
                                            'Teachers &',
                                            style: TextStyle(
                                              fontSize: 24.0,
                                              color: Colors.teal,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                        ),
                                        Center(
                                          child: Text(
                                            'Subjects',
                                            style: TextStyle(
                                              fontSize: 24.0,
                                              color: Colors.teal,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),)
                                      ],
                                    ),
                                    CircleAvatar(
                                      backgroundColor: Colors.transparent,
                                      radius: 50,
                                      child: ClipOval(
                                          child: SizedBox(
                                              height: 80,
                                              width: 80,
                                              child:  Image.network(image)
                                          )
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
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: InkWell(
                    onTap: (){

                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => StudentFee(image: image,name: name,
                              jan:jan,feb:feb,mar:mar,apr:apr,may:may,jun:jun,jul:jul,aug:aug,sep:sep,oct:oct,nov:nov,dec:dec,
                              subjects:subjects,fee: '400',
                          )));
                    },
                    child: Material(
                      color: Colors.white,
                      elevation: 30.0,
                      borderRadius: BorderRadius.circular(25.0),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.deepPurple,
                              width: 3
                          ),
                          borderRadius: BorderRadius.circular(25.0),
                        ),

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            const Center(
                              child: Text(
                                'Fee',style: TextStyle(
                                fontSize: 24.0,
                                color: Colors.deepPurple,

                                fontWeight: FontWeight.w700,
                              ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 10.0,
                              ),
                              child: Material(
                                elevation: 5.0,
                                borderRadius: BorderRadius.circular(100.0),
                                child: const SizedBox(
                                  // changing from 200 to 150 as to look better
                                  height: 90.0,
                                  width: 90.0,
                                  child: ClipOval(
                                    child: Image(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                        'Assets/images/fee.jpg',
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => NotificationScreen(uid:uid)));
                    },
                    child: Material(
                      color: Colors.white,
                      elevation: 30.0,
                      borderRadius: BorderRadius.circular(25.0),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.pink,
                              width: 3
                          ),
                          borderRadius: BorderRadius.circular(25.0),
                        ),

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            const Center(
                              child: Text(
                                'Notifications',style: TextStyle(
                                fontSize: 24.0,
                                color: Colors.pink,

                                fontWeight: FontWeight.w700,
                              ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 10.0,
                              ),
                              child: Material(
                                elevation: 5.0,
                                borderRadius: BorderRadius.circular(100.0),
                                child: const SizedBox(
                                  // changing from 200 to 150 as to look better
                                  height: 90.0,
                                  width: 90.0,
                                  child: ClipOval(
                                    child: Image(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                        'Assets/images/notification.png',
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
        ],
      )
    );
  }
}

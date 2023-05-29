// ignore_for_file: prefer_typing_uninitialized_variables, library_private_types_in_public_api
import 'package:flutter/material.dart';
import 'package:student_teacher_app/Screens/feeScreen.dart';
import 'package:student_teacher_app/Screens/notificationsScreen.dart';
import 'package:student_teacher_app/Screens/studentInfoScreen.dart';

class TeacherHomeScreen extends StatefulWidget {
  const TeacherHomeScreen({Key? key, this.uid, this.password, this.name, this.email, this.phone, this.subject, this.classs, this.image}) : super(key: key);
  final uid;
  final password;
  final name;
  final email;
  final phone;
  final subject;
  final classs;
  final image;

  @override
  _TeacherHomeScreenState createState() => _TeacherHomeScreenState();
}

class _TeacherHomeScreenState extends State<TeacherHomeScreen> {
  late var uid = widget.uid;
  late var password = widget.password;
  late var name = widget.name;
  late var phone = widget.phone;
  late var email = widget.email;
  late var classs = widget.classs;
  late var subject = widget.subject;
  late var image = widget.image;
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
                                  phone:phone,email:email,classs:classs,subject:subject,image:image
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
                    height: 190,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => FeeScreen(uid:uid)));
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
                                            'Classes &',
                                            style: TextStyle(
                                              fontSize: 24.0,
                                              color: Colors.teal,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                        ),
                                        Center(
                                          child: Text(
                                            'their Fee',
                                            style: TextStyle(
                                              fontSize: 24.0,
                                              color: Colors.teal,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                        ),

                                      ],
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
                                          height: 100.0,
                                          width: 100.0,
                                          child: ClipOval(
                                            child: Image(
                                              fit: BoxFit.cover,
                                              image: AssetImage(
                                                'Assets/images/class.jpg',
                                              ),
                                            ),
                                          ),
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

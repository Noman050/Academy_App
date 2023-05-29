// ignore_for_file: prefer_typing_uninitialized_variables, file_names
import 'package:flutter/material.dart';
import 'package:student_teacher_app/Screens/studentLoginScreen.dart';
import 'package:student_teacher_app/Screens/teacherLoginScreen.dart';

class RoleLoginScreen extends StatefulWidget {
  const RoleLoginScreen({Key? key, this.uid,this.name
  }) :super(key: key);
  final uid;
  final name;
  @override
  State<RoleLoginScreen> createState() => _RoleLoginScreenState();
}
class _RoleLoginScreenState extends State<RoleLoginScreen> {
  late var uid = widget.uid;
  late var name = widget.name;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:SafeArea(
          child:Scaffold(
            appBar: AppBar(
              title: const Center(child: Text('Login Role Screen')),
            ),
            body:
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Center(
                    child: Text(
                      'Click to Continue',style: TextStyle(fontSize: 30,fontWeight: FontWeight.w900,color:Colors.blue[900]),
                    ),
                  ),
                  Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: InkWell(
                          onTap: (){
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => TeacherLoginScreen(uid:uid,name: name,)));
                          },
                          child: Material(
                            color: Colors.teal[300],
                            elevation: 10.0,
                            borderRadius: BorderRadius.circular(25.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                const Center(
                                  child: Text(
                                    'Teacher',
                                    style: TextStyle(
                                      fontSize: 24.0,
                                      color: Colors.white,
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
                                      height: 120.0,
                                      width: 120.0,
                                      child: ClipOval(
                                        child: Image(
                                          fit: BoxFit.cover,
                                          image: AssetImage(
                                            'Assets/images/teacher.jpg',
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
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: InkWell(
                      onTap: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => StudentLoginScreen(uid:uid,name: name,)));
                      },
                      child: Material(
                        color: Colors.blue[300],
                        elevation: 10.0,
                        borderRadius: BorderRadius.circular(25.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            const Center(
                              child: Text(
                                'Student',
                                style: TextStyle(
                                  fontSize: 24.0,
                                  color: Colors.white,
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
                                  height: 120.0,
                                  width: 120.0,
                                  child: ClipOval(
                                    child: Image(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                        'Assets/images/student.jpg',
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
                  const SizedBox(
                    height: 100,
                  )
                ],
              ),
            ),
          )
      ),
    );
  }
}


// ignore_for_file: prefer_typing_uninitialized_variables, library_private_types_in_public_api
import 'package:flutter/material.dart';

class TeacherInfoScreen extends StatefulWidget {
  const TeacherInfoScreen({Key? key, this.uid, this.password, this.name, this.email, this.phone, this.subject, this.classs, this.image}) : super(key: key);
  final uid;
  final password;
  final name;
  final email;
  final phone;
  final subject;
  final classs;
  final image;

  @override
  _TeacherInfoScreenState createState() => _TeacherInfoScreenState();
}
class _TeacherInfoScreenState extends State<TeacherInfoScreen> {
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
          title: Text(name),
          centerTitle: true,
          backgroundColor: Colors.blue[800],
        ),
        body:  Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.transparent,
                  radius: 50,
                  child: ClipOval(
                      child: SizedBox(
                          height: 140,
                          width: 140,
                          child:  Image.network(image)

                      )
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                  child: Text('Name :',style: TextStyle(fontSize: 20,color:Colors.blue[900]),),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(100, 0, 20, 0),
                  child: Text(name,style: TextStyle(fontSize: 22,fontWeight: FontWeight.w900,color:Colors.blue[900]),),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                  child: Text('Subject :',style: TextStyle(fontSize: 20,color:Colors.blue[900]),),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(100, 0, 20, 0),
                  child: Text(subject,style: TextStyle(fontSize: 20,color:Colors.blue[700]),),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                  child: Text('Class :',style: TextStyle(fontSize: 20,color:Colors.blue[900]),),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(100, 0, 20, 0),
                  child: Text(classs,style: TextStyle(fontSize: 20,color:Colors.blue[700]),),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                  child: Text('Email :',style: TextStyle(fontSize:20,color:Colors.blue[900]),),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(100, 0, 20, 0),
                  child: Text(email,style: TextStyle(fontSize: 16,color:Colors.blue[700])),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                  child: Text('Phone # :',style: TextStyle(fontSize: 20,color:Colors.blue[900]),),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(100, 0, 20, 0),
                  child: Text(phone,style: TextStyle(fontSize: 16,color:Colors.blue[700])),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                  child: Text('Password :',style: TextStyle(fontSize: 20,color:Colors.blue[900]),),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(100, 0, 20, 0),
                  child: Text(password,style: TextStyle(fontSize: 20,color:Colors.blue[700])),
                )
              ],
            ),

          ],
        )
    );
  }
}

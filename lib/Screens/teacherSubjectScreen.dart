// ignore_for_file: prefer_typing_uninitialized_variables, library_private_types_in_public_api
import 'package:flutter/material.dart';

class TeacherSubject extends StatefulWidget {
  const TeacherSubject({Key? key, this.uid,this.name,this.image, this.s1, this.s2, this.s3, this.s4, this.s5, this.s6, this.s7, this.s8, this.t1, this.t2, this.t3, this.t4, this.t5, this.t6, this.t7, this.t8}) : super(key: key);

  final name;
  final uid;
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

  @override
  _TeacherSubjectState createState() => _TeacherSubjectState();
}

class _TeacherSubjectState extends State<TeacherSubject> {
  late var uid = widget.uid;
  late var name = widget.name;
  late var image = widget.image;
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
            const SizedBox(
              height: 3,
              child: Divider(
                thickness: 2,
                color: Colors.blueGrey,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                    child: Text("Subjects",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w900,color:Colors.pink),),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(100, 0, 20, 0),
                    child: Text("Teachers",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w900,color:Colors.pink),),
                  )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                if(s1 !='null')
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                  child: Text(s1,style: TextStyle(fontSize: 20,color:Colors.blue[900]),),
                ),
                if(t1 !='No Teacher')
                  Padding(
                  padding: const EdgeInsets.fromLTRB(100, 0, 20, 0),
                  child: Text(t1,style: TextStyle(fontSize: 22,fontWeight: FontWeight.w900,color:Colors.blue[900]),),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                if(s2 !='null')
                  Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                  child: Text(s2,style: TextStyle(fontSize: 20,color:Colors.blue[900]),),
                ),

                if(t2 !='No Teacher')
                  Padding(
                  padding: const EdgeInsets.fromLTRB(100, 0, 20, 0),
                  child: Text(t2,style: TextStyle(fontSize: 22,fontWeight: FontWeight.w900,color:Colors.blue[900]),),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                if(s3 !='null')
                  Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                  child: Text(s3,style: TextStyle(fontSize: 20,color:Colors.blue[900]),),
                ),
                if(t3 !='No Teacher')
                  Padding(
                  padding: const EdgeInsets.fromLTRB(100, 0, 20, 0),
                  child: Text(t3,style: TextStyle(fontSize: 22,fontWeight: FontWeight.w900,color:Colors.blue[900]),),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                if(s4 !='null')
                  Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                  child: Text(s4,style: TextStyle(fontSize: 20,color:Colors.blue[900]),),
                ),
                if(t4 !='No Teacher')
                  Padding(
                  padding: const EdgeInsets.fromLTRB(100, 0, 20, 0),
                  child: Text(t4,style: TextStyle(fontSize: 22,fontWeight: FontWeight.w900,color:Colors.blue[900]),),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                if(s5 !='null')
                  Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                  child: Text(s5,style: TextStyle(fontSize: 20,color:Colors.blue[900]),),
                ),
                if(t5 !='No Teacher')
                  Padding(
                  padding: const EdgeInsets.fromLTRB(100, 0, 20, 0),
                  child: Text(t5,style: TextStyle(fontSize: 22,fontWeight: FontWeight.w900,color:Colors.blue[900]),),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                if(s6 !='null')
                  Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                  child: Text(s6,style: TextStyle(fontSize: 20,color:Colors.blue[900]),),
                ),
                if(t6 !='No Teacher')
                  Padding(
                  padding: const EdgeInsets.fromLTRB(100, 0, 20, 0),
                  child: Text(t6,style: TextStyle(fontSize: 22,fontWeight: FontWeight.w900,color:Colors.blue[900]),),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                if(s7 !='null')
                  Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                  child: Text(s7,style: TextStyle(fontSize: 20,color:Colors.blue[900]),),
                ),

                if(t7 !='No Teacher')
                  Padding(
                  padding: const EdgeInsets.fromLTRB(100, 0, 20, 0),
                  child: Text(t7,style: TextStyle(fontSize: 22,fontWeight: FontWeight.w900,color:Colors.blue[900]),),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                if(s8 !='null')
                  Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                  child: Text(s8,style: TextStyle(fontSize: 20,color:Colors.blue[900]),),
                ),
                if(t8 !='No Teacher')
                  Padding(
                    padding: const EdgeInsets.fromLTRB(100, 0, 20, 0),
                    child: Text(t8,style: TextStyle(fontSize: 22,fontWeight: FontWeight.w900,color:Colors.blue[900]),),
                  )
              ],
            ),
          ],
        )
    );
  }
}

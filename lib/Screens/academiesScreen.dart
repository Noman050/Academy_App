// ignore_for_file: library_private_types_in_public_api, prefer_typing_uninitialized_variables
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:student_teacher_app/Screens/roleLoginScreen.dart';

class AcademiesScreen extends StatefulWidget {
  const AcademiesScreen({super.key});
  @override
  _AcademiesScreenState createState() => _AcademiesScreenState();
}

class _AcademiesScreenState extends State<AcademiesScreen> {

  var name;
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select to Continue'),
        centerTitle: true,
        backgroundColor: Colors.blue[800],
      ),
      body:
      StreamBuilder(
        stream: FirebaseFirestore.instance.collection('academies').snapshots(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (!snapshot.hasData) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          return ListView.builder(
              itemCount: snapshot.data.docs.length,
              itemBuilder: (context, int index) {
                return Padding(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
                  child: CardList(snapshot: snapshot.data,index: index),
                );
              });
        },
      ),

    );
  }
}
class CardList extends StatelessWidget {
  const CardList({super.key, required this.snapshot,required this.index});
  final QuerySnapshot snapshot;
  final int index;
  @override
  Widget build(BuildContext context) {
    //var docid=snapshot.docs[index].id;
    var name=snapshot.docs[index]['name'];
    var uid=snapshot.docs[index]['uid'];
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: InkWell(
        onTap: (){
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => RoleLoginScreen(uid:uid,name:name)));
        },
        child: Material(
          color: Colors.white,
          elevation: 10.0,
          borderRadius: BorderRadius.circular(25.0),
          child: Container(
            height: 150,
            decoration: BoxDecoration(
              border: Border.all(
                  color: Colors.pink,
                  width: 2
              ),
              borderRadius: BorderRadius.circular(25.0),
            ),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Center(
                  child: Text(
                    name,style: const TextStyle(
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
                            'Assets/images/academy.png',
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
    );
  }
}
// ignore_for_file: library_private_types_in_public_api, prefer_typing_uninitialized_variables
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'classFeeScreen.dart';

class FeeScreen extends StatefulWidget {
  const FeeScreen({Key? key, this.uid,}) : super(key: key);
  final uid;
  @override
  _FeeScreenState createState() => _FeeScreenState();
}
class _FeeScreenState extends State<FeeScreen> {
  late var uid = widget.uid;
  var name;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Click on any class to continue'),
        backgroundColor: Colors.blue[800],
      ),
      body:
      StreamBuilder(
        stream: FirebaseFirestore.instance.collection('manager').doc(uid).collection('classes').snapshots(),
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
                  child: CardList(snapshot: snapshot.data,index: index,uid:uid),
                );
              });
        },
      ),
    );
  }
}
class CardList extends StatelessWidget {
  const CardList({super.key, required this.snapshot,required this.index, this.uid});
  final QuerySnapshot snapshot;
  final int index;
  final uid;
  @override
  Widget build(BuildContext context) {
    var docid=snapshot.docs[index].id;
    var name=snapshot.docs[index]['name'];
    var fee=snapshot.docs[index]['fee'];
    //TextEditingController updatee = TextEditingController();
    return GestureDetector(
      onTap: (){

        Navigator.push(context,
            MaterialPageRoute(builder: (context) => ClassFee(name: name,fee:fee,docid:docid,uid:uid)));
      },
      child: Container(
          height: 100,
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Colors.blue,  // red as border color
              ),
              borderRadius: const BorderRadius.all(Radius.circular(25))),
          child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const SizedBox(
                    // changing from 200 to 150 as to look better
                    height: 50.0,
                    width: 50.0,
                    child: ClipOval(
                      child: Image(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          'Assets/images/class.jpg',
                        ),
                      ),
                    ),
                  ),
                  Text(
                    snapshot.docs[index]['name'],
                    style:
                    TextStyle(fontSize: 25, color:Colors.blue[900], fontWeight: FontWeight.w900),
                  ),
                ],
              ))),
    );
  }
}
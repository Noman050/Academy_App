// ignore_for_file: library_private_types_in_public_api
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen(
      {required this.uid, Key? key,})
      : super(key: key);
  final uid;
@override
  _NotificationScreenState createState() => _NotificationScreenState();
}
class _NotificationScreenState extends State<NotificationScreen> {
  late var uid = widget.uid;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notifications'),
        backgroundColor: Colors.blue[800],
      ),
      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection('manager').doc(uid).collection('notifications').snapshots(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (!snapshot.hasData) {
            return const Center(
            child: CircularProgressIndicator(),);
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
    //TextEditingController updatee = TextEditingController();
    return Card(
      elevation: 50,
      shadowColor: Colors.blue[800],
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Container(
          height: 280,
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Colors.blue, // red as border color
              ),
              borderRadius: const BorderRadius.all(Radius.circular(20))),
          child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const SizedBox(
                        height: 50.0,
                        width: 50.0,
                        child: ClipOval(
                          child: Image(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              'Assets/images/notification.png',
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 20),
                      Text(
                        snapshot.docs[index]['time'],
                        style:
                        TextStyle(fontSize: 15, color: Colors.pink[900]),
                      ),
                      const SizedBox(width: 20),
                      Text(
                        snapshot.docs[index]['date'],
                        style:
                        TextStyle(fontSize: 15, color: Colors.pink[900]),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  Text('Notification',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w900,color: Colors.pink[900]),),
                  const Divider(color: Colors.pink,),
                  SizedBox(
                    height: 140,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Text(
                            snapshot.docs[index]['note'],
                            style:
                            TextStyle(fontSize: 15, color: Colors.blue[500]),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ))),
    );
  }
}
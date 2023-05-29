// ignore_for_file: library_private_types_in_public_api, prefer_typing_uninitialized_variables

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:student_teacher_app/Screens/studentFeeDetailScreen.dart';


class ClassFee extends StatefulWidget {
  const ClassFee(
      {required this.name, required this.fee, required this.docid, Key? key, this.uid})
      : super(key: key);
  final name;
  final fee;
  final docid;
  final uid;
  @override
  _ClassFeeState createState() => _ClassFeeState();
}

class _ClassFeeState extends State<ClassFee> {
  late int classfee = int.parse(widget.fee);
  late var classname = widget.name;

  late var uid = widget.uid;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('All students'),
        backgroundColor: Colors.blue[800],
      ),
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: StreamBuilder(
          stream: FirebaseFirestore.instance
              .collection('manager')
              .doc(uid)
              .collection('students')
              .where("class", isEqualTo: classname)
              .snapshots(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (!snapshot.hasData)
              // ignore: curly_braces_in_flow_control_structures
              return const Center(
                child: CircularProgressIndicator(),
              );

            return ListView.builder(
                itemCount: snapshot.data.docs.length,
                itemBuilder: (context, int index) {
                  return Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
                    child: CardList(snapshot: snapshot.data, index: index,classname:classname,classfee:classfee),
                  );
                });
          },
        ),
      ),
    );
  }
}

class CardList extends StatefulWidget {
  const CardList({super.key, required this.snapshot, required this.index,required this.classname,required this.classfee});
  final QuerySnapshot snapshot;
  final int index;
  final classname;
  final classfee;
  @override
  State<CardList> createState() => _CardListState();
}

class _CardListState extends State<CardList> {
  late int fee = widget.classfee;
  late int index= widget.index;
  late var cname = widget.classname;
  @override
  Widget build(BuildContext context) {
    var docid = widget.snapshot.docs[widget.index].id;
    var name = widget.snapshot.docs[widget.index]['name'];
    var subjects = widget.snapshot.docs[widget.index]['subjects'];
    var jan = widget.snapshot.docs[widget.index]['jan'];
    var feb = widget.snapshot.docs[widget.index]['feb'];
    var mar = widget.snapshot.docs[widget.index]['mar'];
    var apr = widget.snapshot.docs[widget.index]['apr'];
    var may = widget.snapshot.docs[widget.index]['may'];
    var jun = widget.snapshot.docs[widget.index]['jun'];
    var jul = widget.snapshot.docs[widget.index]['jul'];
    var aug = widget.snapshot.docs[widget.index]['aug'];
    var sep = widget.snapshot.docs[widget.index]['sep'];
    var oct = widget.snapshot.docs[widget.index]['oct'];
    var nov = widget.snapshot.docs[widget.index]['nov'];
    var dec = widget.snapshot.docs[widget.index]['dec'];
    String imageUrl=widget.snapshot.docs[widget.index]['image'];
    return GestureDetector(
      child: Card(
        elevation: 50,
        shadowColor: Colors.blue[800],
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Container(
            height: 100,
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Colors.blue, // red as border color
                ),
                borderRadius: const BorderRadius.all(Radius.circular(20))),
            child: Center(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.transparent,
                  radius: 50,
                  child: ClipOval(
                      child: SizedBox(
                        height: 80,
                        width: 80,
                        child: (widget.snapshot.docs[widget.index]['image'] != null)
                            ? Image.network(widget.snapshot.docs[widget.index]['image'] )
                            : null,
                      )
                  ),
                ),
                Text(
                  widget.snapshot.docs[widget.index]['name'],
                  style: TextStyle(fontSize: 20, color: Colors.blue[900],fontWeight: FontWeight.w900),
                ),
              ],
            ))),
      ),
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => StudentFeeDetailsScreen(name: name,fee:fee,docid:docid,cname: cname,index:index,subjects:subjects,
            imageUrl:imageUrl,
            jan:jan,feb:feb,mar:mar,apr:apr,may:may,jun:jun,jul:jul,aug:aug,sep:sep,oct:oct,nov:nov,dec:dec
            )));
      }
    );
  }
}

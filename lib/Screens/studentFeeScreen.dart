// ignore_for_file: prefer_typing_uninitialized_variables, library_private_types_in_public_api

import 'package:flutter/material.dart';



class StudentFee extends StatefulWidget {
  const StudentFee(
      { Key? key, this.image, this.name, this.jan, this.feb, this.mar, this.apr, this.may, this.jun, this.jul, this.aug, this.sep, this.oct, this.nov, this.dec, this.subjects, this.fee,})
      : super(key: key);
  final image;
  final name;
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
  final subjects;
  final fee;
  @override
  _StudentFeeState createState() => _StudentFeeState();
}

class _StudentFeeState extends State<StudentFee> {
  late var image = widget.image;
  late var sname = widget.name;
  late var janvalue=widget.jan;
  late var febvalue=widget.feb;
  late var marvalue=widget.mar;
  late var aprvalue=widget.apr;
  late var mayvalue=widget.may;
  late var junvalue=widget.jun;
  late var julvalue=widget.jul;
  late var augvalue=widget.aug;
  late var sepvalue=widget.sep;
  late var octvalue=widget.oct;
  late var novvalue=widget.nov;
  late var decvalue=widget.dec;
  late var fee=widget.fee;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Fee Deatils'),
          backgroundColor: Colors.blue[800],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child:
                Card(
                  elevation: 50,
                  shadowColor: Colors.blue[800],
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Container(
                      height: 180,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.blue, // red as border color
                          ),
                          borderRadius: const BorderRadius.all(Radius.circular(20))),
                      child: Center(
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.transparent,
                                    radius: 50,
                                    child: ClipOval(
                                        child: SizedBox(
                                          height: 80,
                                          width: 80,
                                          child:Image.network(image)

                                        )
                                    ),

                                  ),
                                  Text(
                                    '$sname',
                                    style: TextStyle(fontSize: 18, color: Colors.blue[900]),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10,),

                            ],
                          )
                      )
                  ),
                ),
              ),
              Container(
                  height: 750,
                  width: 350,
                  decoration: const BoxDecoration(
                      color: Colors.white,

                      borderRadius: BorderRadius.all(Radius.circular(2))),
                  child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text("January : ",style: TextStyle(fontSize: 20,color: Colors.blue[900],fontWeight: FontWeight.w900),),
                              Text('February : ',style: TextStyle(fontSize: 20,color: Colors.blue[900],fontWeight: FontWeight.w900)),
                              Text('March : ',style: TextStyle(fontSize: 20,color: Colors.blue[900],fontWeight: FontWeight.w900)),
                              Text('April : ',style: TextStyle(fontSize: 20,color: Colors.blue[900],fontWeight: FontWeight.w900)),
                              Text('May : ',style: TextStyle(fontSize: 20,color: Colors.blue[900],fontWeight: FontWeight.w900)),
                              Text('June : ',style: TextStyle(fontSize: 20,color: Colors.blue[900],fontWeight: FontWeight.w900)),
                              Text('July : ',style: TextStyle(fontSize: 20,color: Colors.blue[900],fontWeight: FontWeight.w900)),
                              Text('August : ',style: TextStyle(fontSize: 20,color: Colors.blue[900],fontWeight: FontWeight.w900)),
                              Text('September : ',style: TextStyle(fontSize: 20,color: Colors.blue[900],fontWeight: FontWeight.w900)),
                              Text('October : ',style: TextStyle(fontSize: 20,color: Colors.blue[900],fontWeight: FontWeight.w900)),
                              Text('November : ',style: TextStyle(fontSize: 20,color: Colors.blue[900],fontWeight: FontWeight.w900)),
                              Text('December : ',style: TextStyle(fontSize: 20,color: Colors.blue[900],fontWeight: FontWeight.w900)),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(janvalue,style: TextStyle(fontSize: 18,color: janvalue=="Payed"?Colors.pink:Colors.black87,),),
                              Text(febvalue,style: TextStyle(fontSize: 18,color: febvalue=="Payed"?Colors.pink:Colors.black87)),
                              Text(marvalue,style: TextStyle(fontSize: 18,color: marvalue=="Payed"?Colors.pink:Colors.black87)),
                              Text(aprvalue,style: TextStyle(fontSize: 18,color: aprvalue=="Payed"?Colors.pink:Colors.black87)),
                              Text(mayvalue,style: TextStyle(fontSize: 18,color: mayvalue=="Payed"?Colors.pink:Colors.black87)),
                              Text(junvalue,style: TextStyle(fontSize: 18,color: junvalue=="Payed"?Colors.pink:Colors.black87)),
                              Text(julvalue,style: TextStyle(fontSize: 18,color: julvalue=="Payed"?Colors.pink:Colors.black87)),
                              Text(augvalue,style: TextStyle(fontSize: 18,color: augvalue=="Payed"?Colors.pink:Colors.black87)),
                              Text(sepvalue,style: TextStyle(fontSize: 18,color: sepvalue=="Payed"?Colors.pink:Colors.black87)),
                              Text(octvalue,style: TextStyle(fontSize: 18,color: octvalue=="Payed"?Colors.pink:Colors.black87)),
                              Text(novvalue,style: TextStyle(fontSize: 18,color: novvalue=="Payed"?Colors.pink:Colors.black87)),
                              Text(decvalue,style: TextStyle(fontSize: 18,color: decvalue=="Payed"?Colors.pink:Colors.black87)),
                            ],
                          ),
                        ],
                      )
                  )
              ),
              const SizedBox(
                height: 30,
              ),
              const SizedBox(
                height: 40,
              ),
            ],
          ),
        )
    );
  }
}



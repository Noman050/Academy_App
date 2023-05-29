// ignore_for_file: library_private_types_in_public_api, prefer_typing_uninitialized_variables
import 'package:flutter/material.dart';
import 'package:student_teacher_app/Screens/studentContinueScreen.dart';

class StudentLoginScreen extends StatefulWidget {
  const StudentLoginScreen({Key? key, this.uid, this.name
  }) :super(key: key);
  final uid;
  final name;
  @override
  _StudentLoginScreenState createState() => _StudentLoginScreenState();
}

class _StudentLoginScreenState extends State<StudentLoginScreen> {

  late var uid = widget.uid;
  late var name = widget.name;


  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  final _form = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login As Student'),
        centerTitle: true,
        backgroundColor: Colors.blue[800],
      ),
      body: SafeArea(
        child:  SingleChildScrollView(
          child: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("Assets/images/loginnn.jpg"),
                    fit: BoxFit.cover
                )
            ),

            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 60.0,
                    backgroundImage: AssetImage('Assets/images/loginn.png'),
                  ),
                ),


                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Card(

                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    elevation: 50,
                    shadowColor: Colors.blue[800],
                    color: Colors.transparent,
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child:

                      Form(
                        key: _form,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [

                            const SizedBox(
                              height: 5,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: InkWell(
                                onTap: (){
                                  // Navigator.push(context,
                                  //     MaterialPageRoute(builder: (context) => teacherlogin()));
                                },
                                child: Material(
                                  color: Colors.white,
                                  elevation: 10.0,
                                  borderRadius: BorderRadius.circular(25.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: <Widget>[
                                      Center(
                                        child: Text(
                                           name,
                                          style: const TextStyle(
                                            fontSize: 24.0,
                                            color: Colors.pinkAccent,

                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text("Enter Password",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500,color: Colors.yellow, letterSpacing: 2),),
                            ),
                            TextFormField(
                              controller: password,
                              validator: (String? value) {
                                if (value != null && value.isEmpty) {
                                  return "Password is Required";
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                  fillColor: Colors.white,
                                  filled: true,
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(25),
                                      borderSide: const BorderSide(
                                          width: 3,
                                          color: Colors.white
                                      )
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(25),
                                      borderSide: const BorderSide(
                                          width: 3,
                                          color: Colors.white
                                      )
                                  ),
                                  hintText: "e.g. nomi123&&@"
                              ),
                            ),
                            const SizedBox(
                              height: 50,
                            ),
                            SizedBox(
                                height:60,
                                width:150,
                                child:
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(shape: const StadiumBorder()),
                                  child: const Text('Login',style: TextStyle(fontSize: 20),),
                                  onPressed:(){
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context) => StudentContinueScreen(uid:uid,name:name,password: password.text)));
                                  },
                                )
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            const Center(
                              child: Text(
                                "Developed by: Noman Ali",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.yellow, letterSpacing: 2, fontStyle: FontStyle.italic),
                              ),
                            )
                          ],
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
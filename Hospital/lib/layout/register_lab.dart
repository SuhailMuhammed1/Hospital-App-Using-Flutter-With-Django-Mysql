import 'package:flutter/material.dart';
import 'package:hospital/layout/login.dart';
import 'package:http/http.dart';

class reg_lab extends StatefulWidget {
  const reg_lab({Key? key}) : super(key: key);

  @override
  State<reg_lab> createState() => _reg_labState();
}

class _reg_labState extends State<reg_lab> {
  late TextEditingController name,address,phone,email,password;
  @override

  void initState(){
    name=TextEditingController();
    address=TextEditingController();
    // gender=TextEditingController();
    phone=TextEditingController();
    email=TextEditingController();
    password=TextEditingController();
    // area=TextEditingController();

    super.initState();

  }
  void postdata() async {
    String url = login.url+"lab/labreg/";
    var resp = await post(url, body: {
      "name": name.text,
      // "company name": name.text,
      // "address": age.text,
      // "dob": gender.text,
      "phone": phone.text,
      "mail": email.text,
      "address": address.text,
      "password": password.text,

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: new BoxDecoration(
          borderRadius: new BorderRadius.horizontal(),
          color: Colors.indigo,
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 20),
                // Container(
                //   // alignment: ,
                //   child: CircleAvatar(
                //     backgroundColor: Colors.white,
                //     radius: 40.0,
                //     backgroundImage: AssetImage('assets/b2.jpg'),
                //     // backgroundImage: ,
                //   ),
                // ),
                Container(
                  child: Text("Register",style: new TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),),
                ),
                SizedBox(height: 10),
                Container(
                  decoration: new BoxDecoration(
                    borderRadius: new BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.fromLTRB(30, 30, 30, 0),
                        child: TextFormField(
                          controller: name,
                          decoration: InputDecoration(
                            labelText: "Name",
                            prefixIcon: Icon(Icons.people),
                            // border: OutlineInputBorder(
                            //   borderRadius: BorderRadius.vertical(),
                            // )
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(30, 30, 30, 0),
                        child: TextFormField(
                          controller: address,
                          decoration: InputDecoration(
                            labelText: "Address",
                            prefixIcon: Icon(Icons.location_city),
                            // border: OutlineInputBorder(
                            //   borderRadius: BorderRadius.vertical(),
                            // )
                          ),
                        ),
                      ),
                      // Container(
                      //   padding: EdgeInsets.fromLTRB(70, 0, 30, 10), //3rd
                      //
                      //   // width: 350.0,
                      //   // decoration: BoxDecoration(
                      //   //     borderRadius: BorderRadius.circular(10),
                      //   //     border: Border.all(color: Colors.black)
                      //   // ),
                      //
                      //   child: Column(
                      //     children: [
                      //       Row(
                      //
                      //         children: [
                      //           Text("Gender"),
                      //           Radio(
                      //               value: 1,
                      //               groupValue: _value,
                      //               onChanged: (value) {
                      //                 setState(() {
                      //                   _value = 1;
                      //                 });
                      //               }),
                      //           Text("Male"),
                      //           Radio(
                      //             value: 2,
                      //             groupValue: _value,
                      //             onChanged: (value) {
                      //               setState(() {
                      //                 _value = 2;
                      //               });
                      //             },
                      //           ),
                      //           Text("Female"),
                      //         ],
                      //       )
                      //     ],
                      //   ), //1st
                      // ),
                      // Container(
                      //   padding: EdgeInsets.fromLTRB(30, 30, 30, 0),
                      //   child: TextFormField(
                      //     decoration: InputDecoration(
                      //       labelText: "Department",
                      //       prefixIcon: Icon(Icons.dehaze),
                      //       // border: OutlineInputBorder(
                      //       //   borderRadius: BorderRadius.vertical(),
                      //       // )
                      //     ),
                      //   ),
                      // ),
                      Container(
                        padding: EdgeInsets.fromLTRB(30, 30, 30, 0),
                        child: TextFormField(
                          controller: phone,
                          decoration: InputDecoration(
                            labelText: "Phone",
                            prefixIcon: Icon(Icons.phone_android),
                            // border: OutlineInputBorder(
                            //   borderRadius: BorderRadius.vertical(),
                            // )
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(30, 30, 30, 0),
                        child: TextFormField(
                          controller: email,
                          decoration: InputDecoration(
                            labelText: "Email",
                            prefixIcon: Icon(Icons.mail),
                            // border: OutlineInputBorder(
                            //   borderRadius: BorderRadius.vertical(),
                            // )
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(30, 30, 30, 30),
                        child: TextFormField(
                          controller: password,
                          decoration: InputDecoration(
                            labelText: "Password",
                            prefixIcon: Icon(Icons.password),
                            // border: OutlineInputBorder(
                            //   borderRadius: BorderRadius.vertical(),
                            // )
                          ),
                        ),
                      ),
                      // Container(
                      //   width: 200,
                      //   // color: Colors.cyan,
                      //   padding: EdgeInsets.fromLTRB(30, 0, 30, 30),
                      //   child: ElevatedButton
                      //     (onPressed: () {
                      //     // postdata();
                      //     // Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => login()));
                      //   },
                      //     style: ElevatedButton.styleFrom(
                      //       primary: Colors.cyan, // Background color
                      //     ),
                      //     child: Text("Login"),
                      //   ),
                      // ),
                      SizedBox(height: 10),
                      Container(
                        width: 200,
                        // color: Colors.cyan,
                        padding: EdgeInsets.fromLTRB(30, 0, 30, 30),
                        child: ElevatedButton
                          (onPressed: () {
                          postdata();
                           Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => login()));
                          showDialog(context: context, builder: (context) => AlertDialog(
                            content: Text(
                              "You Have Successfully Registered",
                              style: TextStyle(fontSize: 15.0),),),);
                        },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.indigo, // Background color
                          ),
                          child: Text("Register"),
                        ),
                      ),


                    ],
                  ),
                )

              ],

            ),
          ),
        ),
      ),



    );
  }
}
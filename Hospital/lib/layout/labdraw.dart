import 'package:flutter/material.dart';
import 'package:hospital/layout/add_patient_lab_details.dart';
import 'package:hospital/layout/doctor_list_admin.dart';
import 'package:hospital/layout/lab.dart';
import 'package:hospital/layout/patient_list_admin.dart';
import 'package:hospital/layout/post_notification.dart';
import 'package:hospital/layout/view_noti_lab.dart';

import 'login.dart';

class labdraw extends StatefulWidget {
  const labdraw({Key? key}) : super(key: key);

  @override
  State<labdraw> createState() => _labdrawState();
}

class _labdrawState extends State<labdraw> {
  Future<bool> _onBackPressed() async {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Logout'),
          content: Text('Do you want to logout ?'),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(false),
              child: Text('No'),
            ),
            TextButton(
              onPressed: () => Navigator.of(context).pop(true),
              child: Text('Yes'),
            ),
          ],
        );
      },
    ).then((value) => value ?? false);
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: _onBackPressed,
        child: Scaffold(
        appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.indigo,
        title: Row(
        children: [
        Image.asset(
        'assets/home.png',
        width: 20,
        height: 20,
    ),
    SizedBox(width: 8),
    Text(
    'PHC MOOKKANNOOR',
    style: TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    ),
    ),
    ],
    ),
    actions:[ Padding(
        padding: EdgeInsets.only(right: 10.0),
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) =>
                    vw_noti_lab()));
          },
          child: Icon(
              Icons.circle_notifications
          ),
        )
    ),
      IconButton(
    icon: Icon(Icons.logout),
    onPressed: () {
    showDialog(
    context: context,
    builder: (BuildContext context) => AlertDialog(
    title: Text('Logout'),
    content: Text('Do you want to logout?'),
    actions: [
    TextButton(
    onPressed: () => Navigator.of(context).pop(),
    child: Text('No'),
    ),
    TextButton(
    onPressed: () {
    Navigator.of(context).pop();
    Navigator.push(
    context,
    MaterialPageRoute(builder: (_) => login()),
    );
    },
    child: Text('Yes'),
    ),
    ],
    ),
    );
    },
    ),
    ],
    ),
    body: Container(
        decoration: new BoxDecoration(
          borderRadius: new BorderRadius.horizontal(),
          color: Colors.indigo,
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 50,
                ),
                Container(
                  alignment: Alignment.topCenter,
                  padding: EdgeInsets.all(10.0),
                  // alignment: ,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 50.0,
                    backgroundImage: AssetImage('assets/hospital.png'),
                    // backgroundImage: ,
                  ),
                ),
                Container(
                  child: Text(
                    "Lab",
                    style: new TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                SizedBox(height: 10),
                Center(
                  child: Container(
                    alignment: Alignment.topCenter,
                    // decoration: new BoxDecoration(
                    //   borderRadius: new BorderRadius.circular(20),
                    //   color: Colors.white,
                    // ),
                    child: Center(
                      child: Column(
                        children: [
                          Container(
                            width: 70,
                            // decoration: new BoxDecoration(
                            //   borderRadius: new BorderRadius.vertical(),
                            //   color: Colors.black38,
                            // ),
                            // child: GestureDetector(
                            //   onTap: () {
                            //     Navigator.of(context).push(MaterialPageRoute(
                            //         builder: (BuildContext context) =>
                            //             drlist_adm()));
                            //   },
                            //   child: Card(
                            //     child: Container(
                            //       child: CircleAvatar(
                            //         backgroundColor: Colors.white,
                            //         radius: 50.0,
                            //         backgroundImage: AssetImage('assets/dr.jpeg'),
                            //         // backgroundImage: ,
                            //       ),
                            //     ),
                            //   ),
                            // ),
                          ),
                          // Container(
                          //   // decoration: new BoxDecoration(
                          //   //   borderRadius: new BorderRadius.vertical(),
                          //   //   color: Colors.black38,
                          //   // ),
                          //   child: GestureDetector(
                          //     onTap: () {
                          //       Navigator.of(context).push(MaterialPageRoute(
                          //           builder: (BuildContext context) =>
                          //               phcnw()));
                          //     },
                          //     child: Card(
                          //       child: Container(
                          //         child: CircleAvatar(
                          //           backgroundColor: Colors.white,
                          //           radius: 50.0,
                          //           backgroundImage: AssetImage('assets/lab.png'),
                          //           // backgroundImage: ,
                          //         ),
                          //       ),
                          //     ),
                          //   ),
                          // ),
                          Container(
                            height: 355,
                            width: 500,
                            decoration: new BoxDecoration(
                              borderRadius: new BorderRadius.circular(15),
                              color: Colors.white,
                            ),
                            child: Column(
                              children: [
                                SizedBox(height: 60),
                                // Container(
                                //   child: GestureDetector(
                                //     onTap: () {
                                //       Navigator.of(context).push(MaterialPageRoute(
                                //           builder: (BuildContext context) =>
                                //               lab_details_add()));
                                //     },
                                //     child: Card(
                                //       child: Container(
                                //         child: CircleAvatar(
                                //           backgroundColor: Colors.black87,
                                //           radius: 50.0,
                                //           backgroundImage:
                                //           AssetImage('assets/labdetails.png'),
                                //           // backgroundImage: ,
                                //         ),
                                //       ),
                                //
                                //     ),
                                //   ),
                                // ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (BuildContext
                                        context) =>
                                            phcnw(),
                                      ),
                                    );
                                  },
                                  child: Card(
                                    child: Column(
                                      children: [
                                        Container(
                                          child: CircleAvatar(
                                            backgroundColor:
                                            Colors.white,
                                            radius: 50.0,
                                            backgroundImage: AssetImage(
                                                'assets/labdetails.png'),
                                          ),
                                        ),
                                        SizedBox(height: 10),
                                        Text('Add Lab Report',
                                            style: new TextStyle( fontWeight: FontWeight.bold)
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          // Container(
                          //   child: GestureDetector(
                          //     onTap: () {
                          //       Navigator.of(context).push(MaterialPageRoute(
                          //           builder: (BuildContext context) =>
                          //               post_notification()));
                          //     },
                          //     child: Card(
                          //       child: Container(
                          //         child: CircleAvatar(
                          //           backgroundColor: Colors.white,
                          //           radius: 50.0,
                          //           backgroundImage: AssetImage('assets/noti2.png'),
                          //           // backgroundImage: ,
                          //         ),
                          //       ),
                          //     ),
                          //   ),
                          // ),
                        ],
                      ),
                    ),
                    // child: Row(
                    //   children: [
                    //     GestureDetector(
                    //       onTap: () {
                    //         Navigator.of(context).push(MaterialPageRoute(
                    //             builder: (BuildContext context) => drlist_adm()
                    //         ));
                    //       },
                    //       child: Container(
                    //         child: CircleAvatar(
                    //           backgroundColor: Colors.white,
                    //           radius: 50.0,
                    //           backgroundImage: AssetImage('assets/dr.jpeg'),
                    //           // backgroundImage: ,
                    //         ),
                    //       ),
                    //     ),
                    //
                    //
                    //   ],
                    // ),
                  ),
                ),
                // Container(
                //   child: GridView.count(crossAxisCount: 3,
                //   children: [
                //     Container(color: Colors.white,)
                //     // GestureDetector(
                //     //       onTap: () {
                //     //         Navigator.of(context).push(MaterialPageRoute(
                //     //             builder: (BuildContext context) => drlist_adm()
                //     //         ));
                //     //       },
                //     //       child: Container(
                //     //         child: CircleAvatar(
                //     //           backgroundColor: Colors.white,
                //     //           radius: 50.0,
                //     //           backgroundImage: AssetImage('assets/dr.jpeg'),
                //     //           // backgroundImage: ,
                //     //         ),
                //     //       ),
                //     //     ),
                //   ],),
                // )
              ],
            ),
          ),
        ),
      ),
        ),
    );
  }
}

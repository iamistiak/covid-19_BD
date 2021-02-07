import 'package:coronavirus/bangladesh_today_information.dart';
import 'package:coronavirus/country_list.dart';
import 'package:coronavirus/total_information.dart';
import 'package:flutter/material.dart';

import 'bangladesh_total_information.dart';

class MyHomePage extends StatelessWidget {
  final globalKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        key: globalKey,
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text('করোনা ভাইরাস'),
          leading: IconButton(
            onPressed: () {
              globalKey.currentState.openDrawer();
            },
            icon: Icon(
              Icons.menu,
              color: Colors.white,
            ),

          ),
          actions: [
            IconButton(
              icon: Icon(Icons.arrow_back_ios,color: Colors.white,),
            ),
          ],
        ),
        drawer: Drawer(
          elevation: 1,
          child: Container(
            //color: Colors.transparent,
            child: Center(
                child: Text(
                  "Istiak Jisan",
                  style: TextStyle(fontSize: 20),
                )),
          ),
        ),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                Column(
                 children: [
                   SizedBox(
                     height: 10,
                   ),
                   Container(
                     height: 60,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(12),
                     ),
                     child: FlatButton(
                       onPressed: () {
                         Navigator.of(context).push(MaterialPageRoute(builder: (context)=> TotalInformation()));
                       },
                       child: Container(
                         height: 50,
                         //width: MediaQuery.of(context).size.width * 0.8,
                         margin: EdgeInsets.symmetric(horizontal: 30),
                         decoration: BoxDecoration(
                           color: Colors.redAccent,
                           borderRadius: BorderRadius.circular(12),
                         ),
                         child: Center(
                           child: Text(
                             "Global Information",
                             style: TextStyle(
                                 color: Colors.white,
                                 fontSize: 15,
                                 fontWeight: FontWeight.bold),
                           ),
                         ),
                       ),
                     ),
                   ),

                   SizedBox(
                     height: 10,
                   ),
                   Container(
                     height: 60,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(12),
                     ),
                     child: FlatButton(
                       onPressed: () {
                         Navigator.of(context).push(MaterialPageRoute(builder: (context)=> BangladeshTotalInformation()));
                       },
                       child: Container(
                         height: 50,
                         //width: MediaQuery.of(context).size.width * 0.8,
                         margin: EdgeInsets.symmetric(horizontal: 30),
                         decoration: BoxDecoration(
                           color: Colors.green,
                           borderRadius: BorderRadius.circular(12),
                         ),
                         child: Center(
                           child: Text(
                             "সর্বমোট তথ্য ",
                             style: TextStyle(
                                 color: Colors.white,
                                 fontSize: 15,
                                 fontWeight: FontWeight.bold),
                           ),
                         ),
                       ),
                     ),
                   ),

                   SizedBox(
                     height: 10,
                   ),
                   Container(
                     height: 60,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(12),
                     ),
                     child: FlatButton(
                       onPressed: () {
                         Navigator.of(context).push(MaterialPageRoute(builder: (context)=> BangladeshTodayInformation()));
                       },
                       child: Container(
                         height: 50,
                         //width: MediaQuery.of(context).size.width * 0.8,
                         margin: EdgeInsets.symmetric(horizontal: 30),
                         decoration: BoxDecoration(
                           color: Colors.redAccent,
                           borderRadius: BorderRadius.circular(12),
                         ),
                         child: Center(
                           child: Text(
                             "আজকের তথ্য (বিডি)",
                             style: TextStyle(
                                 color: Colors.white,
                                 fontSize: 15,
                                 fontWeight: FontWeight.bold),
                           ),
                         ),
                       ),
                     ),
                   ),

                   SizedBox(
                     height: 10,
                   ),
                   Container(
                     height: 60,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(12),
                     ),
                     child: FlatButton(
                       onPressed: () {
                         Navigator.of(context).push(MaterialPageRoute(builder: (context)=> CountryList()));
                       },
                       child: Container(
                         height: 50,
                         //width: MediaQuery.of(context).size.width * 0.8,
                         margin: EdgeInsets.symmetric(horizontal: 30),
                         decoration: BoxDecoration(
                           color: Colors.green,
                           borderRadius: BorderRadius.circular(12),
                         ),
                         child: Center(
                           child: Text(
                             "বিভিন্ন দেশের আপডেট",
                             style: TextStyle(
                                 color: Colors.white,
                                 fontSize: 15,
                                 fontWeight: FontWeight.bold),
                           ),
                         ),
                       ),
                     ),
                   ),
                 ],
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(30, 0, 167, 157),
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              spreadRadius: 1,
                              blurRadius: 1,
                              offset: Offset(3, 3),
                            ),
                          ],
                        ),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 0, 167, 157),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                height: 40,
                                width: 120,
                                child: Center(
                                    child: Text(
                                      "আইইডিসিআর",
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    )),
                              ),
                              Text(
                                "১০৬৫৫",
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 255, 255, 255),
                                ),
                              ),
                              SizedBox(
                                height: 0,
                              ),
                            ]),
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(30, 0, 167, 157),
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              spreadRadius: 1,
                              blurRadius: 1,
                              offset: Offset(3, 3),
                            ),
                          ],
                        ),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 0, 167, 157),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                height: 40,
                                width: 120,
                                child: Center(
                                    child: Text(
                                      "জাতীয় সেন্টার",
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    )),
                              ),
                              Text(
                                "৩৩৩",
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 255, 255, 255),
                                ),
                              ),
                              SizedBox(
                                height: 0,
                              ),
                            ]),
                      ),
                    ],
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

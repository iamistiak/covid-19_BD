import 'package:coronavirus/provider/bd_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BangladeshTodayInformation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Provider.of<BdProvider>(context, listen: false).getData();
    return Consumer<BdProvider>(builder: (context, provider, child) {
      return provider.bdModel != null
          ? MaterialApp(
              debugShowCheckedModeBanner: false,
              home: Scaffold(
                appBar: AppBar(
                  title: Text("আজকের আপডেট"),
                  leading: IconButton(
                    icon: Icon(Icons.arrow_back, color: Colors.white,),
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                  centerTitle: true,
                  backgroundColor: Colors.green,
                ),
                body: GridView.custom(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  childrenDelegate: SliverChildListDelegate(
                    [
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
                                  "নতুন আক্রান্ত",
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                )),
                              ),
                              Text(
                                "${provider.bdModel.todayCases}",
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 0, 167, 157),
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
                          color: Color.fromARGB(30, 237, 28, 36),
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
                                  color: Color.fromARGB(255, 237, 28, 36),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                height: 40,
                                width: 120,
                                child: Center(
                                    child: Text(
                                  "মৃত্যু",
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                )),
                              ),
                              Text(
                                "${provider.bdModel.todayDeaths}",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold,color: Color.fromARGB(255, 237, 28, 36),),
                              ),
                              SizedBox(
                                height: 0,
                              ),
                            ]),
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(30, 141, 198, 63),
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
                                  color: Color.fromARGB(255, 141, 198, 63),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                height: 40,
                                width: 120,
                                child: Center(
                                    child: Text(
                                  "সুস্থ",
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                )),
                              ),
                              Text(
                                "${provider.bdModel.todayRecovered}",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold,color: Color.fromARGB(255, 141, 198, 63),),
                              ),
                              SizedBox(
                                height: 0,
                              ),
                            ]),
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(30, 39, 170, 255),
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
                                  color: Color.fromARGB(255, 39, 170, 255),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                height: 40,
                                width: 120,
                                child: Center(
                                    child: Text(
                                  "পরীক্ষা",
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                )),
                              ),
                              Text(
                                "মোট = ${provider.bdModel.tests}",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Color.fromARGB(255, 39, 170, 255),
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
              ),
            )
          : Center(
              child: CircularProgressIndicator(),
            );
    });
  }
}

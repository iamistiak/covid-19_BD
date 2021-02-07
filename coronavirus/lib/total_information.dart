import 'package:coronavirus/provider/global_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TotalInformation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Provider.of<GlobalProvider>(context, listen: false).getData();
    return Consumer<GlobalProvider>(builder: (context, provider, child) {
      return provider.globalModel != null
          ? MaterialApp(
        debugShowCheckedModeBanner: false,
            home: Scaffold(
              appBar: AppBar(leading: IconButton(
                icon: Icon(Icons.arrow_back, color: Colors.white,),
                onPressed: () => Navigator.of(context).pop(),
              ), title: Text("Global Information"),),
              body: GridView.custom(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                childrenDelegate: SliverChildListDelegate(
                  [
                    Container(
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white,
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
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("${provider.globalModel.global.totalDeaths}",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                            Text(
                              "Total Death",
                              style: TextStyle(fontWeight: FontWeight.normal, fontSize: 18),
                            ),
                          ]),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white,
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
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("${provider.globalModel.global.newDeaths}",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                            Text(
                              "New Death",
                              style: TextStyle(fontWeight: FontWeight.normal, fontSize: 18),
                            ),
                          ]),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white,
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
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("${provider.globalModel.global.totalRecovered}",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                            Text(
                              "Total Recovered",
                              style: TextStyle(fontWeight: FontWeight.normal, fontSize: 18),
                            ),
                          ]),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white,
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
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("${provider.globalModel.global.newRecovered}",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                            Text(
                              "New Recovered",
                              style: TextStyle(fontWeight: FontWeight.normal, fontSize: 18),
                            ),
                          ]),
                    ),
                  ],
                ),
              )
            ),
          )
          : Center(
              child: CircularProgressIndicator(),
            );
    });
  }
}
//${provider.globalModel.global.newDeaths


import 'package:coronavirus/provider/global_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CountryList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Provider.of<GlobalProvider>(context, listen: false).getData();
    return Scaffold(
      appBar: AppBar(title: Text("Country Name"),),
      body: Consumer<GlobalProvider>(builder: (context, provider, child) {
        return provider.globalModel != null
            ? ListView.builder(
          itemBuilder: (context,index){
            return ListTile(
              title: Text("${provider.globalModel.countries[index].country}"),
              subtitle: Text("${provider.globalModel.countries[index].countryCode}"),
            );
          } ,
          itemCount: provider.globalModel.countries.length,)
            : Center(
          child: CircularProgressIndicator(),
        );
      }),
    );
  }
}

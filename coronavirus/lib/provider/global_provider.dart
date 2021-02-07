import 'package:coronavirus/model/global_model.dart';
import 'package:coronavirus/utils/covid_utils.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

class GlobalProvider extends ChangeNotifier {
  GlobalModel _globalCase;
  GlobalModel get globalModel => _globalCase;

  void getData() async {
    Response _response = await Dio().get(BASE_URL + END_URL);
    if (_response.statusCode == 200) {
      _globalCase = GlobalModel.fromJson(_response.data);
      notifyListeners();
    }
  }
}

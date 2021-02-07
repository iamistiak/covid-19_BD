import 'package:coronavirus/model/bd_model.dart';
import 'package:coronavirus/utils/covid_utils.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

class BdProvider extends ChangeNotifier {
  BdModel _bdModel;
  BdModel get bdModel => _bdModel;

  void getData() async {
    Response _response = await Dio().get(BASE_URL_NINJA + END_URL_NINJA);
    if (_response.statusCode == 200) {
      _bdModel = BdModel.fromJson(_response.data);
      notifyListeners();
    }
  }
}

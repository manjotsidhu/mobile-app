import 'package:mobile_app/constants.dart';
import 'package:mobile_app/models/failure_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class CountryInstitueAPI {
  final String url;
  bool flag = true;
  List<dynamic> data;

  CountryInstitueAPI({this.url});

  Future<List<String>> getSuggestions(String query) async {
    try {
      if (flag) {
        final response = await http.get(url);
        if (response.statusCode != 200) {
          throw Failure(Constants.GENERIC_FAILURE);
        }
        data = json.decode(response.body) as List<dynamic>;
        flag = false;
      }

      var helper = List<String>();

      for (var i = 0; i < data.length; i++) {
        helper.add(data[i]['name']);
      }
      var matches = List<String>();

      matches.addAll(helper);
      matches.retainWhere((s) => s.toLowerCase().contains(query.toLowerCase()));
      return matches;
    } on Exception {
      throw Failure(Constants.GENERIC_FAILURE);
    } catch (e) {
      throw Failure(Constants.GENERIC_FAILURE);
    }
  }
}

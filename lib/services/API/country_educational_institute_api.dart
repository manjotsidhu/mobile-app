import 'package:mobile_app/constants.dart';
import 'package:mobile_app/models/failure_model.dart';
import 'package:mobile_app/utils/api_utils.dart';

abstract class CountryInstitueAPI {
  Future<List<String>> getSuggestions(String query, String url);
}

class HttpCountryInstitueAPI implements CountryInstitueAPI {
  bool _countryFlag = true;
  bool _instituteFlag = true;
  List<dynamic> data;

  @override
  Future<List<String>> getSuggestions(String query, String value) async {
    var url = (value == Constants.COUNTRY)
        ? 'https://restcountries.eu/rest/v2/all'
        : 'http://universities.hipolabs.com/search?';

    var headers = {'Content-Type': 'application/json'};
    try {
      if ((_countryFlag && value == Constants.COUNTRY) ||
          (_instituteFlag && value == Constants.EDUCATIONAL_INSTITUTE)) {
        ApiUtils.addTokenToHeaders(headers);
        data = await ApiUtils.get(
          url,
          headers: headers,
        );
        _countryFlag = (value == Constants.COUNTRY) ? false : true;
        _instituteFlag =
            (value == Constants.EDUCATIONAL_INSTITUTE) ? false : true;
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

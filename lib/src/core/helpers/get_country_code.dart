import 'dart:convert';
import 'package:http/http.dart' as http;

class GetCountryCode {
  Future<bool> get() async {
    try {
      final response = await http.get(Uri.parse('http://ip-api.com/json'));

      if (response.body.isNotEmpty) {
        final countryCode = json.decode(response.body)['countryCode'].toString();
        if (countryCode == 'BR') {
          return false;
        } else {
          return true;
        }
      }
      return true;
    } catch (e) {
      return true;
    }
  }
}

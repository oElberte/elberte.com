import 'dart:convert';
import 'package:http/http.dart' as http;

class GetCountryCode {
  Future<bool> get() async {
    try {
      final response = await http.get(Uri.parse('https://ipapi.co/json'));

      if (response.body.isNotEmpty) {
        final country = json.decode(response.body)['country'].toString();
        if (country == 'BR') {
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

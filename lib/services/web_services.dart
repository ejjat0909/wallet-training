import 'dart:convert';


import 'package:example/constant.dart';
import 'package:example/helpers/secure_shared_preferences.dart';
import 'package:example/services/resource.dart';
import 'package:http/http.dart' as http;

class Webservice {
  // API request using POST method
  static Future post(Resource resource) async {
    // To authenticate user
    String? token = await SecureSharedPreferences.read(key: "access_token");

    // Create Uri from the url define in resource file. Then add the query parameters
    Uri uri = Uri.parse(rootUrl + resource.url)
        .replace(queryParameters: resource.params);

    http.Response response = await http.post(
      uri,
      body: jsonEncode(resource.data),
      headers: {
        // To only accept json response from server
        'Accept': 'application/json',
        // User Authorization
        'Authorization': 'Bearer $token',
        // To help laravel api recognize the body type of the request
        "content-type": "application/json"
      },
    );

    return resource.parse(response);
  }

  // API request using GET method
  static Future get(Resource resource) async {
    // To authenticate user
    String? token = await SecureSharedPreferences.read(key: "access_token");

    // Create Uri from the url define in resource file. Then add the query parameters
    Uri uri = Uri.parse(rootUrl + resource.url)
        .replace(queryParameters: resource.params);

    http.Response response = await http.get(
      uri,
      headers: {
        //To only accept json response from server
        'Accept': 'application/json',
        //User Authorization
        'Authorization': 'Bearer $token',
      },
    );

    return resource.parse(response);
  }

  // API request using DELETE method
  static Future delete(Resource resource) async {
    // To authenticate user
    String? token = await SecureSharedPreferences.read(key: "access_token");

    Uri uri = Uri.parse(rootUrl + resource.url)
        .replace(queryParameters: resource.params);

    http.Response response = await http.delete(
      uri,
      headers: {
        //To only accept json response from server
        'Accept': 'application/json',
        //User Authorization
        'Authorization': 'Bearer $token',
      },
    );

    return resource.parse(response);
  }
}

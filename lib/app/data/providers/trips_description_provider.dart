import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../models/trips_description_model.dart';

class TripsDescriptionProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.defaultDecoder = (map) {
      if (map is Map<String, dynamic>) return TripsDescription.fromJson(map);
      if (map is List)
        return map.map((item) => TripsDescription.fromJson(item)).toList();
    };
    httpClient.baseUrl = 'YOUR-API-URL';
  }

  Future<TripsDescription?> getTripsDescription(int id) async {
    final response = await get('tripsdescription/$id');
    return response.body;
  }

  Future<List<dynamic>?> readJson() async {
    final String response =
        await rootBundle.loadString('assets/models/tripsDescription.json');
    final data = await json.decode(response);
    return data;
  }

  Future<Response<TripsDescription>> postTripsDescription(
          TripsDescription tripsdescription) async =>
      await post('tripsdescription', tripsdescription);
  Future<Response> deleteTripsDescription(int id) async =>
      await delete('tripsdescription/$id');
}

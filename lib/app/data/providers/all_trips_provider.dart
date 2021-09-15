import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:test_carshering/widgets/trip_block.dart';

import '../models/all_trips_model.dart';

class AllTripsProvider extends GetConnect {
  List<dynamic>? allTrips = [];
  List<dynamic> allFilteredTrips = [];
  Widget? filteredWidgetTrips;
  String? filterDate;

  @override
  void onInit() {
    httpClient.defaultDecoder = (map) {
      if (map is Map<String, dynamic>) return AllTrips.fromJson(map);
      if (map is List)
        return map.map((item) => AllTrips.fromJson(item)).toList();
    };
    httpClient.baseUrl = 'YOUR-API-URL';
  }

  Future<AllTrips?> getAllTrips(int id) async {
    final response = await get('alltrips/$id');
    return response.body;
  }

  Future<List<dynamic>?> readJson() async {
    final String response =
        await rootBundle.loadString('assets/models/allTrips.json');
    final data = await json.decode(response);
    allTrips = data;
    return data;
  }

  void createFilteredTrips() {
    allTrips!.forEach((element) {
      if (element['datestart'].substring(0, element['datestart'].length - 6) ==
          filterDate) {
        allFilteredTrips.add(element);
      }
    });
    if (allFilteredTrips.isNotEmpty) {
      filteredWidgetTrips = ListView.builder(
        itemCount: allFilteredTrips.length,
        itemBuilder: (context, int index) {
          return Column(
            children: [
              TripBlock(
                itemIndex: index,
                auto: allFilteredTrips[index]['auto'],
                autoNumber: allFilteredTrips[index]['autoNumber'],
                dateEnd: DateFormat.yMMMd('ru_RU')
                    .add_jm()
                    .format(DateTime.parse(allFilteredTrips[index]['dateend'])),
                dateStart: DateFormat.yMMMd('ru_RU').add_jm().format(
                    DateTime.parse(allFilteredTrips[index]['datestart'])),
                fullTime: allFilteredTrips[index]['fullTime'],
                cost: allFilteredTrips[index]['cost'],
                mileage: allFilteredTrips[index]['mileage'],
              ),
              SizedBox(
                height: 15,
              ),
            ],
          );
        },
      );
    } else {
      filteredWidgetTrips = Center(
        child: Text("Поездок нет"),
      );
    }
  }

  Future<Response<AllTrips>> postAllTrips(AllTrips alltrips) async =>
      await post('alltrips', alltrips);
  Future<Response> deleteAllTrips(int id) async => await delete('alltrips/$id');
}

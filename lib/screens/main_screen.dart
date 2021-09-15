import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:test_carshering/app/controllers/trips_controller.dart';
import 'package:test_carshering/widgets/app_bars/main_app_bar.dart';
import 'package:test_carshering/widgets/trip_block.dart';

class MainScreen extends GetView<TripsController> {
  @override
  Widget build(BuildContext context) {
    final TripsController c = Get.put(TripsController());
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      appBar: MainAppBar(),
      body: controller.obx(
        (data) => ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, int index) {
            return Column(
              children: [
                TripBlock(
                  itemIndex: index,
                  auto: data[index]['auto'],
                  autoNumber: data[index]['autoNumber'],
                  dateEnd: DateFormat.yMMMd('ru_RU')
                      .add_jm()
                      .format(DateTime.parse(data[index]['dateend'])),
                  dateStart: DateFormat.yMMMd('ru_RU')
                      .add_jm()
                      .format(DateTime.parse(data[index]['datestart'])),
                  fullTime: data[index]['fullTime'],
                  cost: data[index]['cost'],
                  mileage: data[index]['mileage'],
                ),
                SizedBox(
                  height: 15,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

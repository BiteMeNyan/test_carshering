import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_carshering/app/controllers/trip_description_controller.dart';
import 'package:test_carshering/app/controllers/trips_controller.dart';
import 'package:test_carshering/screens/trip_details_screen.dart';

class TripBlock extends GetView<TripDescriptionController> {
  final String dateStart;
  final String dateEnd;
  final int? fullTime;
  final String? auto;
  final String? autoNumber;
  final String? mileage;
  final double? cost;
  final int itemIndex;

  TripBlock({
    required this.auto,
    required this.autoNumber,
    required this.cost,
    required this.dateEnd,
    required this.dateStart,
    required this.fullTime,
    required this.mileage,
    required this.itemIndex,
  });

  @override
  Widget build(BuildContext context) {
    final TripDescriptionController c = Get.put(TripDescriptionController());
    return controller.obx((data) => GestureDetector(
          onTap: () {
            Get.to(
              () => TripDetails(
                auto: auto,
                autoNumber: autoNumber,
                dateStart: dateStart,
                dateEnd: dateEnd,
                cost: cost,
                mileage: mileage,
                dateOrderStart: data[itemIndex]['event'][0]['date'],
                costOrder: data[itemIndex]['event'][0]['cost'].toDouble(),
                dateLook:
                    (data[itemIndex]['event'][1]['event'] == "Платное ожидание")
                        ? data[itemIndex]['event'][2]['date']
                        : data[itemIndex]['event'][1]['date'],
                costLook:
                    (data[itemIndex]['event'][1]['event'] == "Платное ожидание")
                        ? data[itemIndex]['event'][2]['cost'].toDouble()
                        : data[itemIndex]['event'][1]['cost'].toDouble(),
                durationLook:
                    (data[itemIndex]['event'][1]['event'] == "Платное ожидание")
                        ? data[itemIndex]['event'][2]['duration']
                        : data[itemIndex]['event'][1]['duration'],
                priceLook:
                    (data[itemIndex]['event'][1]['event'] == "Платное ожидание")
                        ? data[itemIndex]['event'][2]['price']
                        : data[itemIndex]['event'][1]['price'],
                dateUse:
                    (data[itemIndex]['event'][1]['event'] == "Платное ожидание")
                        ? data[itemIndex]['event'][3]['date']
                        : data[itemIndex]['event'][2]['date'],
                costUse:
                    (data[itemIndex]['event'][1]['event'] == "Платное ожидание")
                        ? data[itemIndex]['event'][3]['cost'].toDouble()
                        : data[itemIndex]['event'][2]['cost'].toDouble(),
                durationUse:
                    (data[itemIndex]['event'][1]['event'] == "Платное ожидание")
                        ? data[itemIndex]['event'][3]['durationTrip']
                        : data[itemIndex]['event'][2]['durationTrip'],
                priceUse:
                    (data[itemIndex]['event'][1]['event'] == "Платное ожидание")
                        ? data[itemIndex]['event'][3]['price']
                        : data[itemIndex]['event'][2]['price'],
                overRunCostUse:
                    (data[itemIndex]['event'][1]['event'] == "Платное ожидание")
                        ? data[itemIndex]['event'][3]['overRunCost']
                        : data[itemIndex]['event'][2]['overRunCost'],
                overRunUse:
                    (data[itemIndex]['event'][1]['event'] == "Платное ожидание")
                        ? data[itemIndex]['event'][3]['overRun']
                        : data[itemIndex]['event'][2]['overRun'],
                dateOrderEnd:
                    (data[itemIndex]['event'][1]['event'] == "Платное ожидание")
                        ? data[itemIndex]['event'][4]['date']
                        : data[itemIndex]['event'][3]['date'],
                costFromBonuses: "--,--",
                costFromCard: "--,--",
                paidCompletionZone: double.parse(
                    data[itemIndex]['order']['paidCompletionZone']),
                durationWait:
                    (data[itemIndex]['event'][1]['event'] == "Платное ожидание")
                        ? data[itemIndex]['event'][1]['duration']
                        : null,
                costWait:
                    (data[itemIndex]['event'][1]['event'] == "Платное ожидание")
                        ? data[itemIndex]['event'][1]['cost'].toDouble()
                        : null,
                priceWait:
                    (data[itemIndex]['event'][1]['event'] == "Платное ожидание")
                        ? data[itemIndex]['event'][1]['price']
                        : null,
                dateWait:
                    (data[itemIndex]['event'][1]['event'] == "Платное ожидание")
                        ? data[itemIndex]['event'][1]['date']
                        : null,
              ),
            );
            //Navigator.pushNamed(context, 'trip_details_page');
          },
          child: Container(
            //height: 120,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.shade300,
                    blurRadius: 4.0,
                    offset: Offset(0.0, 0.75))
              ],
            ),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(19, 15, 19, 8),
                  child: Row(
                    children: [
                      Icon(
                        Icons.calendar_today,
                        color: Color(0xFFDC6917),
                        size: 20,
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'c $dateStart',
                              textAlign: TextAlign.start,
                            ),
                            Text(
                              'по $dateEnd',
                              textAlign: TextAlign.start,
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Text(
                          TripsController().formatedTime(fullTime!),
                          textAlign: TextAlign.right,
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(
                  thickness: 1.5,
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(19, 0, 19, 5),
                  child: Row(
                    children: [
                      Icon(
                        Icons.directions_car_rounded,
                        color: Color(0xFFDC6917),
                        size: 20,
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              auto!,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 5),
                              padding: EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 8),
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey.shade400),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(3.0),
                                ),
                              ),
                              child: Text(
                                autoNumber!,
                                style: TextStyle(
                                  color: Colors.grey.shade700,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Text(
                          '$mileage км.',
                          textAlign: TextAlign.end,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "₴ $cost",
                          textAlign: TextAlign.end,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}

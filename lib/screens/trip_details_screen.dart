import 'package:flutter/material.dart';
import 'package:test_carshering/app/controllers/trip_description_controller.dart';
import 'package:test_carshering/widgets/app_bars/trip_details_app_bar.dart';
import 'package:test_carshering/widgets/trip_info_block.dart';

import '../constants.dart';

class TripDetails extends StatelessWidget {
  final String dateStart;
  final String dateEnd;
  final String auto;
  final String autoNumber;
  final double cost;
  final String mileage;
  final double costOrder;
  final String dateWait;
  final double costWait;
  final String dateLook;
  final double costLook;
  final String dateUse;
  final double costUse;
  final String costFromCard;
  final String costFromBonuses;
  final String dateOrderStart;
  final String dateOrderEnd;
  final String durationLook;
  final String priceLook;
  final String durationWait;
  final String priceWait;
  final String durationUse;
  final String priceUse;
  final int overRunCostUse;
  final String overRunUse;
  final double paidCompletionZone;

  TripDetails({
    @required this.autoNumber,
    @required this.auto,
    @required this.dateEnd,
    @required this.dateStart,
    @required this.cost,
    @required this.mileage,
    @required this.dateLook,
    @required this.dateUse,
    @required this.dateWait,
    @required this.costFromCard,
    @required this.costFromBonuses,
    @required this.costLook,
    @required this.costOrder,
    @required this.costUse,
    @required this.costWait,
    @required this.dateOrderEnd,
    @required this.dateOrderStart,
    @required this.durationLook,
    @required this.priceLook,
    @required this.durationWait,
    @required this.priceWait,
    @required this.durationUse,
    @required this.priceUse,
    @required this.overRunCostUse,
    @required this.overRunUse,
    @required this.paidCompletionZone,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    TripDescriptionController controller = TripDescriptionController();
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      appBar: TripDetailsAppBar(),
      body: Column(
        children: [
          Container(
            height: size.height * 0.185,
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
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 18, 20, 8),
                  child: Row(
                    children: [
                      Icon(
                        Icons.calendar_today,
                        color: Color(0xFFDC6917),
                        size: 20,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text('c $dateStart - '),
                      Text('пo $dateEnd'),
                    ],
                  ),
                ),
                Divider(
                  thickness: 1.5,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10.0, 0, 10, 5),
                  child: Row(
                    children: [
                      Image.asset('assets/images/car.png'),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              auto,
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
                                autoNumber,
                                style: TextStyle(
                                  color: Colors.grey.shade700,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
            child: Column(
              children: [
                Container(
                  height: size.height * 0.077,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 30, right: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Icon(
                              Icons.location_on_rounded,
                              size: 25,
                              color: Colors.teal.shade500,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            RichText(
                              text: TextSpan(
                                text: '$mileage',
                                style: kIconTextValueStyle,
                                children: [
                                  TextSpan(
                                    text: ' км.',
                                    style: kIconTextDescriptionStyle,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(
                              Icons.money,
                              color: Colors.teal.shade500,
                              size: 25,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            RichText(
                              text: TextSpan(
                                text: '$cost',
                                style: kIconTextValueStyle,
                                children: [
                                  TextSpan(
                                    text: ' ₴',
                                    style: kIconTextDescriptionStyle,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                if (paidCompletionZone > 0.00)
                  TripInfoBlock(
                    description: 'Компенсация за платную',
                    descriptionOf: 'зону',
                    totalCost: paidCompletionZone,
                    totalCostDiscription: "",
                  ),
                if (paidCompletionZone < 0.00)
                  TripInfoBlock(
                    description: 'Завершение в платной зоне',
                    descriptionOf: 'зону',
                    totalCost: paidCompletionZone,
                    totalCostDiscription: "",
                  ),
                TripInfoBlock(
                  description: 'Машина забронирована',
                  descriptionOf: dateOrderStart,
                  totalCost: costOrder.toDouble(),
                  totalCostDiscription: "$costOrder ₴",
                ),
                if (costWait != null)
                  TripInfoBlock(
                    description: 'Платное ожидание',
                    descriptionOf: dateWait,
                    totalCost: costWait,
                    totalCostDiscription:
                        "${controller.parseDate(durationWait)} * $priceWait ₴",
                  ),
                TripInfoBlock(
                  description: 'Начат осмотр',
                  descriptionOf: dateLook,
                  totalCost: costLook.toDouble(),
                  totalCostDiscription:
                      "${controller.parseDate(durationLook)} * $priceLook ₴",
                ),
                TripInfoBlock(
                  description: 'Начало использования',
                  descriptionOf: dateUse,
                  totalCost: costUse.toDouble(),
                  totalCostDiscription:
                      "${controller.parseDate(durationUse)} * $priceUse ₴ + ${double.parse(overRunUse).round()}км. * $overRunCostUse ₴",
                ),
                TripInfoBlock(
                  description: 'Заказ завершен',
                  descriptionOf: dateOrderEnd,
                  totalCost: cost,
                  totalCostDiscription: "$cost ₴",
                ),
                Container(
                  height: size.height * 0.11,
                  width: size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Списание и начисление',
                        style: TextStyle(fontSize: 15),
                      ),
                      SizedBox(
                        height: size.height * 0.025,
                      ),
                      RichText(
                        text: TextSpan(
                          text: 'Бонусами: ',
                          style: TextStyle(fontSize: 15, color: Colors.black),
                          children: [
                            TextSpan(
                              text: ' ₴ ',
                              style: kIconTextDescriptionStyle,
                            ),
                            TextSpan(
                              text: costFromBonuses,
                              style: kIconTextValueStyle,
                            ),
                          ],
                        ),
                      ),
                      RichText(
                        text: TextSpan(
                          text: 'Картой: ',
                          style: TextStyle(fontSize: 15, color: Colors.black),
                          children: [
                            TextSpan(
                              text: ' ₴ ',
                              style: kIconTextDescriptionStyle,
                            ),
                            TextSpan(
                              text: costFromCard,
                              style: kIconTextValueStyle,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

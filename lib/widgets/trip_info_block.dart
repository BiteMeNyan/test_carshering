import 'package:flutter/material.dart';

class TripInfoBlock extends StatelessWidget {
  final String description;
  final double? totalCost;
  final String? descriptionOf;
  final String totalCostDiscription;

  TripInfoBlock({
    required this.totalCost,
    required this.description,
    required this.descriptionOf,
    required this.totalCostDiscription,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.077,
      child: Padding(
        padding: const EdgeInsets.only(top: 10, bottom: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('$description'),
                Text('$descriptionOf'),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text('$totalCost'),
                Text('$totalCostDiscription'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

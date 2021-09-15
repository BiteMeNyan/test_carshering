import 'package:flutter/material.dart';
import 'package:test_carshering/app/data/providers/all_trips_provider.dart';
import 'package:test_carshering/screens/filtered_trips_screen.dart';

class MenuDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(2),
      ),
      elevation: 0,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10,
        ),
        child: SizedBox(
          height: 150,
          width: 500,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              Text(
                'Выбери действие',
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  //  Get.to(() => MainScreen());
                  Navigator.pushNamed(context, 'main_page');
                },
                child: Text(
                  'Показать все поездки',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () async {
                  final DateTime picked = await showDatePicker(
                      context: context,
                      locale: const Locale("ru", "RU"),
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2018),
                      lastDate: DateTime.now(),
                      builder: (BuildContext context, Widget child) {
                        return Theme(
                          data: ThemeData.light().copyWith(
                            colorScheme: ColorScheme.light(
                              primary: Colors.deepOrangeAccent,
                            ),
                          ),
                          child: child,
                        );
                      });
                  final String filterDate = picked
                      .toString()
                      .substring(0, picked.toString().length - 13);
                  AllTripsProvider allTripsProvider = AllTripsProvider();
                  await allTripsProvider.readJson();
                  allTripsProvider.filterDate = filterDate;
                  allTripsProvider.createFilteredTrips();
                  //  Get.to(() => FilteredTripsScreen(
                  //                           filteredTrips: allTripsProvider.filteredWidgetTrips),
                  //                     ));
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => FilteredTripsScreen(
                          filteredTrips: allTripsProvider.filteredWidgetTrips),
                    ),
                  );
                },
                child: Text(
                  'Выбрать дату',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

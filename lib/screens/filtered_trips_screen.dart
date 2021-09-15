import 'package:flutter/material.dart';
import 'package:test_carshering/widgets/app_bars/main_app_bar.dart';

class FilteredTripsScreen extends StatelessWidget {
  final Widget? filteredTrips;

  FilteredTripsScreen({
    required this.filteredTrips,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      appBar: MainAppBar(),
      body: filteredTrips,
    );
  }
}

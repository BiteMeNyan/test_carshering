import 'package:get/get.dart';
import 'package:test_carshering/app/data/providers/trips_description_provider.dart';

class TripDescriptionController extends GetxController with StateMixin {
  //TODO: Implement DialogController

  @override
  void onInit() {
    super.onInit();
    TripsDescriptionProvider().readJson().then((resp) {
      change(resp, status: RxStatus.success());
    }, onError: (err) {
      change(
        null,
        status: RxStatus.error(
          err.toString(),
        ),
      );
    });
  }

  parseDate(String date) {
    List<String> longs = date.split(" ");
    var toRemove = [];
    longs.forEach((element) {
      if (element[0] == '0') toRemove.add(element);
    });
    longs.removeWhere((e) => toRemove.contains(e));
    if (longs.isEmpty) {
      return '0 c.';
    } else {
      String newDate = "";
      longs.forEach((element) {
        newDate = newDate + " $element";
      });
      print(newDate);
      return newDate;
    }
  }
}

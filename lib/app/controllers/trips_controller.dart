import 'package:get/get.dart';
import 'package:test_carshering/app/data/providers/all_trips_provider.dart';

class TripsController extends GetxController with StateMixin {
  //TODO: Implement DialogController

  @override
  void onInit() {
    super.onInit();
    AllTripsProvider().readJson().then((resp) {
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

  String formatedTime(int secTime) {
    String getParsedTime(String time) {
      return time;
    }

    String parsedTime;
    int min = secTime ~/ 60;
    int sec = secTime % 60;

    if (min <= 60 && min > 0) {
      parsedTime = getParsedTime(min.toString()) +
          "м. " +
          getParsedTime(sec.toString()) +
          "с.";
    } else if (min < 1) {
      parsedTime = getParsedTime(sec.toString()) + "с.";
    } else {
      int hour = min ~/ 60;
      min = min - 60;
      parsedTime = getParsedTime(hour.toString()) +
          "ч. " +
          getParsedTime(min.toString()) +
          "м. " +
          getParsedTime(sec.toString()) +
          "с.";
    }

    return parsedTime;
  }
  

}

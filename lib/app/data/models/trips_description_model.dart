class TripsDescription {
  Order? order;
  List<Event>? event;
  List<StrTimeRun>? paymentsOther;
  bool? status;
  List<Coordinates>? coordinats;

  TripsDescription(
      {this.order,
      this.event,
      this.paymentsOther,
      this.status,
      this.coordinats});

  TripsDescription.fromJson(Map<String, dynamic> json) {
    order = json['order'] != null ? Order.fromJson(json['order']) : null;
    if (json['event'] != null) {
      event = <Event>[];
      json['event'].forEach((v) {
        event!.add(Event.fromJson(v));
      });
    }
    if (json['paymentsOther'] != null) {
      paymentsOther = <StrTimeRun>[];
      json['paymentsOther'].forEach((v) {
        paymentsOther!.add(StrTimeRun.fromJson(v));
      });
    }
    status = json['status'];
    if (json['coordinats'] != null) {
      coordinats = <Coordinates>[];
      json['coordinats'].forEach((v) {
        coordinats!.add(Coordinates.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (order != null) {
      data['order'] = order!.toJson();
    }
    if (event != null) {
      data['event'] = event!.map((v) => v.toJson()).toList();
    }
    if (paymentsOther != null) {
      data['paymentsOther'] = paymentsOther!.map((v) => v.toJson()).toList();
    }
    data['status'] = status;
    if (coordinats != null) {
      data['coordinats'] = coordinats!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Order {
  String? orderId;
  String? dateOrder;
  String? creatorId;
  String? creatorName;
  String? creatorPhone;
  String? creatorNameAbbr;
  String? carId;
  String? carName;
  String? costOrder;
  String? carDisplayName;
  String? carNumber;
  String? carPcture;
  Book? book;
  int? driveMinutes;
  int? parking;
  String? mileage;
  String? overunMileage;
  int? transfer;
  int? timeOrder;
  int? heating;
  int? fueling;
  int? preview;
  int? selfie;
  bool? acceptancecarbodyisdamaged;
  bool? acceptancetireisflat;
  bool? acceptancebrokenwindow;
  bool? acceptancecarisdirty;
  String? acceptancecomment;
  String? costFromCard;
  String? costFromBonuses;
  String? insurance;
  bool? insuranceInRate;
  String? paidCompletionZone;
  String? rateId;

  Order(
      {this.orderId,
      this.dateOrder,
      this.creatorId,
      this.creatorName,
      this.creatorPhone,
      this.creatorNameAbbr,
      this.carId,
      this.carName,
      this.costOrder,
      this.carDisplayName,
      this.carNumber,
      this.carPcture,
      this.book,
      this.driveMinutes,
      this.parking,
      this.mileage,
      this.overunMileage,
      this.transfer,
      this.timeOrder,
      this.heating,
      this.fueling,
      this.preview,
      this.selfie,
      this.acceptancecarbodyisdamaged,
      this.acceptancetireisflat,
      this.acceptancebrokenwindow,
      this.acceptancecarisdirty,
      this.acceptancecomment,
      this.costFromCard,
      this.costFromBonuses,
      this.insurance,
      this.insuranceInRate,
      this.paidCompletionZone,
      this.rateId});

  Order.fromJson(Map<String, dynamic> json) {
    orderId = json['order_id'];
    dateOrder = json['dateOrder'];
    creatorId = json['creatorId'];
    creatorName = json['creatorName'];
    creatorPhone = json['creatorPhone'];
    creatorNameAbbr = json['creatorNameAbbr'];
    carId = json['carId'];
    carName = json['carName'];
    costOrder = json['costOrder'];
    carDisplayName = json['carDisplayName'];
    carNumber = json['carNumber'];
    carPcture = json['carPcture'];
    book = json['book'] != null ? Book.fromJson(json['book']) : null;
    driveMinutes = json['driveMinutes'];
    parking = json['parking'];
    mileage = json['mileage'];
    overunMileage = json['overunMileage'];
    transfer = json['transfer'];
    timeOrder = json['timeOrder'];
    heating = json['heating'];
    fueling = json['fueling'];
    preview = json['preview'];
    selfie = json['selfie'];
    acceptancecarbodyisdamaged = json['acceptancecarbodyisdamaged'];
    acceptancetireisflat = json['acceptancetireisflat'];
    acceptancebrokenwindow = json['acceptancebrokenwindow'];
    acceptancecarisdirty = json['acceptancecarisdirty'];
    acceptancecomment = json['acceptancecomment'];
    costFromCard = json['costFromCard'];
    costFromBonuses = json['costFromBonuses'];
    insurance = json['insurance'];
    insuranceInRate = json['insuranceInRate'];
    paidCompletionZone = json['paidCompletionZone'];
    rateId = json['rateId'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['order_id'] = orderId;
    data['dateOrder'] = dateOrder;
    data['creatorId'] = creatorId;
    data['creatorName'] = creatorName;
    data['creatorPhone'] = creatorPhone;
    data['creatorNameAbbr'] = creatorNameAbbr;
    data['carId'] = carId;
    data['carName'] = carName;
    data['costOrder'] = costOrder;
    data['carDisplayName'] = carDisplayName;
    data['carNumber'] = carNumber;
    data['carPcture'] = carPcture;
    if (book != null) {
      data['book'] = book!.toJson();
    }
    data['driveMinutes'] = driveMinutes;
    data['parking'] = parking;
    data['mileage'] = mileage;
    data['overunMileage'] = overunMileage;
    data['transfer'] = transfer;
    data['timeOrder'] = timeOrder;
    data['heating'] = heating;
    data['fueling'] = fueling;
    data['preview'] = preview;
    data['selfie'] = selfie;
    data['acceptancecarbodyisdamaged'] = acceptancecarbodyisdamaged;
    data['acceptancetireisflat'] = acceptancetireisflat;
    data['acceptancebrokenwindow'] = acceptancebrokenwindow;
    data['acceptancecarisdirty'] = acceptancecarisdirty;
    data['acceptancecomment'] = acceptancecomment;
    data['costFromCard'] = costFromCard;
    data['costFromBonuses'] = costFromBonuses;
    data['insurance'] = insurance;
    data['insuranceInRate'] = insuranceInRate;
    data['paidCompletionZone'] = paidCompletionZone;
    data['rateId'] = rateId;
    return data;
  }
}

class Book {
  int? free;
  int? pay;

  Book({this.free, this.pay});

  Book.fromJson(Map<String, dynamic> json) {
    free = json['free'];
    pay = json['pay'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['free'] = free;
    data['pay'] = pay;
    return data;
  }
}

class Event {
  String? date;
  String? event;
  int? eventType;
  String? rate;
  String? duration;
  String? price;
  double? cost;
  String? comment;
  String? run;
  String? overRun;
  int? overRunCost;
  String? totalOverRunCost;
  String? totalTimeCost;
  String? durationTrip;
  String? strOverRun;
  StrTimeRun? strTimeRun;
  Tank? tank;
  bool? prolong;
  bool? isradar;
  int? tankType;
  Coordinates? coordinates;

  Event(
      {this.date,
      this.event,
      this.eventType,
      this.rate,
      this.duration,
      this.price,
      this.cost,
      this.comment,
      this.run,
      this.overRun,
      this.overRunCost,
      this.totalOverRunCost,
      this.totalTimeCost,
      this.durationTrip,
      this.strOverRun,
      this.strTimeRun,
      this.tank,
      this.prolong,
      this.isradar,
      this.tankType,
      this.coordinates});

  Event.fromJson(Map<String, dynamic> json) {
    date = json['date'];
    event = json['event'];
    eventType = json['eventType'];
    rate = json['rate'];
    duration = json['duration'];
    price = json['price'];
    cost = json['cost'];
    comment = json['comment'];
    run = json['run'];
    overRun = json['overRun'];
    overRunCost = json['overRunCost'];
    totalOverRunCost = json['totalOverRunCost'];
    totalTimeCost = json['totalTimeCost'];
    durationTrip = json['durationTrip'];
    strOverRun = json['strOverRun'];
    strTimeRun = json['strTimeRun'] != null
        ? StrTimeRun.fromJson(json['strTimeRun'])
        : null;
    tank = json['tank'] != null ? Tank.fromJson(json['tank']) : null;
    prolong = json['prolong'];
    isradar = json['isradar'];
    tankType = json['tankType'];
    coordinates = json['coordinates'] != null
        ? Coordinates.fromJson(json['coordinates'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['date'] = date;
    data['event'] = event;
    data['eventType'] = eventType;
    data['rate'] = rate;
    data['duration'] = duration;
    data['price'] = price;
    data['cost'] = cost;
    data['comment'] = comment;
    data['run'] = run;
    data['overRun'] = overRun;
    data['overRunCost'] = overRunCost;
    data['totalOverRunCost'] = totalOverRunCost;
    data['totalTimeCost'] = totalTimeCost;
    data['durationTrip'] = durationTrip;
    data['strOverRun'] = strOverRun;
    if (strTimeRun != null) {
      data['strTimeRun'] = strTimeRun!.toJson();
    }
    if (tank != null) {
      data['tank'] = tank!.toJson();
    }
    data['prolong'] = prolong;
    data['isradar'] = isradar;
    data['tankType'] = tankType;
    if (coordinates != null) {
      data['coordinates'] = coordinates!.toJson();
    }
    return data;
  }
}

class StrTimeRun {
  int? time;
  int? price;

  StrTimeRun({this.time, this.price});

  StrTimeRun.fromJson(Map<String, dynamic> json) {
    time = json['time'];
    price = json['price'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['time'] = time;
    data['price'] = price;
    return data;
  }
}

class Tank {
  int? fuel;
  int? gas;

  Tank({this.fuel, this.gas});

  Tank.fromJson(Map<String, dynamic> json) {
    fuel = json['fuel'];
    gas = json['gas'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['fuel'] = fuel;
    data['gas'] = gas;
    return data;
  }
}

class Coordinates {
  User? user;
  User? car;

  Coordinates({this.user, this.car});

  Coordinates.fromJson(Map<String, dynamic> json) {
    user = json['user'] != null ? User.fromJson(json['user']) : null;
    car = json['car'] != null ? User.fromJson(json['car']) : null;
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (user != null) {
      data['user'] = user!.toJson();
    }
    if (car != null) {
      data['car'] = car!.toJson();
    }
    return data;
  }
}

class User {
  double? lat;
  double? lon;

  User({this.lat, this.lon});

  User.fromJson(Map<String, dynamic> json) {
    lat = json['lat'];
    lon = json['lon'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['lat'] = lat;
    data['lon'] = lon;
    return data;
  }
}

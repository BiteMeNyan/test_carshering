class AllTrips {
  String id;
  int orderstage;
  String datestart;
  String dateend;
  dynamic endtimepack;
  int fullTime;
  String name;
  String mobilephonenumber;
  int customersbalance;
  bool userundersupervision;
  String creatorId;
  String auto;
  String autoNumber;
  bool carundersupervision;
  String carid;
  String carName;
  String rate;
  bool typeRate;
  int booktime;
  int runtime;
  int parktime;
  int previewMinutes;
  int transferMinutes;
  int selfieMinutes;
  String costWhithInsurance;
  double cost;
  String mileage;
  String status;
  bool prolongation;
  bool admin;

  AllTrips(
      {this.id,
      this.orderstage,
      this.datestart,
      this.dateend,
      this.endtimepack,
      this.fullTime,
      this.name,
      this.mobilephonenumber,
      this.customersbalance,
      this.userundersupervision,
      this.creatorId,
      this.auto,
      this.autoNumber,
      this.carundersupervision,
      this.carid,
      this.carName,
      this.rate,
      this.typeRate,
      this.booktime,
      this.runtime,
      this.parktime,
      this.previewMinutes,
      this.transferMinutes,
      this.selfieMinutes,
      this.costWhithInsurance,
      this.cost,
      this.mileage,
      this.status,
      this.prolongation,
      this.admin});

  AllTrips.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    orderstage = json['orderstage'];
    datestart = json['datestart'];
    dateend = json['dateend'];
    endtimepack = json['endtimepack'];
    fullTime = json['fullTime'];
    name = json['name'];
    mobilephonenumber = json['mobilephonenumber'];
    customersbalance = json['customersbalance'];
    userundersupervision = json['userundersupervision'];
    creatorId = json['creatorId'];
    auto = json['auto'];
    autoNumber = json['autoNumber'];
    carundersupervision = json['carundersupervision'];
    carid = json['carid'];
    carName = json['carName'];
    rate = json['rate'];
    typeRate = json['typeRate'];
    booktime = json['booktime'];
    runtime = json['runtime'];
    parktime = json['parktime'];
    previewMinutes = json['previewMinutes'];
    transferMinutes = json['transferMinutes'];
    selfieMinutes = json['selfieMinutes'];
    costWhithInsurance = json['costWhithInsurance'];
    cost = json['cost'];
    mileage = json['mileage'];
    status = json['status'];
    prolongation = json['prolongation'];
    admin = json['admin'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['orderstage'] = orderstage;
    data['datestart'] = datestart;
    data['dateend'] = dateend;
    data['endtimepack'] = endtimepack;
    data['fullTime'] = fullTime;
    data['name'] = name;
    data['mobilephonenumber'] = mobilephonenumber;
    data['customersbalance'] = customersbalance;
    data['userundersupervision'] = userundersupervision;
    data['creatorId'] = creatorId;
    data['auto'] = auto;
    data['autoNumber'] = autoNumber;
    data['carundersupervision'] = carundersupervision;
    data['carid'] = carid;
    data['carName'] = carName;
    data['rate'] = rate;
    data['typeRate'] = typeRate;
    data['booktime'] = booktime;
    data['runtime'] = runtime;
    data['parktime'] = parktime;
    data['previewMinutes'] = previewMinutes;
    data['transferMinutes'] = transferMinutes;
    data['selfieMinutes'] = selfieMinutes;
    data['costWhithInsurance'] = costWhithInsurance;
    data['cost'] = cost;
    data['mileage'] = mileage;
    data['status'] = status;
    data['prolongation'] = prolongation;
    data['admin'] = admin;
    return data;
  }
}

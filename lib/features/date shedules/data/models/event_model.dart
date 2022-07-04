class Event {
  String? sId;
  String? name;
  String? startTime;
  String? endTime;
  String? date;

  Event({this.sId, this.name, this.startTime, this.endTime, this.date});

  Event.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
    startTime = json['startTime'];
    endTime = json['endTime'];
    date = json['date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = sId;
    data['name'] = name;
    data['startTime'] = startTime;
    data['endTime'] = endTime;
    data['date'] = date;
    return data;
  }
}

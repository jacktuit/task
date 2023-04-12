class FeedBackModel {
  int? code;
  String? message;
  String? payload;

  FeedBackModel({this.code, this.message, this.payload});

  FeedBackModel.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    message = json['message'];
    payload = json['payload'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = this.code;
    data['message'] = this.message;
    data['payload'] = this.payload;
    return data;
  }
}
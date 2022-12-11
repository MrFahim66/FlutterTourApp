class TripModel {
  String? name;
  String? img;
  String? address;
  int? price;
  String? desc;
  double? rate;
  String? id;

  TripModel(
      {this.name,
      this.img,
      this.address,
      this.price,
      this.desc,
      this.rate,
      this.id});

  TripModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    img = json['img'];
    address = json['address'];
    price = json['price'];
    desc = json['desc'];
    rate = json['rate'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['img'] = this.img;
    data['address'] = this.address;
    data['price'] = this.price;
    data['desc'] = this.desc;
    data['rate'] = this.rate;
    data['id'] = this.id;
    return data;
  }
}

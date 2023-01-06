class Category {
  String? message;
  List<Data>? data;

  Category({this.message, this.data});

  Category.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  int? catId;
  String? catName;
  String? catImg;
  List<ChildData>? childData;

  Data({this.catId, this.catName, this.catImg, this.childData});

  Data.fromJson(Map<String, dynamic> json) {
    catId = json['cat_id'];
    catName = json['cat_name'];
    catImg = json['cat_img'];
    if (json['child_data'] != null) {
      childData = <ChildData>[];
      json['child_data'].forEach((v) {
        childData!.add(new ChildData.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['cat_id'] = this.catId;
    data['cat_name'] = this.catName;
    data['cat_img'] = this.catImg;
    if (this.childData != null) {
      data['child_data'] = this.childData!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ChildData {
  int? catId;
  String? catName;
  String? catStatus;
  String? catImage;

  ChildData({this.catId, this.catName, this.catStatus, this.catImage});

  ChildData.fromJson(Map<String, dynamic> json) {
    catId = json['cat_id'];
    catName = json['cat_name'];
    catStatus = json['cat_status'];
    catImage = json['cat_image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['cat_id'] = this.catId;
    data['cat_name'] = this.catName;
    data['cat_status'] = this.catStatus;
    data['cat_image'] = this.catImage;
    return data;
  }
}

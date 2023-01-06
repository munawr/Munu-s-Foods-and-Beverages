class Home {
  String? message;
  Data? data;

  Home({this.message, this.data});

  Home.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  List<SliderBanners>? sliderBanners;
  List<AdditionalBanners>? additionalBanners;
  List<FeaturedProducts>? featuredProducts;
  List<BestsellerProducts>? bestsellerProducts;

  Data(
      {this.sliderBanners,
      this.additionalBanners,
      this.featuredProducts,
      this.bestsellerProducts});

  Data.fromJson(Map<String, dynamic> json) {
    if (json['slider_banners'] != null) {
      sliderBanners = <SliderBanners>[];
      json['slider_banners'].forEach((v) {
        sliderBanners!.add(new SliderBanners.fromJson(v));
      });
    }
    if (json['additional_banners'] != null) {
      additionalBanners = <AdditionalBanners>[];
      json['additional_banners'].forEach((v) {
        additionalBanners!.add(new AdditionalBanners.fromJson(v));
      });
    }
    if (json['featured_products'] != null) {
      featuredProducts = <FeaturedProducts>[];
      json['featured_products'].forEach((v) {
        featuredProducts!.add(new FeaturedProducts.fromJson(v));
      });
    }
    if (json['bestseller_products'] != null) {
      bestsellerProducts = <BestsellerProducts>[];
      json['bestseller_products'].forEach((v) {
        bestsellerProducts!.add(new BestsellerProducts.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.sliderBanners != null) {
      data['slider_banners'] =
          this.sliderBanners!.map((v) => v.toJson()).toList();
    }
    if (this.additionalBanners != null) {
      data['additional_banners'] =
          this.additionalBanners!.map((v) => v.toJson()).toList();
    }
    if (this.featuredProducts != null) {
      data['featured_products'] =
          this.featuredProducts!.map((v) => v.toJson()).toList();
    }
    if (this.bestsellerProducts != null) {
      data['bestseller_products'] =
          this.bestsellerProducts!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class SliderBanners {
  int? id;
  String? bannerOrder;
  String? bannerImg;

  SliderBanners({this.id, this.bannerOrder, this.bannerImg});

  SliderBanners.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    bannerOrder = json['banner_order'];
    bannerImg = json['banner_img'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['banner_order'] = this.bannerOrder;
    data['banner_img'] = this.bannerImg;
    return data;
  }
}

class AdditionalBanners {
  int? id;
  String? bannerOrder;
  String? bannerImg;

  AdditionalBanners({this.id, this.bannerOrder, this.bannerImg});

  AdditionalBanners.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    bannerOrder = json['banner_order'];
    bannerImg = json['banner_img'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['banner_order'] = this.bannerOrder;
    data['banner_img'] = this.bannerImg;
    return data;
  }
}

class FeaturedProducts {
  int? id;
  String? name;
  String? sku;
  String? categoryId;
  String? categoryName;
  String? isVeg;
  String? description;
  String? price;
  String? specialPrice;
  String? availableFrom;
  String? availableTo;
  String? image;
  List<Variations>? variations;

  FeaturedProducts(
      {this.id,
      this.name,
      this.sku,
      this.categoryId,
      this.categoryName,
      this.isVeg,
      this.description,
      this.price,
      this.specialPrice,
      this.availableFrom,
      this.availableTo,
      this.image,
      this.variations});

  FeaturedProducts.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    sku = json['sku'];
    categoryId = json['category_id'];
    categoryName = json['category_name'];
    isVeg = json['is_veg'];
    description = json['description'];
    price = json['price'];
    specialPrice = json['special_price'].toString();
    availableFrom = json['available_from'];
    availableTo = json['available_to'];
    image = json['image'];
    if (json['variations'] != null) {
      variations = <Variations>[];
      json['variations'].forEach((v) {
        variations!.add(new Variations.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['sku'] = this.sku;
    data['category_id'] = this.categoryId;
    data['category_name'] = this.categoryName;
    data['is_veg'] = this.isVeg;
    data['description'] = this.description;
    data['price'] = this.price;
    data['special_price'] = this.specialPrice;
    data['available_from'] = this.availableFrom;
    data['available_to'] = this.availableTo;
    data['image'] = this.image;
    if (this.variations != null) {
      data['variations'] = this.variations!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Variations {
  int? id;
  String? title;
  String? price;
  String? specialPrice;

  Variations({this.id, this.title, this.price, this.specialPrice});

  Variations.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    price = json['price'];
    specialPrice = json['special_price'].toString();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['price'] = this.price;
    data['special_price'] = this.specialPrice;
    return data;
  }
}

class BestsellerProducts {
  int? id;
  String? name;
  String? sku;
  String? categoryId;
  String? categoryName;
  String? isVeg;
  String? menuStatus;
  String? description;
  String? price;
  String? specialPrice;
  String? availableFrom;
  String? availableTo;
  String? image;
  List<Variations>? variations;
  Null? orderCount;

  BestsellerProducts(
      {this.id,
      this.name,
      this.sku,
      this.categoryId,
      this.categoryName,
      this.isVeg,
      this.menuStatus,
      this.description,
      this.price,
      this.specialPrice,
      this.availableFrom,
      this.availableTo,
      this.image,
      this.variations,
      this.orderCount});

  BestsellerProducts.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    sku = json['sku'];
    categoryId = json['category_id'];
    categoryName = json['category_name'];
    isVeg = json['is_veg'];
    menuStatus = json['menu_status'];
    description = json['description'];
    price = json['price'];
    specialPrice = json['special_price'].toString();
    availableFrom = json['available_from'];
    availableTo = json['available_to'];
    image = json['image'];
    if (json['variations'] != null) {
      variations = <Variations>[];
      json['variations'].forEach((v) {
        variations!.add(new Variations.fromJson(v));
      });
    }
    orderCount = json['order_count'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['sku'] = this.sku;
    data['category_id'] = this.categoryId;
    data['category_name'] = this.categoryName;
    data['is_veg'] = this.isVeg;
    data['menu_status'] = this.menuStatus;
    data['description'] = this.description;
    data['price'] = this.price;
    data['special_price'] = this.specialPrice;
    data['available_from'] = this.availableFrom;
    data['available_to'] = this.availableTo;
    data['image'] = this.image;
    if (this.variations != null) {
      data['variations'] = this.variations!.map((v) => v.toJson()).toList();
    }
    data['order_count'] = this.orderCount;
    return data;
  }
}

// class Variations2 {
//   int? id;
//   String? title;
//   String? price;
//   String? specialPrice;

//   Variations2({this.id, this.title, this.price, this.specialPrice});

//   Variations2.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     title = json['title'];
//     price = json['price'];
//     specialPrice = json['special_price'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['title'] = this.title;
//     data['price'] = this.price;
//     data['special_price'] = this.specialPrice;
//     return data;
//   }
// }


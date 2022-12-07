class Welcome8 {
  Welcome8({
    this.message,
    this.data,
  });

  String message;
  Data data;
}

class Data {
  Data({
    this.sliderBanners,
    this.additionalBanners,
    this.featuredProducts,
    this.bestsellerProducts,
  });

  List<Banner> sliderBanners;
  List<Banner> additionalBanners;
  List<FeaturedProduct> featuredProducts;
  List<BestsellerProduct> bestsellerProducts;
}

class Banner {
  Banner({
    this.id,
    this.bannerOrder,
    this.bannerImg,
  });

  int id;
  String bannerOrder;
  String bannerImg;
}

class BestsellerProduct {
  BestsellerProduct({
    this.id,
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
    this.orderCount,
  });

  int id;
  String name;
  String sku;
  String categoryId;
  String categoryName;
  String isVeg;
  String menuStatus;
  String description;
  String price;
  dynamic specialPrice;
  String availableFrom;
  String availableTo;
  String image;
  List<BestsellerProductVariation> variations;
  dynamic orderCount;
}

class BestsellerProductVariation {
  BestsellerProductVariation({
    this.id,
    this.title,
    this.price,
    this.specialPrice,
  });

  int id;
  String title;
  String price;
  String specialPrice;
}

class FeaturedProduct {
  FeaturedProduct({
    this.id,
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
    this.variations,
  });

  int id;
  String name;
  String sku;
  String categoryId;
  String categoryName;
  String isVeg;
  String description;
  String price;
  dynamic specialPrice;
  String availableFrom;
  String availableTo;
  String image;
  List<FeaturedProductVariation> variations;
}

class FeaturedProductVariation {
  FeaturedProductVariation({
    this.id,
    this.title,
    this.price,
    this.specialPrice,
  });

  int id;
  String title;
  String price;
  dynamic specialPrice;
}

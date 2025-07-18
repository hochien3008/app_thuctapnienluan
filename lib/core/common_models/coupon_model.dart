class CouponModel {
  String? id;
  String? couponType;
  String? couponCode;
  String? discountId;
  int? isActive;
  String? createdAt;
  String? updatedAt;
  Discount? discount;

  CouponModel(
      {this.id,
        this.couponType,
        this.couponCode,
        this.discountId,
        this.isActive,
        this.createdAt,
        this.updatedAt,
        this.discount});

  CouponModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    couponType = json['coupon_type'];
    couponCode = json['coupon_code'];
    discountId = json['discount_id'];
    isActive = json['is_active'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    discount = json['discount'] != null
        ? Discount.fromJson(json['discount'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['coupon_type'] = couponType;
    data['coupon_code'] = couponCode;
    data['discount_id'] = discountId;
    data['is_active'] = isActive;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    if (discount != null) {
      data['discount'] = this.discount!.toJson();
    }
    return data;
  }
}

class Discount {
  String? id;
  String? discountTitle;
  String? discountType;
  int? discountAmount;
  String? discountAmountType;
  int? minPurchase;
  int? maxDiscountAmount;
  int? limitPerUser;
  String? promotionType;
  int? isActive;
  String? startDate;
  String? endDate;
  String? createdAt;
  String? updatedAt;

  Discount(
      {this.id,
        this.discountTitle,
        this.discountType,
        this.discountAmount,
        this.discountAmountType,
        this.minPurchase,
        this.maxDiscountAmount,
        this.limitPerUser,
        this.promotionType,
        this.isActive,
        this.startDate,
        this.endDate,
        this.createdAt,
        this.updatedAt});

  Discount.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    discountTitle = json['discount_title'];
    discountType = json['discount_type'];
    discountAmount = json['discount_amount'];
    discountAmountType = json['discount_amount_type'];
    minPurchase = json['min_purchase'];
    maxDiscountAmount = json['max_discount_amount'];
    limitPerUser = json['limit_per_user'];
    promotionType = json['promotion_type'];
    isActive = json['is_active'];
    startDate = json['start_date'];
    endDate = json['end_date'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['discount_title'] = this.discountTitle;
    data['discount_type'] = this.discountType;
    data['discount_amount'] = this.discountAmount;
    data['discount_amount_type'] = this.discountAmountType;
    data['min_purchase'] = this.minPurchase;
    data['max_discount_amount'] = this.maxDiscountAmount;
    data['limit_per_user'] = this.limitPerUser;
    data['promotion_type'] = this.promotionType;
    data['is_active'] = this.isActive;
    data['start_date'] = this.startDate;
    data['end_date'] = this.endDate;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}

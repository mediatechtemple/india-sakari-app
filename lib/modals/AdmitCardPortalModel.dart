class AdmitCardPortalModel {
  int? id;
  String? jobImg;
  String? jobUrl;
  String? title;
  String? date;
  String? description;
  int? categoryId;
  int? stateId;
  int? subcategoryId;
  int? departmentId;
  String? content;
  String? admitCardReleased;
  String? answerKeyReleased;
  String? resultReleased;
  String? slug;
  String? imgAlttext;
  String? imgTitle;
  String? imgDescription;
  String? metaKeywords;
  String? admitCardUrl;
  String? answerKeyUrl;
  String? resultUrl;
  String? metaTitle;
  String? metaDescription;
  String? canonicalUrl;
  String? ogImage;
  String? createdAt;
  String? updatedAt;
  Category? category;
  Department? department;
  State? state;
  Subcategory? subcategory;

  AdmitCardPortalModel({
    this.id,
    this.jobImg,
    this.jobUrl,
    this.title,
    this.date,
    this.description,
    this.categoryId,
    this.stateId,
    this.subcategoryId,
    this.departmentId,
    this.content,
    this.admitCardReleased,
    this.answerKeyReleased,
    this.resultReleased,
    this.slug,
    this.imgAlttext,
    this.imgTitle,
    this.imgDescription,
    this.metaKeywords,
    this.admitCardUrl,
    this.answerKeyUrl,
    this.resultUrl,
    this.metaTitle,
    this.metaDescription,
    this.canonicalUrl,
    this.ogImage,
    this.createdAt,
    this.updatedAt,
    this.category,
    this.department,
    this.state,
    this.subcategory,
  });

  AdmitCardPortalModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    jobImg = json['jobImg'];
    jobUrl = json['jobUrl'];
    title = json['title'];
    date = json['date'];
    description = json['description'];
    categoryId = json['category_id'];
    stateId = json['state_id'];
    subcategoryId = json['subcategory_id'];
    departmentId = json['department_id'];
    content = json['content'];
    admitCardReleased = json['admit_card_released'];
    answerKeyReleased = json['answer_key_released'];
    resultReleased = json['result_released'];
    slug = json['slug'];
    imgAlttext = json['imgAlttext'];
    imgTitle = json['imgTitle'];
    imgDescription = json['imgDescription'];
    metaKeywords = json['meta_keywords'];
    admitCardUrl = json['admitCardUrl'];
    answerKeyUrl = json['answerKeyUrl'];
    resultUrl = json['resultUrl'];
    metaTitle = json['meta_title'];
    metaDescription = json['meta_description'];
    canonicalUrl = json['canonical_url'];
    ogImage = json['og_image'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    category = json['Category'] != null ? Category.fromJson(json['Category']) : null;
    department = json['Department'] != null ? Department.fromJson(json['Department']) : null;
    state = json['State'] != null ? State.fromJson(json['State']) : null;
    subcategory = json['Subcategory'] != null ? Subcategory.fromJson(json['Subcategory']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = id;
    data['jobImg'] = jobImg;
    data['jobUrl'] = jobUrl;
    data['title'] = title;
    data['date'] = date;
    data['description'] = description;
    data['category_id'] = categoryId;
    data['state_id'] = stateId;
    data['subcategory_id'] = subcategoryId;
    data['department_id'] = departmentId;
    data['content'] = content;
    data['admit_card_released'] = admitCardReleased;
    data['answer_key_released'] = answerKeyReleased;
    data['result_released'] = resultReleased;
    data['slug'] = slug;
    data['imgAlttext'] = imgAlttext;
    data['imgTitle'] = imgTitle;
    data['imgDescription'] = imgDescription;
    data['meta_keywords'] = metaKeywords;
    data['admitCardUrl'] = admitCardUrl;
    data['answerKeyUrl'] = answerKeyUrl;
    data['resultUrl'] = resultUrl;
    data['meta_title'] = metaTitle;
    data['meta_description'] = metaDescription;
    data['canonical_url'] = canonicalUrl;
    data['og_image'] = ogImage;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    if (category != null) {
      data['Category'] = category!.toJson();
    }
    if (department != null) {
      data['Department'] = department!.toJson();
    }
    if (state != null) {
      data['State'] = state!.toJson();
    }
    if (subcategory != null) {
      data['Subcategory'] = subcategory!.toJson();
    }
    return data;
  }
}

class Category {
  int? id;
  String? name;
  String? slug;
  String? categoryImg;
  String? content;
  String? metaTitle;
  String? metaDescription;
  String? metaKeywords;
  String? imgAlttext;
  String? imgTitle;
  String? imgDescription;
  String? createdAt;
  String? updatedAt;

  Category({
    this.id,
    this.name,
    this.slug,
    this.categoryImg,
    this.content,
    this.metaTitle,
    this.metaDescription,
    this.metaKeywords,
    this.imgAlttext,
    this.imgTitle,
    this.imgDescription,
    this.createdAt,
    this.updatedAt,
  });

  Category.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    slug = json['slug'];
    categoryImg = json['categoryImg'];
    content = json['content'];
    metaTitle = json['meta_title'];
    metaDescription = json['meta_description'];
    metaKeywords = json['meta_keywords'];
    imgAlttext = json['imgAlttext'];
    imgTitle = json['imgTitle'];
    imgDescription = json['imgDescription'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = id;
    data['name'] = name;
    data['slug'] = slug;
    data['categoryImg'] = categoryImg;
    data['content'] = content;
    data['meta_title'] = metaTitle;
    data['meta_description'] = metaDescription;
    data['meta_keywords'] = metaKeywords;
    data['imgAlttext'] = imgAlttext;
    data['imgTitle'] = imgTitle;
    data['imgDescription'] = imgDescription;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}

class Department {
  int? id;
  String? name;
  String? slug;
  String? content;
  String? metaTitle;
  String? metaDescription;
  String? metaKeywords;
  String? imgAlttext;
  String? imgTitle;
  String? imgDescription;
  String? ogImage;
  String? createdAt;
  String? updatedAt;

  Department({
    this.id,
    this.name,
    this.slug,
    this.content,
    this.metaTitle,
    this.metaDescription,
    this.metaKeywords,
    this.imgAlttext,
    this.imgTitle,
    this.imgDescription,
    this.ogImage,
    this.createdAt,
    this.updatedAt,
  });

  Department.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    slug = json['slug'];
    content = json['content'];
    metaTitle = json['meta_title'];
    metaDescription = json['meta_description'];
    metaKeywords = json['meta_keywords'];
    imgAlttext = json['imgAlttext'];
    imgTitle = json['imgTitle'];
    imgDescription = json['imgDescription'];
    ogImage = json['og_image'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = id;
    data['name'] = name;
    data['slug'] = slug;
    data['content'] = content;
    data['meta_title'] = metaTitle;
    data['meta_description'] = metaDescription;
    data['meta_keywords'] = metaKeywords;
    data['imgAlttext'] = imgAlttext;
    data['imgTitle'] = imgTitle;
    data['imgDescription'] = imgDescription;
    data['og_image'] = ogImage;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}

class State {
  int? id;
  String? name;
  String? slug;
  String? content;
  String? ogImage;
  String? metaTitle;
  String? metaDescription;
  String? metaKeywords;
  String? imgAlttext;
  String? imgTitle;
  String? imgDescription;
  String? createdBy;
  String? updatedBy;
  String? createdAt;
  String? updatedAt;

  State({
    this.id,
    this.name,
    this.slug,
    this.content,
    this.ogImage,
    this.metaTitle,
    this.metaDescription,
    this.metaKeywords,
    this.imgAlttext,
    this.imgTitle,
    this.imgDescription,
    this.createdBy,
    this.updatedBy,
    this.createdAt,
    this.updatedAt,
  });

  State.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    slug = json['slug'];
    content = json['content'];
    ogImage = json['og_image'];
    metaTitle = json['meta_title'];
    metaDescription = json['meta_description'];
    metaKeywords = json['meta_keywords'];
    imgAlttext = json['imgAlttext'];
    imgTitle = json['imgTitle'];
    imgDescription = json['imgDescription'];
    createdBy = json['created_by'];
    updatedBy = json['updated_by'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = id;
    data['name'] = name;
    data['slug'] = slug;
    data['content'] = content;
    data['og_image'] = ogImage;
    data['meta_title'] = metaTitle;
    data['meta_description'] = metaDescription;
    data['meta_keywords'] = metaKeywords;
    data['imgAlttext'] = imgAlttext;
    data['imgTitle'] = imgTitle;
    data['imgDescription'] = imgDescription;
    data['created_by'] = createdBy;
    data['updated_by'] = updatedBy;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}

class Subcategory {
  int? id;
  String? name;
  int? categoryId;
  String? metaTitle;
  String? metaDescription;
  String? canonicalUrl;
  String? createdAt;
  String? updatedAt;

  Subcategory({
    this.id,
    this.name,
    this.categoryId,
    this.metaTitle,
    this.metaDescription,
    this.canonicalUrl,
    this.createdAt,
    this.updatedAt,
  });

  Subcategory.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    categoryId = json['category_id'];
    metaTitle = json['meta_title'];
    metaDescription = json['meta_description'];
    canonicalUrl = json['canonical_url'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = id;
    data['name'] = name;
    data['category_id'] = categoryId;
    data['meta_title'] = metaTitle;
    data['meta_description'] = metaDescription;
    data['canonical_url'] = canonicalUrl;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}

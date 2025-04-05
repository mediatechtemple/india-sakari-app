class JobPortalModel {
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
  Depertment? depertment;
  State? state;
  Subcategory? subcategory;

  JobPortalModel(
      {this.id,
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
        this.depertment,
        this.state,
        this.subcategory});

  JobPortalModel.fromJson(Map<String, dynamic> json) {
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
    category = json['Category'] != null
        ? new Category.fromJson(json['Category'])
        : null;
    depertment = json['Depertment'] != null
        ? new Depertment.fromJson(json['Depertment'])
        : null;
    state = json['State'] != null ? new State.fromJson(json['State']) : null;
    subcategory = json['Subcategory'] != null
        ? new Subcategory.fromJson(json['Subcategory'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['jobImg'] = this.jobImg;
    data['jobUrl'] = this.jobUrl;
    data['title'] = this.title;
    data['date'] = this.date;
    data['description'] = this.description;
    data['category_id'] = this.categoryId;
    data['state_id'] = this.stateId;
    data['subcategory_id'] = this.subcategoryId;
    data['department_id'] = this.departmentId;
    data['content'] = this.content;
    data['admit_card_released'] = this.admitCardReleased;
    data['answer_key_released'] = this.answerKeyReleased;
    data['result_released'] = this.resultReleased;
    data['slug'] = this.slug;
    data['imgAlttext'] = this.imgAlttext;
    data['imgTitle'] = this.imgTitle;
    data['imgDescription'] = this.imgDescription;
    data['meta_keywords'] = this.metaKeywords;
    data['admitCardUrl'] = this.admitCardUrl;
    data['answerKeyUrl'] = this.answerKeyUrl;
    data['resultUrl'] = this.resultUrl;
    data['meta_title'] = this.metaTitle;
    data['meta_description'] = this.metaDescription;
    data['canonical_url'] = this.canonicalUrl;
    data['og_image'] = this.ogImage;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    if (this.category != null) {
      data['Category'] = this.category!.toJson();
    }
    if (this.depertment != null) {
      data['Depertment'] = this.depertment!.toJson();
    }
    if (this.state != null) {
      data['State'] = this.state!.toJson();
    }
    if (this.subcategory != null) {
      data['Subcategory'] = this.subcategory!.toJson();
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

  Category(
      {this.id,
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
        this.updatedAt});

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
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['slug'] = this.slug;
    data['categoryImg'] = this.categoryImg;
    data['content'] = this.content;
    data['meta_title'] = this.metaTitle;
    data['meta_description'] = this.metaDescription;
    data['meta_keywords'] = this.metaKeywords;
    data['imgAlttext'] = this.imgAlttext;
    data['imgTitle'] = this.imgTitle;
    data['imgDescription'] = this.imgDescription;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}

class Depertment {
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

  Depertment(
      {this.id,
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
        this.updatedAt});

  Depertment.fromJson(Map<String, dynamic> json) {
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
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['slug'] = this.slug;
    data['content'] = this.content;
    data['meta_title'] = this.metaTitle;
    data['meta_description'] = this.metaDescription;
    data['meta_keywords'] = this.metaKeywords;
    data['imgAlttext'] = this.imgAlttext;
    data['imgTitle'] = this.imgTitle;
    data['imgDescription'] = this.imgDescription;
    data['og_image'] = this.ogImage;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
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

  State(
      {this.id,
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
        this.updatedAt});

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
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['slug'] = this.slug;
    data['content'] = this.content;
    data['og_image'] = this.ogImage;
    data['meta_title'] = this.metaTitle;
    data['meta_description'] = this.metaDescription;
    data['meta_keywords'] = this.metaKeywords;
    data['imgAlttext'] = this.imgAlttext;
    data['imgTitle'] = this.imgTitle;
    data['imgDescription'] = this.imgDescription;
    data['created_by'] = this.createdBy;
    data['updated_by'] = this.updatedBy;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
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

  Subcategory(
      {this.id,
        this.name,
        this.categoryId,
        this.metaTitle,
        this.metaDescription,
        this.canonicalUrl,
        this.createdAt,
        this.updatedAt});

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
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['category_id'] = this.categoryId;
    data['meta_title'] = this.metaTitle;
    data['meta_description'] = this.metaDescription;
    data['canonical_url'] = this.canonicalUrl;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}

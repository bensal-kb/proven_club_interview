class GifModel {
  GifModel({
      this.type, 
      this.id, 
      this.url, 
      this.slug, 
      this.bitlyGifUrl, 
      this.bitlyUrl, 
      this.embedUrl, 
      this.username, 
      this.source, 
      this.title, 
      this.rating, 
      this.contentUrl, 
      this.sourceTld, 
      this.sourcePostUrl, 
      this.isSticker, 
      this.importDatetime, 
      this.trendingDatetime, 
      this.images, 
      this.user, 
      this.analyticsResponsePayload, 
      this.analytics,});

  GifModel.fromJson(dynamic json) {
    type = json['type'];
    id = json['id'];
    url = json['url'];
    slug = json['slug'];
    bitlyGifUrl = json['bitly_gif_url'];
    bitlyUrl = json['bitly_url'];
    embedUrl = json['embed_url'];
    username = json['username'];
    source = json['source'];
    title = json['title'];
    rating = json['rating'];
    contentUrl = json['content_url'];
    sourceTld = json['source_tld'];
    sourcePostUrl = json['source_post_url'];
    isSticker = json['is_sticker'];
    importDatetime = json['import_datetime'];
    trendingDatetime = json['trending_datetime'];
    images = json['images'] != null ? Images.fromJson(json['images']) : null;
    user = json['user'] != null ? User.fromJson(json['user']) : null;
    analyticsResponsePayload = json['analytics_response_payload'];
    analytics = json['analytics'] != null ? Analytics.fromJson(json['analytics']) : null;
  }
  String? type;
  String? id;
  String? url;
  String? slug;
  String? bitlyGifUrl;
  String? bitlyUrl;
  String? embedUrl;
  String? username;
  String? source;
  String? title;
  String? rating;
  String? contentUrl;
  String? sourceTld;
  String? sourcePostUrl;
  num? isSticker;
  String? importDatetime;
  String? trendingDatetime;
  Images? images;
  User? user;
  String? analyticsResponsePayload;
  Analytics? analytics;
GifModel copyWith({  String? type,
  String? id,
  String? url,
  String? slug,
  String? bitlyGifUrl,
  String? bitlyUrl,
  String? embedUrl,
  String? username,
  String? source,
  String? title,
  String? rating,
  String? contentUrl,
  String? sourceTld,
  String? sourcePostUrl,
  num? isSticker,
  String? importDatetime,
  String? trendingDatetime,
  Images? images,
  User? user,
  String? analyticsResponsePayload,
  Analytics? analytics,
}) => GifModel(  type: type ?? this.type,
  id: id ?? this.id,
  url: url ?? this.url,
  slug: slug ?? this.slug,
  bitlyGifUrl: bitlyGifUrl ?? this.bitlyGifUrl,
  bitlyUrl: bitlyUrl ?? this.bitlyUrl,
  embedUrl: embedUrl ?? this.embedUrl,
  username: username ?? this.username,
  source: source ?? this.source,
  title: title ?? this.title,
  rating: rating ?? this.rating,
  contentUrl: contentUrl ?? this.contentUrl,
  sourceTld: sourceTld ?? this.sourceTld,
  sourcePostUrl: sourcePostUrl ?? this.sourcePostUrl,
  isSticker: isSticker ?? this.isSticker,
  importDatetime: importDatetime ?? this.importDatetime,
  trendingDatetime: trendingDatetime ?? this.trendingDatetime,
  images: images ?? this.images,
  user: user ?? this.user,
  analyticsResponsePayload: analyticsResponsePayload ?? this.analyticsResponsePayload,
  analytics: analytics ?? this.analytics,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['type'] = type;
    map['id'] = id;
    map['url'] = url;
    map['slug'] = slug;
    map['bitly_gif_url'] = bitlyGifUrl;
    map['bitly_url'] = bitlyUrl;
    map['embed_url'] = embedUrl;
    map['username'] = username;
    map['source'] = source;
    map['title'] = title;
    map['rating'] = rating;
    map['content_url'] = contentUrl;
    map['source_tld'] = sourceTld;
    map['source_post_url'] = sourcePostUrl;
    map['is_sticker'] = isSticker;
    map['import_datetime'] = importDatetime;
    map['trending_datetime'] = trendingDatetime;
    if (images != null) {
      map['images'] = images?.toJson();
    }
    if (user != null) {
      map['user'] = user?.toJson();
    }
    map['analytics_response_payload'] = analyticsResponsePayload;
    if (analytics != null) {
      map['analytics'] = analytics?.toJson();
    }
    return map;
  }

}

class Analytics {
  Analytics({
      this.onload, 
      this.onclick, 
      this.onsent,});

  Analytics.fromJson(dynamic json) {
    onload = json['onload'] != null ? Onload.fromJson(json['onload']) : null;
    onclick = json['onclick'] != null ? Onclick.fromJson(json['onclick']) : null;
    onsent = json['onsent'] != null ? Onsent.fromJson(json['onsent']) : null;
  }
  Onload? onload;
  Onclick? onclick;
  Onsent? onsent;
Analytics copyWith({  Onload? onload,
  Onclick? onclick,
  Onsent? onsent,
}) => Analytics(  onload: onload ?? this.onload,
  onclick: onclick ?? this.onclick,
  onsent: onsent ?? this.onsent,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (onload != null) {
      map['onload'] = onload?.toJson();
    }
    if (onclick != null) {
      map['onclick'] = onclick?.toJson();
    }
    if (onsent != null) {
      map['onsent'] = onsent?.toJson();
    }
    return map;
  }

}

class Onsent {
  Onsent({
      this.url,});

  Onsent.fromJson(dynamic json) {
    url = json['url'];
  }
  String? url;
Onsent copyWith({  String? url,
}) => Onsent(  url: url ?? this.url,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['url'] = url;
    return map;
  }

}

class Onclick {
  Onclick({
      this.url,});

  Onclick.fromJson(dynamic json) {
    url = json['url'];
  }
  String? url;
Onclick copyWith({  String? url,
}) => Onclick(  url: url ?? this.url,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['url'] = url;
    return map;
  }

}

class Onload {
  Onload({
      this.url,});

  Onload.fromJson(dynamic json) {
    url = json['url'];
  }
  String? url;
Onload copyWith({  String? url,
}) => Onload(  url: url ?? this.url,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['url'] = url;
    return map;
  }

}

class User {
  User({
      this.avatarUrl, 
      this.bannerImage, 
      this.bannerUrl, 
      this.profileUrl, 
      this.username, 
      this.displayName, 
      this.description, 
      this.instagramUrl, 
      this.websiteUrl, 
      this.isVerified,});

  User.fromJson(dynamic json) {
    avatarUrl = json['avatar_url'];
    bannerImage = json['banner_image'];
    bannerUrl = json['banner_url'];
    profileUrl = json['profile_url'];
    username = json['username'];
    displayName = json['display_name'];
    description = json['description'];
    instagramUrl = json['instagram_url'];
    websiteUrl = json['website_url'];
    isVerified = json['is_verified'];
  }
  String? avatarUrl;
  String? bannerImage;
  String? bannerUrl;
  String? profileUrl;
  String? username;
  String? displayName;
  String? description;
  String? instagramUrl;
  String? websiteUrl;
  bool? isVerified;
User copyWith({  String? avatarUrl,
  String? bannerImage,
  String? bannerUrl,
  String? profileUrl,
  String? username,
  String? displayName,
  String? description,
  String? instagramUrl,
  String? websiteUrl,
  bool? isVerified,
}) => User(  avatarUrl: avatarUrl ?? this.avatarUrl,
  bannerImage: bannerImage ?? this.bannerImage,
  bannerUrl: bannerUrl ?? this.bannerUrl,
  profileUrl: profileUrl ?? this.profileUrl,
  username: username ?? this.username,
  displayName: displayName ?? this.displayName,
  description: description ?? this.description,
  instagramUrl: instagramUrl ?? this.instagramUrl,
  websiteUrl: websiteUrl ?? this.websiteUrl,
  isVerified: isVerified ?? this.isVerified,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['avatar_url'] = avatarUrl;
    map['banner_image'] = bannerImage;
    map['banner_url'] = bannerUrl;
    map['profile_url'] = profileUrl;
    map['username'] = username;
    map['display_name'] = displayName;
    map['description'] = description;
    map['instagram_url'] = instagramUrl;
    map['website_url'] = websiteUrl;
    map['is_verified'] = isVerified;
    return map;
  }

}

class Images {
  Images({
      this.original, 
      this.fixedHeight, 
      this.fixedHeightDownsampled, 
      this.fixedHeightSmall, 
      this.fixedWidth, 
      this.fixedWidthDownsampled, 
      this.fixedWidthSmall,});

  Images.fromJson(dynamic json) {
    original = json['original'] != null ? Original.fromJson(json['original']) : null;
    fixedHeight = json['fixed_height'] != null ? FixedHeight.fromJson(json['fixed_height']) : null;
    fixedHeightDownsampled = json['fixed_height_downsampled'] != null ? FixedHeightDownsampled.fromJson(json['fixed_height_downsampled']) : null;
    fixedHeightSmall = json['fixed_height_small'] != null ? FixedHeightSmall.fromJson(json['fixed_height_small']) : null;
    fixedWidth = json['fixed_width'] != null ? FixedWidth.fromJson(json['fixed_width']) : null;
    fixedWidthDownsampled = json['fixed_width_downsampled'] != null ? FixedWidthDownsampled.fromJson(json['fixed_width_downsampled']) : null;
    fixedWidthSmall = json['fixed_width_small'] != null ? FixedWidthSmall.fromJson(json['fixed_width_small']) : null;
  }
  Original? original;
  FixedHeight? fixedHeight;
  FixedHeightDownsampled? fixedHeightDownsampled;
  FixedHeightSmall? fixedHeightSmall;
  FixedWidth? fixedWidth;
  FixedWidthDownsampled? fixedWidthDownsampled;
  FixedWidthSmall? fixedWidthSmall;
Images copyWith({  Original? original,
  FixedHeight? fixedHeight,
  FixedHeightDownsampled? fixedHeightDownsampled,
  FixedHeightSmall? fixedHeightSmall,
  FixedWidth? fixedWidth,
  FixedWidthDownsampled? fixedWidthDownsampled,
  FixedWidthSmall? fixedWidthSmall,
}) => Images(  original: original ?? this.original,
  fixedHeight: fixedHeight ?? this.fixedHeight,
  fixedHeightDownsampled: fixedHeightDownsampled ?? this.fixedHeightDownsampled,
  fixedHeightSmall: fixedHeightSmall ?? this.fixedHeightSmall,
  fixedWidth: fixedWidth ?? this.fixedWidth,
  fixedWidthDownsampled: fixedWidthDownsampled ?? this.fixedWidthDownsampled,
  fixedWidthSmall: fixedWidthSmall ?? this.fixedWidthSmall,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (original != null) {
      map['original'] = original?.toJson();
    }
    if (fixedHeight != null) {
      map['fixed_height'] = fixedHeight?.toJson();
    }
    if (fixedHeightDownsampled != null) {
      map['fixed_height_downsampled'] = fixedHeightDownsampled?.toJson();
    }
    if (fixedHeightSmall != null) {
      map['fixed_height_small'] = fixedHeightSmall?.toJson();
    }
    if (fixedWidth != null) {
      map['fixed_width'] = fixedWidth?.toJson();
    }
    if (fixedWidthDownsampled != null) {
      map['fixed_width_downsampled'] = fixedWidthDownsampled?.toJson();
    }
    if (fixedWidthSmall != null) {
      map['fixed_width_small'] = fixedWidthSmall?.toJson();
    }
    return map;
  }

}

class FixedWidthSmall {
  FixedWidthSmall({
      this.height, 
      this.width, 
      this.size, 
      this.url, 
      this.mp4Size, 
      this.mp4, 
      this.webpSize, 
      this.webp,});

  FixedWidthSmall.fromJson(dynamic json) {
    height = json['height'];
    width = json['width'];
    size = json['size'];
    url = json['url'];
    mp4Size = json['mp4_size'];
    mp4 = json['mp4'];
    webpSize = json['webp_size'];
    webp = json['webp'];
  }
  String? height;
  String? width;
  String? size;
  String? url;
  String? mp4Size;
  String? mp4;
  String? webpSize;
  String? webp;
FixedWidthSmall copyWith({  String? height,
  String? width,
  String? size,
  String? url,
  String? mp4Size,
  String? mp4,
  String? webpSize,
  String? webp,
}) => FixedWidthSmall(  height: height ?? this.height,
  width: width ?? this.width,
  size: size ?? this.size,
  url: url ?? this.url,
  mp4Size: mp4Size ?? this.mp4Size,
  mp4: mp4 ?? this.mp4,
  webpSize: webpSize ?? this.webpSize,
  webp: webp ?? this.webp,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['height'] = height;
    map['width'] = width;
    map['size'] = size;
    map['url'] = url;
    map['mp4_size'] = mp4Size;
    map['mp4'] = mp4;
    map['webp_size'] = webpSize;
    map['webp'] = webp;
    return map;
  }

}

class FixedWidthDownsampled {
  FixedWidthDownsampled({
      this.height, 
      this.width, 
      this.size, 
      this.url, 
      this.webpSize, 
      this.webp,});

  FixedWidthDownsampled.fromJson(dynamic json) {
    height = json['height'];
    width = json['width'];
    size = json['size'];
    url = json['url'];
    webpSize = json['webp_size'];
    webp = json['webp'];
  }
  String? height;
  String? width;
  String? size;
  String? url;
  String? webpSize;
  String? webp;
FixedWidthDownsampled copyWith({  String? height,
  String? width,
  String? size,
  String? url,
  String? webpSize,
  String? webp,
}) => FixedWidthDownsampled(  height: height ?? this.height,
  width: width ?? this.width,
  size: size ?? this.size,
  url: url ?? this.url,
  webpSize: webpSize ?? this.webpSize,
  webp: webp ?? this.webp,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['height'] = height;
    map['width'] = width;
    map['size'] = size;
    map['url'] = url;
    map['webp_size'] = webpSize;
    map['webp'] = webp;
    return map;
  }

}

class FixedWidth {
  FixedWidth({
      this.height, 
      this.width, 
      this.size, 
      this.url, 
      this.mp4Size, 
      this.mp4, 
      this.webpSize, 
      this.webp,});

  FixedWidth.fromJson(dynamic json) {
    height = json['height'];
    width = json['width'];
    size = json['size'];
    url = json['url'];
    mp4Size = json['mp4_size'];
    mp4 = json['mp4'];
    webpSize = json['webp_size'];
    webp = json['webp'];
  }
  String? height;
  String? width;
  String? size;
  String? url;
  String? mp4Size;
  String? mp4;
  String? webpSize;
  String? webp;
FixedWidth copyWith({  String? height,
  String? width,
  String? size,
  String? url,
  String? mp4Size,
  String? mp4,
  String? webpSize,
  String? webp,
}) => FixedWidth(  height: height ?? this.height,
  width: width ?? this.width,
  size: size ?? this.size,
  url: url ?? this.url,
  mp4Size: mp4Size ?? this.mp4Size,
  mp4: mp4 ?? this.mp4,
  webpSize: webpSize ?? this.webpSize,
  webp: webp ?? this.webp,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['height'] = height;
    map['width'] = width;
    map['size'] = size;
    map['url'] = url;
    map['mp4_size'] = mp4Size;
    map['mp4'] = mp4;
    map['webp_size'] = webpSize;
    map['webp'] = webp;
    return map;
  }

}

class FixedHeightSmall {
  FixedHeightSmall({
      this.height, 
      this.width, 
      this.size, 
      this.url, 
      this.mp4Size, 
      this.mp4, 
      this.webpSize, 
      this.webp,});

  FixedHeightSmall.fromJson(dynamic json) {
    height = json['height'];
    width = json['width'];
    size = json['size'];
    url = json['url'];
    mp4Size = json['mp4_size'];
    mp4 = json['mp4'];
    webpSize = json['webp_size'];
    webp = json['webp'];
  }
  String? height;
  String? width;
  String? size;
  String? url;
  String? mp4Size;
  String? mp4;
  String? webpSize;
  String? webp;
FixedHeightSmall copyWith({  String? height,
  String? width,
  String? size,
  String? url,
  String? mp4Size,
  String? mp4,
  String? webpSize,
  String? webp,
}) => FixedHeightSmall(  height: height ?? this.height,
  width: width ?? this.width,
  size: size ?? this.size,
  url: url ?? this.url,
  mp4Size: mp4Size ?? this.mp4Size,
  mp4: mp4 ?? this.mp4,
  webpSize: webpSize ?? this.webpSize,
  webp: webp ?? this.webp,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['height'] = height;
    map['width'] = width;
    map['size'] = size;
    map['url'] = url;
    map['mp4_size'] = mp4Size;
    map['mp4'] = mp4;
    map['webp_size'] = webpSize;
    map['webp'] = webp;
    return map;
  }

}

class FixedHeightDownsampled {
  FixedHeightDownsampled({
      this.height, 
      this.width, 
      this.size, 
      this.url, 
      this.webpSize, 
      this.webp,});

  FixedHeightDownsampled.fromJson(dynamic json) {
    height = json['height'];
    width = json['width'];
    size = json['size'];
    url = json['url'];
    webpSize = json['webp_size'];
    webp = json['webp'];
  }
  String? height;
  String? width;
  String? size;
  String? url;
  String? webpSize;
  String? webp;
FixedHeightDownsampled copyWith({  String? height,
  String? width,
  String? size,
  String? url,
  String? webpSize,
  String? webp,
}) => FixedHeightDownsampled(  height: height ?? this.height,
  width: width ?? this.width,
  size: size ?? this.size,
  url: url ?? this.url,
  webpSize: webpSize ?? this.webpSize,
  webp: webp ?? this.webp,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['height'] = height;
    map['width'] = width;
    map['size'] = size;
    map['url'] = url;
    map['webp_size'] = webpSize;
    map['webp'] = webp;
    return map;
  }

}

class FixedHeight {
  FixedHeight({
      this.height, 
      this.width, 
      this.size, 
      this.url, 
      this.mp4Size, 
      this.mp4, 
      this.webpSize, 
      this.webp,});

  FixedHeight.fromJson(dynamic json) {
    height = json['height'];
    width = json['width'];
    size = json['size'];
    url = json['url'];
    mp4Size = json['mp4_size'];
    mp4 = json['mp4'];
    webpSize = json['webp_size'];
    webp = json['webp'];
  }
  String? height;
  String? width;
  String? size;
  String? url;
  String? mp4Size;
  String? mp4;
  String? webpSize;
  String? webp;
FixedHeight copyWith({  String? height,
  String? width,
  String? size,
  String? url,
  String? mp4Size,
  String? mp4,
  String? webpSize,
  String? webp,
}) => FixedHeight(  height: height ?? this.height,
  width: width ?? this.width,
  size: size ?? this.size,
  url: url ?? this.url,
  mp4Size: mp4Size ?? this.mp4Size,
  mp4: mp4 ?? this.mp4,
  webpSize: webpSize ?? this.webpSize,
  webp: webp ?? this.webp,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['height'] = height;
    map['width'] = width;
    map['size'] = size;
    map['url'] = url;
    map['mp4_size'] = mp4Size;
    map['mp4'] = mp4;
    map['webp_size'] = webpSize;
    map['webp'] = webp;
    return map;
  }

}

class Original {
  Original({
      this.height, 
      this.width, 
      this.size, 
      this.url, 
      this.mp4Size, 
      this.mp4, 
      this.webpSize, 
      this.webp, 
      this.frames, 
      this.hash,});

  Original.fromJson(dynamic json) {
    height = json['height'];
    width = json['width'];
    size = json['size'];
    url = json['url'];
    mp4Size = json['mp4_size'];
    mp4 = json['mp4'];
    webpSize = json['webp_size'];
    webp = json['webp'];
    frames = json['frames'];
    hash = json['hash'];
  }
  String? height;
  String? width;
  String? size;
  String? url;
  String? mp4Size;
  String? mp4;
  String? webpSize;
  String? webp;
  String? frames;
  String? hash;
Original copyWith({  String? height,
  String? width,
  String? size,
  String? url,
  String? mp4Size,
  String? mp4,
  String? webpSize,
  String? webp,
  String? frames,
  String? hash,
}) => Original(  height: height ?? this.height,
  width: width ?? this.width,
  size: size ?? this.size,
  url: url ?? this.url,
  mp4Size: mp4Size ?? this.mp4Size,
  mp4: mp4 ?? this.mp4,
  webpSize: webpSize ?? this.webpSize,
  webp: webp ?? this.webp,
  frames: frames ?? this.frames,
  hash: hash ?? this.hash,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['height'] = height;
    map['width'] = width;
    map['size'] = size;
    map['url'] = url;
    map['mp4_size'] = mp4Size;
    map['mp4'] = mp4;
    map['webp_size'] = webpSize;
    map['webp'] = webp;
    map['frames'] = frames;
    map['hash'] = hash;
    return map;
  }

}
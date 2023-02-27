class FileArticle {
    FileArticle({
        this.path,
        this.title,
        this.description,
        this.contentUrl,
        this.author,
        this.published,
    });

    final String? path;
    final String? title;
    final String? description;
    final String? contentUrl;
    final Author? author;
    final DateTime? published;

    FileArticle copyWith({
        String? path,
        String? title,
        String? description,
        String? contentUrl,
        Author? author,
        DateTime? published,
    }) => 
        FileArticle(
            path: path ?? this.path,
            title: title ?? this.title,
            description: description ?? this.description,
            contentUrl: contentUrl ?? this.contentUrl,
            author: author ?? this.author,
            published: published ?? this.published,
        );

    factory FileArticle.fromJson(Map<String, dynamic> json) => FileArticle(
        path: json["path"],
        title: json["title"],
        description: json["description"],
        contentUrl: json["contentUrl"],
        author: authorValues.map[json["author"]]!,
        published: json["published"] == null ? null : DateTime.parse(json["published"]),
    );

    Map<String, dynamic> toJson() => {
        "path": path,
        "title": title,
        "description": description,
        "contentUrl": contentUrl,
        "author": authorValues.reverse[author],
        "published": published?.toIso8601String(),
    };
}

enum Author { theMonkslab }

final authorValues = EnumValues({
    "The Monkslab": Author.theMonkslab
});

class EnumValues<T> {
    Map<String, T> map;
    late Map<T, String> reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
        reverseMap = map.map((k, v) => MapEntry(v, k));
        return reverseMap;
    }
}
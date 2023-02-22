import 'file_article.dart';

class FileSection {
    FileSection({
        this.path,
        this.title,
        this.description,
        this.articles,
    });

    final String? path;
    final String? title;
    final String? description;
    final List<FileArticle>? articles;

    FileSection copyWith({
        String? path,
        String? title,
        String? description,
        List<FileArticle>? articles,
    }) => 
        FileSection(
            path: path ?? this.path,
            title: title ?? this.title,
            description: description ?? this.description,
            articles: articles ?? this.articles,
        );

    factory FileSection.fromJson(Map<String, dynamic> json) => FileSection(
        path: json["path"],
        title: json["title"],
        description: json["description"],
        articles: json["articles"] == null ? [] : List<FileArticle>.from(json["articles"]!.map((x) => FileArticle.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "path": path,
        "title": title,
        "description": description,
        "articles": articles == null ? [] : List<dynamic>.from(articles!.map((x) => x.toJson())),
    };
}
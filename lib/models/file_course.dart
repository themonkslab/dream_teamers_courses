import 'dart:convert';

import 'package:json_generator/models/file_section.dart';

class FileCourse {
  FileCourse({required this.title, required this.path, this.sections = const []});
  final String title;
  final String path;
  final List<FileSection> sections;

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};
  
    result.addAll({'title': title});
    result.addAll({'path': path});
    result.addAll({'sections': sections});
  
    return result;
  }

  factory FileCourse.fromMap(Map<String, dynamic> map) {
    return FileCourse(
      title: map['title'] ?? '',
      path: map['path'] ?? '',
      sections: List<FileSection>.from(map['sections']),
    );
  }

  String toJson() => json.encode(toMap());

  factory FileCourse.fromJson(String source) => FileCourse.fromMap(json.decode(source));
}
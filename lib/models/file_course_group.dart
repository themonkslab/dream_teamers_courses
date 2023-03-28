import 'dart:convert';

import 'file_course.dart';

class FileCoursesGroup {
  FileCoursesGroup({
    required this.group_name,
    required this.courses,
    required this.folder,
  });
  final String group_name;
  final List<FileCourse> courses;
  final String folder;

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};
  
    result.addAll({'group_name': group_name});
    result.addAll({'courses': courses.map((x) => x.toMap()).toList()});
    result.addAll({'folder': folder});
  
    return result;
  }

  factory FileCoursesGroup.fromMap(Map<String, dynamic> map) {
    return FileCoursesGroup(
      group_name: map['group_name'] ?? '',
      courses: List<FileCourse>.from(map['courses']?.map((x) => FileCourse.fromMap(x))),
      folder: map['folder'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory FileCoursesGroup.fromJson(String source) => FileCoursesGroup.fromMap(json.decode(source));
}

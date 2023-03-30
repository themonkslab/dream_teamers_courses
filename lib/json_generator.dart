import 'dart:convert';
import 'dart:io';

import 'package:json_generator/models/_index.dart';

void main() async {
  final List<FileCoursesGroup> coursesEn = [
    FileCoursesGroup(group_name: 'Learning Path', folder: 'dart', courses: [
      FileCourse(
        title: 'Dart and TDD',
        path: 'dart_y_tdd_en',
        sections: await createCourseFromPath('dart'),
      )
    ]),
  ];
  await generateJsonFile(
      coursesList: coursesEn, outputFilename: 'courses_en.json');

  final List<FileCoursesGroup> coursesSp = [
    FileCoursesGroup(group_name: 'Learning Path', folder: 'dart_sp', courses: [
      FileCourse(
        title: 'Dart y TDD',
        path: 'dart_y_tdd_es',
        sections: await createCourseFromPath('dart_sp'),
      )
    ]),
    FileCoursesGroup(
        group_name: 'CICD con Flutter',
        folder: 'flutter/cicd_sp',
        courses: [
          FileCourse(
            title: 'Dart y TDD',
            path: 'cicd_es',
            sections: await createCourseFromPath('flutter/cicd_sp'),
          )
        ]),
  ];
  await generateJsonFile(
      coursesList: coursesSp, outputFilename: 'courses_es.json');
}

Future<void> generateJsonFile({
  required List<FileCoursesGroup> coursesList,
  required String outputFilename,
}) async {
  final coursesDirectory = Directory('courses');
  if (!await coursesDirectory.exists()) {
    await coursesDirectory.create();
  }
  final filename = '${coursesDirectory.path}/$outputFilename';
  final jsonCourse = coursesToJson(coursesList);
  await File(filename).writeAsString(jsonCourse);
}

String coursesToJson(List<FileCoursesGroup> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toMap())));

Future<List<FileSection>> createCourseFromPath(String path) async {
  // Save directories as Directory in List, without 'assets' directory
  final directories = <Directory>[];
  final dir = Directory('./$path');

  final List<FileSystemEntity> entities = await dir.list().toList();
  for (var entity in entities) {
    if (await FileSystemEntity.isDirectory(entity.path)) {
      if (!(entity.path.substring(entity.path.lastIndexOf('/') + 1) ==
          'assets')) {
        directories.add(entity as Directory);
      }
    }
  }

  // Save '.md' files in directory
  final List<FileSection> sections = [];
  for (var directory in directories) {
    final List<FileArticle> articles = [];
    final directoryNameWithUnderscore =
        (directory.path.replaceAll('./$path/', ''));
    final directoryName =
        (directory.path.replaceAll('./$path/', '')).replaceAll('_', ' ');

    final List<FileSystemEntity> subEntities = await directory.list().toList();
    for (var entity in subEntities) {
      if (await FileSystemEntity.isFile(entity.path)) {
        final String articleExtension;
        try {
          articleExtension = "." + entity.uri.toString().split('.').last;
        } catch (e) {
          throw e;
        }
        if (articleExtension == '.md') {
          final articleName = (entity.path
              .replaceAll('./$path/$directoryNameWithUnderscore/', '')
              .replaceAll('_', ' ')
              .replaceFirst(' ', '.')
              .replaceAll('.md', ''));

          final baseContentUrl =
              'https://raw.githubusercontent.com/themonkslab/dream_teamers_courses/main';

          final contentUrl = entity.path.replaceFirst('.', baseContentUrl);
          final articlePath = entity.path
              .replaceFirst('./$path/', '')
              .replaceAll('/', '_')
              .replaceAll('.md', '');

          articles.add(
            FileArticle(
                path: articlePath,
                title: articleName,
                description: '',
                // example: https://raw.githubusercontent.com/themonkslab/courses/main/dart/1.introduccion/1.2_que_esperamos_nosotros.md
                contentUrl: contentUrl,
                author: Author.theMonkslab,
                published: DateTime.now()),
          );
        }
      }
    }

    articles.sort((a, b) => orderList(a, b));
    final sectionPath = directory.path.replaceFirst('./$path/', '');
    sections.add(FileSection(
      path: sectionPath,
      title: directoryName,
      description: '',
      articles: articles,
    ));
  }

  sections.sort((a, b) => orderList(a, b));
  return sections;
}

int orderList(a, b) {
  final aDouble = double.parse((a.title).split('.').first);
  final bDouble = double.parse((b.title).split('.').first);
  return aDouble.compareTo(bDouble);
}

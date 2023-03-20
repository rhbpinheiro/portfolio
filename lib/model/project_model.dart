import 'package:flutter/material.dart';

class ProjectModel with ChangeNotifier {
  final String? title;
  final String? description;
  final String? imageUrl;
  final Uri? gitHubUrl;
  ProjectModel({
    this.title,
    this.description,
    this.imageUrl,
    this.gitHubUrl
  });
}

import 'package:flutter/material.dart';
import 'package:rodolpho_pinheiro/data/project_info.dart';
import 'package:rodolpho_pinheiro/model/project_model.dart';

class ProjectListModel extends ChangeNotifier {
  final List<ProjectModel> _projects = projectList;
  List<ProjectModel> get projects => [..._projects];
    void addProduct(ProjectModel projectModel) {
    _projects.add(projectModel);
    notifyListeners();
  }
  
}

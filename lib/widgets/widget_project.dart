import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:rodolpho_pinheiro/constants/constants.dart';
import 'package:rodolpho_pinheiro/model/project_model.dart';

import '../utils/app_routes.dart';

class WidgetProject extends StatelessWidget {
  final String? title;
  final String? description;
  final String? imageUrl1;
  final double width;
  final double height;
  const WidgetProject({
    Key? key,
    this.title,
    this.description,
    this.imageUrl1,
    required this.width,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final project = Provider.of<ProjectModel>(context, listen: false);
    return SizedBox(
      width: context.screenWidth,
      child: Padding(
        padding: EdgeInsets.only(
          top: 20,
          left: context.percentWidth(.20),
          right: context.percentWidth(.20),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(
                      project.title!,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: SizedBox(
                        width: context.percentWidth(.2),
                        child: Text(
                          project.description!,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                  ],
                ),
                Container(
                  width: 2,
                  height: 250,
                  color: Colors.white,
                  margin: const EdgeInsets.only(left: 30, right: 30),
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Image(
                          height: height,
                          width: width,
                          image: AssetImage(project.imageUrl!),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(
                  AppRoutes.PROJECT_DETAIL,
                  arguments: project,
                );
              },
              child: const Text(
                'Detalhes do Projeto',
              ),
            ),
          ],
        ),
      ),
    );
  }
}

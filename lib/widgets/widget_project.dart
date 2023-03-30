import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:rodolpho_pinheiro/constants/constants.dart';
import 'package:rodolpho_pinheiro/model/project_model.dart';
import 'package:url_launcher/url_launcher.dart';

import '../utils/app_routes.dart';

class WidgetProject extends StatelessWidget {
  final String? title;
  final String? imageUrl1;
  // final String? gitHubUrl;

  const WidgetProject({
    Key? key,
    this.title,
    this.imageUrl1,
    // this.gitHubUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future<void> _launchInBrowser(Uri url) async {
      if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
        throw "Can not launch url";
      }
    }

    final project = Provider.of<ProjectModel>(context, listen: false);
    return Container(
      width: context.percentWidth(.6),
      padding: const EdgeInsets.only(
        top: 20,
      ),
      child: Column(
        children: [
          Text(
            project.title!,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 25,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                      project.imageUrl!,
                      width: double.infinity,
                      fit: BoxFit.contain,
                    ),
            ),
          ),
          ElevatedButton(
            style: hoverElevatedButton,
            onPressed: () {
              Navigator.of(context).pushReplacementNamed(
                AppRoutes.PROJECT_DETAIL,
                arguments: project,
              );
            },
            child: const Text(
              'Detalhes do Projeto',
            ),
          ),
          const SizedBox(height: 20),
          const Divider(
            height: 3,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}

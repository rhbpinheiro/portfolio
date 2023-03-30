import 'package:flutter/material.dart';
import 'package:rodolpho_pinheiro/constants/constants.dart';
import 'package:rodolpho_pinheiro/utils/app_routes.dart';
import 'package:rodolpho_pinheiro/widgets/widget_footer.dart';
import 'package:url_launcher/url_launcher.dart';

import '../model/project_model.dart';

class ProjectDetail extends StatelessWidget {
  const ProjectDetail({
    super.key,
    required this.project,
  });

  final ProjectModel project;

  @override
  Widget build(BuildContext context) {
    Future<void> _launchInBrowser(Uri url) async {
      if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
        throw "Can not launch url";
      }
    }

    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
              "https://cdn.pixabay.com/photo/2022/04/03/15/33/world-wide-web-7109276_960_720.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        width: context.screenWidth,
        color: Colors.black87,
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1400),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Text(
                  project.title!,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: context.percentWidth(.2),
                    right: context.percentWidth(.2),
                    top: 20,
                    bottom: 20,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image(
                      width: double.infinity,
                      image: AssetImage(
                        project.imageUrl!,
                      ),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: context.percentWidth(.2),
                        right: context.percentWidth(.2),
                      ),
                      child: Text(
                        project.description!,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Wrap(
                      alignment: WrapAlignment.center,
                      children: [
                        ElevatedButton(
                          style: hoverElevatedButton,
                          onPressed: () {
                            Navigator.of(context).pushReplacementNamed(
                              AppRoutes.PROJECTS,
                            );
                          },
                          child: const Text(
                            'Voltar',
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        ElevatedButton(
                          style: hoverElevatedButton,
                          onPressed: () async {
                            _launchInBrowser(project.gitHubUrl!);
                          },
                          child: const Text(
                            'Link do Repositório',
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
                const WidgetFooter(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

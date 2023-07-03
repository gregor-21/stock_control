import 'package:flutter/material.dart';
import 'package:localization/localization.dart';
import 'functionality_page.dart';
import 'presentation_page.dart';

class ObjectivesPage extends StatelessWidget {
  const ObjectivesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(248, 231, 231, 231),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 40.0),
            Text(
              "objetivos".i18n(),
              style: const TextStyle(
                  fontSize: 36, color: Color.fromARGB(255, 16, 52, 153)),
            ),
            const SizedBox(height: 30.0),
            Text(
              "texto_objetivo".i18n(),
              style: const TextStyle(fontSize: 20.0),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30.0),
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    leading: const Icon(Icons.timelapse),
                    title: Text("economizar_tempo".i18n()),
                  ),
                  ListTile(
                    leading: const Icon(Icons.monetization_on),
                    title: Text("reduzir_custos".i18n()),
                  ),
                  ListTile(
                    leading: const Icon(Icons.check_circle),
                    title: Text("melhorar_eficiencia".i18n()),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 16.0, left: 16.0),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const PresentationPage()));
                      },
                      child: Text("voltar".i18n()),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 16.0, right: 16.0),
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const FuncionalidadesScreen(),
                          ),
                        );
                      },
                      child: Text("proximo".i18n()),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

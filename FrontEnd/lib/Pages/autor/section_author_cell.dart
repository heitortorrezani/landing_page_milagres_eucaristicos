import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:landing_page_cardiologista/Pages/autor/global_author.dart';
import 'package:landing_page_cardiologista/widgets/card.dart';

class SectionAuthorCell extends StatefulWidget {
  const SectionAuthorCell({super.key});

  @override
  State<SectionAuthorCell> createState() => _SectionAuthorCellState();
}

class _SectionAuthorCellState extends State<SectionAuthorCell> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Container(
      width: size.width,
      color: Colors.white,
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            "Sobre o Autor",
            style: TextStyle(
              color: Colors.black,
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 8),
          Container(width: 100, height: 4, color: Colors.amber),
          SizedBox(height: 20),
          Container(
            width: size.width,
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Column(
              children: [
                SizedBox(height: 20),
                Text(
                  'Dr. Franco Serafini',
                  style: TextStyle(
                    fontSize: 35,
                    color: Colors.yellow[800],
                    shadows: [
                      BoxShadow(blurRadius: 20, color: Colors.yellow[800]!),
                    ],
                  ),
                ),
                Text(
                  'Cardiologista e Pesquisador Católico',
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(height: 20),
                Text(textAuthor, style: TextStyle(fontSize: 20)),
                SizedBox(
                  height: 20,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 20,
                  children: [
                    InfoCard(
                      icon: FontAwesomeIcons.stethoscope,
                      title: 'Cardiologista',
                      text: 'Especialista em medicina cardiovascular',
                    ),
                    InfoCard(
                      icon: FontAwesomeIcons.magnifyingGlass,
                      title: 'Pesquisador',
                      text: 'Investigação de milagres eucarísticos',
                    ),
                    InfoCard(
                      icon: FontAwesomeIcons.graduationCap,
                      title: 'Católico',
                      text: 'Fé de 2.000 e ciência em harmonia',
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

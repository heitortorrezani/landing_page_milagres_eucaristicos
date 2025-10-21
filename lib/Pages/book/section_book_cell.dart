import 'package:flutter/material.dart';
import 'package:landing_page_cardiologista/widgets/card.dart';
class SectionBookCell extends StatefulWidget {
  const SectionBookCell({ super.key });
  @override
  State<SectionBookCell> createState() => _SectionBookCellState();
}
class _SectionBookCellState extends State<SectionBookCell> {
   @override
   Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      color: Colors.white,
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            "Sobre o Livro",
            style: TextStyle(
              color: Colors.black,
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 8),
          Container(width: 100, height: 4, color: Colors.amber),
          const SizedBox(height: 40),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Uma Investigação Extraordinária",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                '''Um cardiologista italiano decide investigar, com o olhar da ciência moderna, alguns milagres eucarísticos reconhecidos pela Igreja Católica.
A partir de exames laboratoriais e estudos médicos, ele descobre evidências surpreendentes: as hóstias transformadas em carne e sangue contêm tecido cardíaco humano vivo.
O livro é uma jornada entre fé, razão e mistério, que desafia a fronteira entre o visível e o sobrenatural.''',
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 16,
                  height: 1.5,
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Tradução: Dra. Roberta Petroni Smiderle Passamani\nRevisão: Pe. Ricardo Petroni Smiderle Passamani",
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  color: Colors.black87,
                  fontSize: 14,
                ),
              ),
            ],
          ),
          const SizedBox(height: 40),
          const InfoCard(
            icon: Icons.favorite,
            title: "Tecido Cardíaco Vivo",
            text:
                "Exames revelam tecido cardíaco humano nas hóstias transformadas.",
          ),
          const SizedBox(height: 20),
          const InfoCard(
            icon: Icons.science,
            title: "Rigor Científico",
            text: "Investigação baseada em análises laboratoriais modernas.",
          ),
          const SizedBox(height: 20),
          const InfoCard(
            icon: Icons.lightbulb,
            title: "Fé e Razão",
            text: "Uma jornada que une o sobrenatural e o científico.",
          ),
          const SizedBox(height: 20),
          const InfoCard(
            icon: Icons.star,
            title: "Mistério Revelado",
            text:
                "O sagrado encontra a medicina em evidências surpreendentes.",
          ),
          const SizedBox(height: 40),
          Container(
            width: double.infinity,
            padding:
                const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
            decoration: BoxDecoration(
              color: const Color(0xFF0D1B2A),
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Column(
              children: [
                Text(
                  '"A união entre fé e ciência na revelação do mistério da Eucaristia"',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  "Mensagem central do livro",
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 13,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
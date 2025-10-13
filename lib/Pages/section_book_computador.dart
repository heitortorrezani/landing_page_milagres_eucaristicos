import 'package:flutter/material.dart';
import 'package:landing_page_cardiologista/widgets/card.dart';

class SectionBookComputador extends StatefulWidget {
  const SectionBookComputador({super.key});

  @override
  State<SectionBookComputador> createState() => _SectionBookComputadorState();
}

class _SectionBookComputadorState extends State<SectionBookComputador> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      color: Colors.white,
      padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 80),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Título
          Column(
            children: [
              const Text(
                "Sobre o Livro",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Container(width: 100, height: 4, color: Colors.amber),
            ],
          ),

          const SizedBox(height: 60),

          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Uma Investigação Extraordinária",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 16),
                    Text(
                      '''Um cardiologista italiano decide investigar, com o olhar da ciência moderna, alguns milagres eucarísticos reconhecidos pela Igreja Católica.

A partir de exames laboratoriais e estudos médicos, ele descobre evidências surpreendentes: as hóstias transformadas em carne e sangue contêm tecido cardíaco humano vivo.

O livro é uma jornada entre fé, razão e mistério, que desafia a fronteira entre o visível e o sobrenatural.''',
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 18,
                        height: 1.5,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Tradução: Dra. Roberta Petroni Smiderle Passamani\nRevisão: Pe. Ricardo Petroni Smiderle Passamani",
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        color: Colors.black87,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(width: 60),

              Expanded(
                flex: 2,
                child: Wrap(
                  spacing: 20,
                  runSpacing: 20,
                  children: const [
                    InfoCard(
                      icon: Icons.favorite,
                      title: "Tecido Cardíaco Vivo",
                      text:
                          "Exames revelam tecido cardíaco humano nas hóstias transformadas.",
                    ),
                    InfoCard(
                      icon: Icons.science,
                      title: "Rigor Científico",
                      text:
                          "Investigação baseada em análises laboratoriais modernas.",
                    ),
                    InfoCard(
                      icon: Icons.lightbulb,
                      title: "Fé e Razão",
                      text:
                          "Uma jornada que une o sobrenatural e o científico.",
                    ),
                    InfoCard(
                      icon: Icons.star,
                      title: "Mistério Revelado",
                      text:
                          "O sagrado encontra a medicina em evidências surpreendentes.",
                    ),
                  ],
                ),
              ),
            ],
          ),

          const SizedBox(height: 60),

          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
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
                    fontSize: 22,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  "Mensagem central do livro",
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 14,
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
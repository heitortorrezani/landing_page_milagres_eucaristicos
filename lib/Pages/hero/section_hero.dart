import 'package:flutter/material.dart';
import 'package:landing_page_cardiologista/Pages/final/final_controller.dart';
import 'package:landing_page_cardiologista/widgets/button.dart';

class SectionHero extends StatelessWidget {
  const SectionHero({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return Container(
      width: size.width,
      constraints: BoxConstraints(minHeight: size.height * 0.85),
      color: Colors.black,
      child: Stack(
        children: [
          Positioned.fill(
            child: Opacity(
              opacity: 0.5,
              child: Image.asset(
                'assets/milagre_de_lanciano.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),

          // Conteúdo adaptável
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: size.width * 0.05,
              vertical: 80,
            ),
            child: LayoutBuilder(
              builder: (context, constraints) {
                final isMobile = constraints.maxWidth < 700;

                if (isMobile) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'UM CARDIOLOGISTA',
                        style: const TextStyle(
                          fontSize: 32,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const Text(
                        'VISITA JESUS',
                        style: TextStyle(
                          fontSize: 32,
                          color: Colors.yellow,
                          fontWeight: FontWeight.bold,
                          shadows: [
                            BoxShadow(blurRadius: 20, color: Colors.yellow),
                          ],
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 40),
                      const Text(
                        'Os milagres eucarísticos à prova da ciência',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'Um cardiologista italiano investiga com rigor científico os milagres da Eucaristia, revelando evidências extraordinárias que unem fé e ciência.',
                        style: TextStyle(color: Colors.white70, height: 1.5),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 30),
                      Button(
                        label: 'Comprar',
                        width: 180,
                        onTap: () => OpenUrl(
                          'https://editoracoracoescatolicos.com.br/products/um-cardiologista-visita-jesus',
                        ),
                      ),
                      const SizedBox(height: 40),
                      Container(
                        width: size.width * 0.6,
                        constraints:
                            const BoxConstraints(maxWidth: 280, minWidth: 100),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.5),
                              blurRadius: 12,
                              offset: const Offset(0, 6),
                            ),
                          ],
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            'assets/capa_livro.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  );
                }

                return Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 3,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 60),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Text(
                              'UM CARDIOLOGISTA',
                              style: TextStyle(
                                fontSize: 50,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const Text(
                              'VISITA JESUS',
                              style: TextStyle(
                                fontSize: 50,
                                color: Colors.yellow,
                                fontWeight: FontWeight.bold,
                                shadows: [
                                  BoxShadow(
                                    blurRadius: 20,
                                    color: Colors.yellow,
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 40),
                            const Text(
                              'Os milagres eucarísticos à prova da ciência',
                              style: TextStyle(
                                fontSize: 28,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              'Um cardiologista italiano investiga com rigor científico os milagres da Eucaristia, revelando evidências extraordinárias que unem fé e ciência.',
                              style:
                                  TextStyle(color: Colors.white70, height: 1.5),
                            ),
                            const SizedBox(height: 40),
                            Button(
                              label: 'Comprar',
                              width: 250,
                              onTap: () => OpenUrl(
                                'https://editoracoracoescatolicos.com.br/products/um-cardiologista-visita-jesus',
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    Expanded(
                      flex: 2,
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          constraints: const BoxConstraints(
                              maxWidth: 320, minWidth: 200),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.5),
                                blurRadius: 12,
                                offset: const Offset(0, 6),
                              ),
                            ],
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              'assets/capa_livro.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

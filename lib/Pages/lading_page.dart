import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:landing_page_cardiologista/widgets/button.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: size.width,
              height: size.height * 0.85,
              child: Stack(
                children: [
                  Opacity(
                    opacity: 0.5,
                    child: Container(
                      width: size.width,
                      height: size.height * 0.85,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/hero-bg.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      foregroundDecoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.center,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.transparent,
                            Colors.black.withOpacity(0.6),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    right: size.width * 0.05,
                    bottom: 30,
                    child: Container(
                      width: size.width * 0.3,
                      constraints: const BoxConstraints(
                        maxWidth: 280,
                        minWidth: 150,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.5),
                            blurRadius: 12,
                            offset: Offset(0, 6),
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
                  Positioned(
                    left: size.width * 0.05,
                    top: 80,
                    child: SizedBox(
                      width: size.width * 0.5,
                      child: Column(
                        children: [
                          const Text(
                            'UM CARDIOLOGISTA',
                            style: TextStyle(fontSize: 50, color: Colors.white),
                          ),
                          const Text(
                            'VISITA JESUS',
                            style: TextStyle(
                              fontSize: 50,
                              color: Colors.yellow,
                            ),
                          ),
                          SizedBox(height: 70),
                          Text(
                            'Os milagres eucarísticos à prova da ciência',
                            style: TextStyle(fontSize: 30, color: Colors.white),
                          ),
                          Text(
                            'Um cardiologista italiano investiga com rigor científico os milagres da Eucaristia, revelando evidências extraordinárias que unem fé e ciência.',
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(height: 50),
                          Button(label: 'Comprar'),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //!separação--------------------------------------------------------------------------------------------------------------------------------------------
            Container(
              width: size.width,
              height: size.height * 0.85,
              //padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
              color: Colors.white,
              child: Column(
                children: [
                  SizedBox(height: 20),
                  Center(
                    child: Column(
                      children: [
                        const Text(
                          "Sobre o livro",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Container(width: 100, height: 5, color: Colors.yellow),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      SizedBox(width: 20,),
                      Container(
                        width: size.width * 0.40,
                        child: Column(
                          children: [
                            Text(
                              'Uma Investigação Extraordinária',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '''Um cardiologista italiano decide investigar, com o olhar da ciência moderna, alguns milagres eucarísticos reconhecidos pela Igreja Católica.

A partir de exames laboratoriais e estudos médicos, ele descobre evidências surpreendentes: as hóstias transformadas em carne e sangue contêm tecido cardíaco humano vivo.

O livro é uma jornada entre fé, razão e mistério, que desafia a fronteira entre o visível e o sobrenatural.''',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

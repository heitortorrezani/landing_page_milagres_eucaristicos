import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:landing_page_cardiologista/Pages/footer/fotter_controller.dart';
import 'package:landing_page_cardiologista/widgets/button.dart';
import 'package:landing_page_cardiologista/widgets/redes_sociais.dart';

class SectionFooter extends StatefulWidget {
  const SectionFooter({super.key});

  @override
  State<SectionFooter> createState() => _SectionFooterState();
}

class _SectionFooterState extends State<SectionFooter> {
  final TextEditingController _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return Container(
      width: size.width,
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.symmetric(vertical: 20),
      decoration: const BoxDecoration(color: Color(0xFF0D1B2A)),
      child: Column(
        spacing: 20,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (size.width > 900)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Coluna do título e descrição
                Expanded(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Um cardiologista visita Jesus',
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 20,
                          color: Colors.amber,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 5),
                      const Text(
                        'Uma investigação de Milagres Eucarísticos, gerando uma união entre a fé e a ciência.',
                        textAlign: TextAlign.center,
                        softWrap: true,
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                    ],
                  ),
                ),

                const SizedBox(width: 40),

                // Coluna do formulário
                Column(
                  children: [
                    const Text(
                      'Digite o seu Email aqui, caso deseje receber notificas sobre\n o livro em seu Email',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        SizedBox(
                          width: 300,
                          child: TextFormField(
                            controller: _controller,
                            decoration: InputDecoration(
                              labelText: 'Digite algo',
                              labelStyle:
                                  const TextStyle(color: Colors.white70),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              filled: true,
                              fillColor: Colors.white10,
                            ),
                            style: const TextStyle(color: Colors.white),
                          ),
                        ),
                        const SizedBox(width: 5),
                        Button(label: 'Send', width: 100, onTap: () {}),
                      ],
                    ),
                  ],
                ),

                const SizedBox(width: 40),

                // Coluna das redes sociais
                Column(
                  children: [
                    const Text(
                      'Conecte-se',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    Row(
                      children: [
                        RedesSociais(
                          iconn: FontAwesomeIcons.instagram,
                          onTap: () => OpenUrl(
                            url =
                                'https://www.instagram.com/coracoescatolicos/',
                          ),
                        ),
                        const SizedBox(width: 10),
                        RedesSociais(
                          iconn: FontAwesomeIcons.youtube,
                          onTap: () => OpenUrl(
                            url =
                                'https://www.youtube.com/@CoracoesCatolicos',
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            )
          // --- Layout mobile ---
          else
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Um cardiologista visita Jesus',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.amber,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 5),
                const Text(
                  'Uma investigação de Milagres Eucarísticos, gerando uma união entre a fé e a ciência.',
                  textAlign: TextAlign.center,
                  softWrap: true,
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
                const SizedBox(height: 25),

                // Formulário
                const Text(
                  'Digite o seu Email aqui, caso deseje receber notificas sobre\n o livro em seu Email',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
                const SizedBox(height: 15),
                Column(
                  children: [
                    SizedBox(
                      width: 280,
                      child: TextFormField(
                        controller: _controller,
                        decoration: InputDecoration(
                          labelText: 'Digite algo',
                          labelStyle:
                              const TextStyle(color: Colors.white70),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          filled: true,
                          fillColor: Colors.white10,
                        ),
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Button(label: 'Send', width: 120, onTap: () {}),
                  ],
                ),
                const SizedBox(height: 25),

                // Redes sociais
                const Text(
                  'Conecte-se',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RedesSociais(
                      iconn: FontAwesomeIcons.instagram,
                      onTap: () => OpenUrl(
                        url =
                            'https://www.instagram.com/coracoescatolicos/',
                      ),
                    ),
                    const SizedBox(width: 10),
                    RedesSociais(
                      iconn: FontAwesomeIcons.youtube,
                      onTap: () => OpenUrl(
                        url =
                            'https://www.youtube.com/@CoracoesCatolicos',
                      ),
                    ),
                  ],
                ),
              ],
            ),

          const SizedBox(height: 30),
          Container(
            width: size.width,
            height: 3,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white70
            ),
          ),

          Text(
            '© 2025 Um Cardiologista Visita Jesus. Todos os direitos reservados.',
            style: TextStyle(
              color: Colors.white70
            ),
            ),

        ],
      ),
    );
  }
}



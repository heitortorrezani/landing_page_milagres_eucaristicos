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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Column(
                        children: [
                          Center(
                            child: Text(
                              'Um cardiologista visita Jesus',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.amber,
                                fontWeight: FontWeight.bold,
                                
                              ),
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'Uma investigação de Milagres Eucarísticos, gerando uma união entre a fé e a ciência.',
                            style: TextStyle(fontSize: 12, color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                    
                  ],
                ),
              ),
          
              Spacer(),
          
              Expanded(
                flex: 0,
                child: Container(
                  child: Column(
                    children: [
                      Text(
                        'Digite o seu Email aqui, caso deseje receber notificas sobre\n o livro em seu Email',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white
                        ),
                        ),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          Container(
                            width: 300,
                            child: TextFormField(
                              controller: _controller,
                              decoration: InputDecoration(
                                labelText: 'Digite algo',
                                labelStyle: const TextStyle(color: Colors.white70),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                filled: true,
                                fillColor: Colors.white10,
                              ),
                              style: const TextStyle(color: Colors.white),
                            ),
                          ),
                          SizedBox(width: 5),
                          Button(label: 'Send', width: 100, onTap: () {})
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Spacer(),
              Expanded(
                flex: 0,
                child: Container(
                  child: Column(
                    children: [
                      Text('Conecte-se',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white
                      ),),
                      Row(
                        children: [
                          RedesSociais(
                            iconn: FontAwesomeIcons.instagram,
                            onTap: () =>
                              OpenUrl(
                                url = 'https://www.instagram.com/coracoescatolicos/'
                              ),
                          ),
                          SizedBox(width: 10,),
                          RedesSociais(
                            iconn: FontAwesomeIcons.youtube,
                            onTap: () => OpenUrl(url = 'https://www.youtube.com/@CoracoesCatolicos')
                              
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(width: 20,)
            ],
          ),
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



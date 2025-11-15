import 'package:flutter/material.dart';
import 'package:landing_page_cardiologista/Pages/final/final_controller.dart';
import 'package:landing_page_cardiologista/widgets/button.dart';
import 'package:landing_page_cardiologista/widgets/card_compra.dart';

class SectionFinal extends StatefulWidget {
  const SectionFinal({super.key});

  @override
  State<SectionFinal> createState() => _SectionFinalState();
}

class _SectionFinalState extends State<SectionFinal> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final cards = [
      CardCompra(
        icon: Icons.book,
        title: 'Formato Físico',
        description: 'Edição impressa de alta qualidade',
      ),
      CardCompra(
        icon: Icons.star,
        title: 'Presente Ideal',
        description: 'Para católicos e estudiosos da fé',
      ),
      CardCompra(
        icon: Icons.local_shipping,
        title: 'Entrega Rápida',
        description: 'Receba em poucos dias',
      ),
    ];
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        width: size.width,
        decoration: BoxDecoration(
          color: Color(0xFF0D1B2A),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 20),
      
            Text(
              'Adquira Seu Exemplar',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: size.width < 600 ? 32 : 50,
                fontWeight: FontWeight.bold,
              ),
            ),
      
            SizedBox(height: 10),
            Text(
              'Uma jornada única entre fé e ciência',
              style: TextStyle(
                color: Colors.white,
                fontSize: size.width < 600
                    ? 32
                    : 50,
                fontWeight: FontWeight.bold,
              ),
              softWrap: true,
              overflow: TextOverflow.visible,
            ),
            SizedBox(height: 10),
            Text(
              'Descubra como os Milagres Eucarísticos resistem ao escrutínio da medicina moderna e fortaleça sua fé através da ciência.',
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            SizedBox(height: 50),
            Button(
              label: 'Adquirir',
              onTap: () =>
                OpenUrl(
                  'https://editoracoracoescatolicos.com.br/products/um-cardiologista-visita-jesus'
                )
              ),
            SizedBox(height: 20),
            size.width >= 800
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: cards,
                  )
                : Column(
                    children: cards
                        .map(
                          (card) => Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            child: card,
                          ),
                        )
                        .toList(),
                  ),
          ],
        ),
      ),
    );
  }
}

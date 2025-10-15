import 'package:flutter/material.dart';
import 'package:landing_page_cardiologista/Pages/autor/section_author_cell.dart';
import 'package:landing_page_cardiologista/Pages/autor/section_author_computador.dart';
import 'package:landing_page_cardiologista/Pages/book/section_book_cell.dart';
import 'package:landing_page_cardiologista/Pages/book/section_book_computador.dart';
import 'package:landing_page_cardiologista/Pages/hero/section_hero.dart';

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
      backgroundColor: Color.fromRGBO(19, 32, 57, 100),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SectionHero(),
            if (size.width < 800) SectionBookCell(),
            if (size.width >= 800) SectionBookComputador(),
            if (size.width < 800) SectionAuthorCell(),
            if (size.width >= 800) SectionAuthorComputador(),
          ],
        ),
      ),
    );
  }
}

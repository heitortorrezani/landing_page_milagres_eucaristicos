import 'package:flutter/material.dart';

class SectionAuthor extends StatefulWidget {

  const SectionAuthor({ super.key });

  @override
  State<SectionAuthor> createState() => _SectionAuthorState();
}

class _SectionAuthorState extends State<SectionAuthor> {
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
          SizedBox(
            height: 20,
          ),
          Container(
            width: size.width*0.6,
            height: size.height*0.5,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.black),
              boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
            offset: Offset(0, 4),
          ),]
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Dr. Franco Serafini',
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.yellow,
                    shadows: [
                      BoxShadow(
                        blurRadius: 20,
                        color: Colors.yellow
                      )
                    ]
                  ),
                  ),
              ],
            ),
          )
        ]
      )
    );
  }
}
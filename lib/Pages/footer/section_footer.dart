import 'package:flutter/material.dart';

class SectionFooter extends StatefulWidget {
  const SectionFooter({super.key});

  @override
  State<SectionFooter> createState() => _SectionFooterState();
}

class _SectionFooterState extends State<SectionFooter> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Container(
      width: size.width,
      decoration: BoxDecoration(
        color: Color(0xFF0D1B2A),
      )
    );
  }
}
import 'package:flutter/material.dart';

class RedesSociais extends StatefulWidget {
  final IconData iconn;
  final Function() onTap;
  const RedesSociais({super.key, required this.iconn, required this.onTap});

  @override
  State<RedesSociais> createState() => _RedesSociaisState();
}

class _RedesSociaisState extends State<RedesSociais> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          color: Colors.white70,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Icon(widget.iconn),
      ),
    );
  }
}

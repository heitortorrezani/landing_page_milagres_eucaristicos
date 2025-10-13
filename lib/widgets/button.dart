import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String label;
  const Button({
    super.key,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      mouseCursor: SystemMouseCursors.click,
      onTap: () {},
    
      child: Container(
        width: 200,
        height: 50,
        decoration: BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              offset: Offset(3.0, 3.0),
              blurRadius: 20,
            )
          ]
        ),
        child: Center(
          child: Text(
            label,
            style: TextStyle(
              color: Color.fromRGBO(37,37,37,1),
              fontSize: 20
            ),
            )
          ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class LangName extends StatelessWidget {
  final String techName;
  final bool isSelected;
  final VoidCallback onTap;

  LangName({ 
    required this.techName,
    required this.isSelected,
    required this.onTap
  });


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(left: 25.0),
        child: Text(
          techName,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: isSelected ? Colors.orange :Colors.grey
          ),
        ),
      ),
    );
  }
}
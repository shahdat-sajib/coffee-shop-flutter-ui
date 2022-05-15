import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CoffeeType extends StatelessWidget {
  final String coffeeType;
  final bool isSelected;
  
  var onTap;
  
  CoffeeType({
    required this.coffeeType,
    required this.isSelected,
    required this.onTap,

  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(left: 25),
        child: Text(
          coffeeType,
          style: TextStyle(
            fontSize: 18, 
            fontWeight: FontWeight.bold, 
            color: isSelected ? Colors.orange : Colors.white),),
      ),
    );
  }
}
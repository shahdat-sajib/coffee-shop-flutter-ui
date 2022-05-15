import 'package:flutter/material.dart';


class CoffeeTile extends StatelessWidget {

  final String coffeeImagePath;
  final String coffeeName;
  final String coffeePrice;

  CoffeeTile({
    required this.coffeeImagePath,
    required this.coffeeName,
    required this.coffeePrice,
  });


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, bottom: 25),
      child: Container(
        padding: const EdgeInsets.all(12.0),
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.black54,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //card image
            ClipRRect(
              borderRadius: BorderRadius.circular(12.0),
              child: Image.asset(coffeeImagePath)),

              //card title
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                 Text(
                    coffeeName,
                    style: TextStyle(fontSize: 20),
                  ),
                  const SizedBox(height: 4,),
                  Text(
                    'With Almond Milk',
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                ],
              ),
            ),

            // price section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 Text('\$' + coffeePrice),
                  Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(color: Colors.orange,
                    borderRadius: BorderRadius.circular(6)),
                    
                    child: const Icon(Icons.add),
                    ),
                ],
              ),
            )


          ],
        ),
      ),
    );
  }
}
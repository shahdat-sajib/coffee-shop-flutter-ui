import 'package:flutter/material.dart';


class CoffeeTile extends StatelessWidget {
  const CoffeeTile({Key? key}) : super(key: key);

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
              child: Image.asset('lib/images/cup-1.jpg')),

              //card title
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'latte',
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
                 Text('\$4.00'),
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
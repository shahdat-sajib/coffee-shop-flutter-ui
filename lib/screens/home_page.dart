import 'package:coffee_shop_ui/util/coffee_tile.dart';
import 'package:coffee_shop_ui/util/coffee_type.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // list of coffee types
  final List coffeeType = [
    ['Cappucino', true],
    ['Latte', false],
    ['Black', false],
    ['Sugar Free', false],

  ];
  // user tapped on coffee types
  void coffeeTypeSelected(int index){
    setState(() {
      for(int i=0; i<coffeeType.length; i++){
        coffeeType[i][1] = false;
      }
      coffeeType[index][1] = true;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],

      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: const Icon(Icons.menu),
        // ignore: prefer_const_literals_to_create_immutables
        actions: [
          const Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: Icon(Icons.person),
          ),
        ],
      ),

      // ignore: prefer_const_literals_to_create_immutables
      bottomNavigationBar: BottomNavigationBar(items: [
        const BottomNavigationBarItem(
          icon: Padding(
            padding: EdgeInsets.only(top: 10),
            child: Icon(Icons.home),
          ),
          label: '',
        ),
        const BottomNavigationBarItem(
          icon: Padding(
            padding: EdgeInsets.only(top: 10),
            child: Icon(Icons.favorite),
          ),
          label: '',
        ),
        const BottomNavigationBarItem(
          icon: Padding(
            padding: EdgeInsets.only(top: 10),
            child: Icon(Icons.notifications),
          ),
          label: '',
        ),

      ],),
      
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Text("Find the best coffee for you", 
            style: GoogleFonts.bebasNeue(
              fontSize: 56.0
              ),
          ),),

          const SizedBox(height: 25,),
          ///////////////search bar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: 'Find your favourite coffee..',
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade600),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade600),
                )
              ),
            ),
          ),

          SizedBox(height: 25.0,),
          // horizontal scroll for types of coffee
          Container(
            height: 50,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: coffeeType.length,
              itemBuilder: ((context, index) {
              return CoffeeType(
                coffeeType: coffeeType[index][0], 
                isSelected: coffeeType[index][1],
                onTap: (){
                  coffeeTypeSelected(index);
                });
            }))
          ),

          ///////////coffee tiles start...............
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                CoffeeTile(
                  coffeeImagePath: 'lib/images/cup-1.jpg', 
                  coffeeName: 'Capuccino', 
                  coffeePrice: '11.00',
                ),
                CoffeeTile(
                  coffeeImagePath: 'lib/images/cup-2.jpg', 
                  coffeeName: 'Latte', 
                  coffeePrice: '9.00',
                ),
                CoffeeTile(
                  coffeeImagePath: 'lib/images/cup-3.jpg', 
                  coffeeName: 'Sugar Free Coffee', 
                  coffeePrice: '10.00',
                ),
                
            ],),
          )
        ],
      ),
    );
  }
}
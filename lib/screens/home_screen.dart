// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        leading: const Icon(Icons.short_text_sharp),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const TextField(
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: "Search",
                filled: true,
                border: OutlineInputBorder(borderSide: BorderSide.none)),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                CategoryWidget(
                  imagePath: 'images/food1.png',
                  text: 'All',
                ),
                CategoryWidget(
                  imagePath: 'images/food1.png',
                  text: 'Burger',
                ),
                CategoryWidget(
                  imagePath: 'images/food1.png',
                  text: 'Pizza',
                ),
                CategoryWidget(
                  imagePath: 'images/food1.png',
                  text: 'Chholle',
                ),
                CategoryWidget(
                  imagePath: 'images/food1.png',
                  text: 'Papadi',
                ),
                CategoryWidget(
                  imagePath: 'images/food1.png',
                  text: 'Samosha',
                ),
              ],
            ),
          ),
          // ignore: sized_box_for_whitespace
          Container(
            height: 500,
            child: GridView.builder(
              shrinkWrap: false,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 5.0,
                mainAxisSpacing: 5.0,
                childAspectRatio: 0.8
              ),
              itemCount: 50,
              itemBuilder: (context, index) {
                return FoodItemWidget(
                  imagePath: 'images/food1.png',
                  name: 'Burger',
                  price: '149',
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

// SINGLE FOOD ITEM WIDGET
class FoodItemWidget extends StatelessWidget {
  late String imagePath;
  late String name;
  late String price;

  FoodItemWidget({
    Key? key,
    required this.imagePath,
    required this.name,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 270,
      width: 200,
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.grey, borderRadius: BorderRadius.circular(10)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 40,
            backgroundColor: Colors.white,
            backgroundImage: AssetImage(imagePath),
          ),
          ListTile(
            leading: Text(
              name,
              style: const TextStyle(fontSize: 20),
            ),
            trailing: Text(
              price,
              style: const TextStyle(fontSize: 20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              children: const [
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// CATEGORY WIDGET
class CategoryWidget extends StatelessWidget {
  late String imagePath;
  late String text;

  CategoryWidget({
    Key? key,
    required this.imagePath,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(left: 20),
          height: 70,
          width: 70,
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(imagePath),
              ),
              color: Colors.grey,
              borderRadius: BorderRadius.circular(10)),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          text,
          style: const TextStyle(fontSize: 20),
        )
      ],
    );
  }
}

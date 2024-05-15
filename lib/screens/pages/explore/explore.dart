import 'package:flutter/material.dart';

import 'beverages.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
      const SizedBox(
        height: 18,
      ),
      const Text(
        'Find Products',
        style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
      ),
      const SizedBox(
        height: 18,
      ),
      Expanded(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40.0),
          child: GridView.builder(
              shrinkWrap: true,
              itemCount: gridMap.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 12.0,
                  mainAxisSpacing: 12.0),
              itemBuilder: (_, index) {
                return InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, Beverages.routeName);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        border:
                            Border.all(color: myColors[index].withOpacity(0.5)),
                        borderRadius: BorderRadius.circular(24.0),
                        color: myColors[index].withOpacity(0.2)),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                              gridMap.elementAt(index)["image"].toString()),
                          Text(
                            gridMap.elementAt(index)["title"].toString(),
                            style: const TextStyle(fontSize: 16),
                          )
                        ]),
                  ),
                );
              }),
        ),
      ),
    ]);
  }
}

List<Map> gridMap = [
  {
    "title": "   Fresh Fruits \n& Vegetables",
    "price": "\$15",
    "image": "assets/icons/pngfuel 6 (1).png",
  },
  {
    "title": "Cooking Oil & Ghee",
    "price": "\$55",
    "image": "assets/icons/pngfuel 8.png",
  },
  {
    "title": "Meet & Fish",
    "price": "\$25",
    "image": "assets/icons/meet.png",
  },
  {
    "title": "Dairy & Eggs",
    "price": "\$10",
    "image": "assets/icons/eggs.png",
  },
  {
    "title": "Beverages",
    "price": "\$5",
    "image": "assets/icons/pngfuel 6 (3).png",
  }
];
List<Color> myColors = [
  Colors.redAccent.shade100,
  Colors.greenAccent.shade100,
  Colors.purple.shade100,
  Colors.orange.shade100,
  Colors.brown.shade100,
];

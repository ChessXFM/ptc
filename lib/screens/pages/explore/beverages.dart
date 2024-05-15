import 'package:flutter/material.dart';

class Beverages extends StatelessWidget {
  static const routeName = '/Beverages';
  const Beverages({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            forceMaterialTransparency: true,
            foregroundColor: Colors.black,
            shadowColor: Colors.white,
            backgroundColor: Colors.white,
            title: const Text("Beverages"),
            centerTitle: true,
            actions: [
              Container(
                  height: 40,
                  width: 40,
                  margin: const EdgeInsets.all(7),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(13),
                      color: Colors.teal.shade300),
                  child: IconButton(
                    onPressed: () async {
                      _displayBottomSheet(context);
                    },
                    icon: const Icon(Icons.add),
                    color: Colors.white,
                  ))
            ]),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // const SizedBox(height: 10),
            Expanded(
              child: GridView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  shrinkWrap: true,
                  itemCount: beveMap.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 15,
                    crossAxisSpacing: 15,
                    crossAxisCount: 2,
                    childAspectRatio: 2 / 3,
                  ),
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                          border:
                              Border.all(color: Colors.black.withOpacity(0.2)),
                          borderRadius: BorderRadius.circular(24.0),
                          color: const Color.fromARGB(255, 255, 255, 255)
                              .withOpacity(0.2)),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const SizedBox(height: 14),
                            Image.asset(
                                beveMap.elementAt(index)["image"].toString()),
                            Text(
                              beveMap.elementAt(index)["title"].toString(),
                              style: const TextStyle(fontSize: 22),
                            ),
                            Text(
                              "${beveMap.elementAt(index)["howMany"]}                         ",
                              style: const TextStyle(
                                  fontSize: 18, color: Colors.grey),
                            ),
                            const Text(
                              'Price:                          ',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.grey),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  beveMap.elementAt(index)["price"].toString(),
                                  style: const TextStyle(fontSize: 26),
                                ),
                                Container(
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        color: Colors.teal.shade300,
                                        borderRadius:
                                            BorderRadius.circular(18)),
                                    child: IconButton(
                                        color: Colors.white,
                                        onPressed: () {},
                                        icon: const Icon(Icons.add)))
                              ],
                            ),
                          ]),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}

List<Map> beveMap = [
  {
    "title": "Sprite Can",
    "price": "22\$",
    "image": "assets/icons/pngfuel 12.png",
    "howMany": "350ml",
  },
  {
    "title": "Coca Cola",
    "price": "20\$",
    "image": "assets/icons/pngfuel 13.png",
    "howMany": "325ml",
  },
  {
    "title": "Apple Juice",
    "price": "30\$",
    "image": "assets/icons/tree-top-juice-apple-grape-64oz 1.png",
    "howMany": "400ml",
  },
  {
    "title": "Orange Juice",
    "price": "30\$",
    "image": "assets/icons/tree-top-juice-apple-grape-64oz 1 (1).png",
    "howMany": "400ml",
  },
];
Future _displayBottomSheet(BuildContext context) {
  return showModalBottomSheet(
      isScrollControlled: true,
      backgroundColor: Colors.grey.shade300,
      barrierColor: Colors.black.withOpacity(0.0000001),
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
      context: context,
      builder: (context) => SingleChildScrollView(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom),
            child: Container(
              padding: const EdgeInsets.all(20),
              height: 400,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      'Add',
                      style: TextStyle(fontSize: 20),
                    ),
                    const Divider(),
                    const TextField(
                      decoration: InputDecoration(hintText: "Name"),
                    ),
                    const TextField(
                      decoration: InputDecoration(hintText: "Description"),
                    ),
                    const TextField(
                      decoration: InputDecoration(hintText: "Price"),
                    ),
                    const TextField(
                      decoration: InputDecoration(hintText: "Image",suffixIcon:  Icon(Icons.arrow_forward_ios)),
                    ),
                   const SizedBox(height: 20,),
                    Container(
                      height: 100,
                      width: MediaQuery.sizeOf(context).width * 0.9,
                      decoration:  BoxDecoration(color: Colors.teal.shade300,borderRadius: const BorderRadius.all(Radius.circular(20))),
                   
                   child:const Center(child: Text('Add Item',style: TextStyle(fontSize: 28,color: Colors.white),)), ),
                  ]),
            ),
          ));
}

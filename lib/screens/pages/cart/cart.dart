import 'package:flutter/material.dart';
import 'package:ptcp/screens/pages/cart/accepted_order.dart';

class CartPage extends StatelessWidget {
  static const String routeName = '/MyCart';
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerFloat,
          floatingActionButton: SizedBox(
            width: MediaQuery.sizeOf(context).width * 0.8,
            height: MediaQuery.sizeOf(context).height * 0.08,
            child: FloatingActionButton.extended(
                backgroundColor: Colors.teal.shade300,
                onPressed: () async {
                  _displayBottomSheetCheck(context);
                },
                label: Text.rich(
                  TextSpan(
                      children: [
                        TextSpan(
                            text: '\$$finalPrice',
                            style: const TextStyle(fontSize: 15))
                      ],
                      style: const TextStyle(fontSize: 20),
                      text: 'Go To Check Out         '),
                )),
          ),
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: const Text('My Cart',
                style: TextStyle(fontWeight: FontWeight.bold)),
            centerTitle: true,
            forceMaterialTransparency: true,
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
          ),
          body: ListView.separated(
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15, top: 10, bottom: 10),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(myItems.elementAt(index)["image"]),
                        Column(
                          children: [
                            Text(
                              myItems.elementAt(index)["title"],
                              style: const TextStyle(
                                  fontSize: 19, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              myItems.elementAt(index)["howMany"],
                              style: const TextStyle(
                                  fontSize: 19, color: Colors.grey),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.grey.shade300),
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(18)),
                                    child: IconButton(
                                        color: Colors.grey,
                                        onPressed: () {},
                                        icon: const Icon(Icons.remove))),
                                const SizedBox(
                                  width: 15,
                                ),
                                const Text('1'),
                                const SizedBox(
                                  width: 15,
                                ),
                                Container(
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.grey.shade300),
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(18)),
                                    child: IconButton(
                                        color: Colors.teal.shade300,
                                        onPressed: () {},
                                        icon: const Icon(Icons.add))),
                              ],
                            )
                          ],
                        ),
                        Column(
                          children: [
                            IconButton(
                                icon: const Icon(Icons.close),
                                onPressed: () {}),
                            const SizedBox(height: 25),
                            Text(
                              myItems.elementAt(index)["price"],
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22,
                                  color: Colors.black),
                            )
                          ],
                        )
                      ]),
                );
              },
              separatorBuilder: (context, index2) {
                return const Divider();
              },
              itemCount: myItems.length)),
    );
  }
}

List<Map> myItems = [
  {
    "title": "Coca Cola",
    "price": "10\$",
    "image": "assets/icons/pngfuel 13.png",
    "howMany": "325ml",
  },
  {
    "title": "Egg Chicken",
    "price": "40\$",
    "image": "assets/icons/pngfuel 16.png",
    "howMany": "5Pcs",
  },
  {
    "title": "Bell Paper Red",
    "price": "5\$",
    "image": "assets/icons/92f1ea7dcce3b5d06cd1b1418f9b9413 3.png",
    "howMany": "1Pcs",
  },
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
    "title": "Coca Cola",
    "price": "20\$",
    "image": "assets/icons/pngfuel 13.png",
    "howMany": "325ml",
  },
  {
    "title": "Coca Cola",
    "price": "20\$",
    "image": "assets/icons/pngfuel 13.png",
    "howMany": "325ml",
  },
];
double finalPrice = 95.9;
Future _displayBottomSheetCheck(BuildContext context) {
  return showModalBottomSheet(
      isScrollControlled: true,
      backgroundColor: Colors.white,
      barrierColor: Colors.black.withOpacity(0.5),
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
      context: context,
      builder: (context) => SingleChildScrollView(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom),
            child: Container(
              padding: const EdgeInsets.all(26),
              height: 485,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'CheckOut',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Divider(),
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Delivery",
                        suffixIcon:
                            Row(mainAxisSize: MainAxisSize.min, children: [
                          const Text(
                            "Select Method",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          IconButton(
                              onPressed: () {},
                              icon:
                                  const Icon(Icons.arrow_forward_ios_outlined))
                        ]),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Payment",
                        suffixIcon:
                            Row(mainAxisSize: MainAxisSize.min, children: [
                          const Icon(
                            Icons.paypal_outlined,
                            color: Colors.black,
                          ),
                          IconButton(
                              onPressed: () {},
                              icon:
                                  const Icon(Icons.arrow_forward_ios_outlined))
                        ]),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Promo Code",
                        suffixIcon:
                            Row(mainAxisSize: MainAxisSize.min, children: [
                          const Text(
                            "Pick Discount",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          IconButton(
                              onPressed: () {},
                              icon:
                                  const Icon(Icons.arrow_forward_ios_outlined))
                        ]),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Total Cost",
                        suffixIcon:
                            Row(mainAxisSize: MainAxisSize.min, children: [
                          const Text(
                            "90\$",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          IconButton(
                              onPressed: () {},
                              icon:
                                  const Icon(Icons.arrow_forward_ios_outlined))
                        ]),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text.rich(TextSpan(
                        text: "By placing an oreder you agree to our\n",
                        children: [
                          TextSpan(
                              text: "Terms ",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          TextSpan(text: "And "),
                          TextSpan(
                              text: "Conditions",
                              style: TextStyle(fontWeight: FontWeight.bold))
                        ])),
                    const SizedBox(
                      height: 25,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamedAndRemoveUntil(
                            context, AcceptedOrder.routeName, (route) => false);
                      },
                      child: Container(
                        height: 70,
                        width: MediaQuery.sizeOf(context).width * 0.9,
                        decoration: BoxDecoration(
                            color: Colors.teal.shade300,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20))),
                        child: const Center(
                            child: Text(
                          'Place Order',
                          style: TextStyle(fontSize: 24, color: Colors.white),
                        )),
                      ),
                    ),
                  ]),
            ),
          ));
}

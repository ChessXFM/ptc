import 'package:flutter/material.dart';
import 'pages/account/account.dart';
import 'pages/favorite/favorite.dart';
import 'pages/shop/shop.dart';
import 'pages/cart/cart.dart';
import 'pages/explore/explore.dart';

class Home extends StatefulWidget {
  static const String routeName = '/Home';
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final PageController _pageController = PageController();
  int _currentIndex = 0;
  final List<Widget> _pages = const [
    ShopPage(),
    ExplorePage(),
    CartPage(),
    FavoritePage(),
    AccountPage()
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

          // appBar: AppBar(
          //   centerTitle: true,
          //   title: const Text('Find Products'),
          //   backgroundColor: Colors.white.withOpacity(1),
          // ),
          body: PageView(
              controller: _pageController,
              children: _pages,
              onPageChanged: (index) {
                setState(() {
                  _currentIndex = index;
                });
              }),
          bottomNavigationBar: BottomNavigationBar(
              iconSize: 30,
              selectedFontSize: 17,
              unselectedFontSize: 15,
              unselectedItemColor: Colors.black,
              elevation: 25,
              fixedColor: Colors.teal,
              backgroundColor: Colors.white,
              onTap: (index) {
                setState(() {
                  _currentIndex = index;
                  _pageController.jumpToPage(_currentIndex);
                });
              },
              currentIndex: _currentIndex,
              type: BottomNavigationBarType.fixed,
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(Icons.shopify_rounded), label: 'Shop'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.manage_search_rounded), label: 'Explore'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.shopping_cart), label: 'Cart'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.favorite_border_rounded),
                    label: 'Favorite'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person), label: 'Account'),
              ])),
    );
  }
}

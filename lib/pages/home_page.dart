import 'package:ahlat/components/bottom_nav_bar.dart';
import 'package:ahlat/pages/cart_page.dart';
import 'package:ahlat/pages/shop_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  //displaying pages

  final List<Widget> _pages = [

    const ShopPage(),

    const CartPage(),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
          builder: (context) {
            return IconButton(
              color: Colors.black54,
                onPressed: () {
                Scaffold.of(context).openDrawer();
                },
                icon: const Icon(Icons.menu_open_outlined),
            );
          }
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[800],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                DrawerHeader(child: Image.asset("lib/images/logo.jpeg")),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 7),
                  child: Divider(
                    color: Colors.white60,
                  ),
                ),

                const Padding(
                  padding: EdgeInsets.only(left: 12.0),
                  child: ListTile(
                    leading: Icon(Icons.home, color: Colors.white,),
                    title: Text("Anasayfa", style: TextStyle(color: Colors.white),),
                  ),
                ),

                const Padding(
                  padding: EdgeInsets.only(left: 12.0),
                  child: ListTile(
                    leading: Icon(Icons.info_outline, color: Colors.white,),
                    title: Text("Hakkımızda", style: TextStyle(color: Colors.white),),
                  ),
                ),
              ],
            ),

            const Padding(
              padding: EdgeInsets.only(left: 12.0, bottom: 10),
              child: ListTile(
                leading: Icon(Icons.logout_outlined, color: Colors.white,),
                title: Text("Çıkış Yap", style: TextStyle(color: Colors.white),),
              ),
            )
          ],
        ),
      ),
      backgroundColor: Colors.grey[100],
      bottomNavigationBar: NavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      body: _pages[_selectedIndex],
    );
  }
}

import 'package:ahlat/models/cart.dart';
import 'package:ahlat/models/wallet.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../components/wallet_tile.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {

  void addWalletToCart(Wallet wallet) {
    Provider.of<Cart>(context, listen: false).addItemToCart(wallet);

    //show message
    showDialog(
        context: context,
        builder: (context) => const AlertDialog(
          icon: Icon(Icons.done_outline, color: Colors.green,),
          title: Text("Ürün sepete eklendi!", style: TextStyle(color: Colors.green),),
          content: Text("Sepetinizi kontrol edebilirsiniz."),
        )

    );
  }
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(builder: (context, value, child) => Column(
      children: [
        //Searching
        Container(
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
              color: Colors.grey[300], borderRadius: BorderRadius.circular(12)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "Ara",
                style: TextStyle(color: Colors.grey),
              ),
              Icon(Icons.search),
            ],
          ),
        ),

        //Message
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 10.0),
          child: Text(
            "Herkesin cüzdanı vardır.. Bazılarıysa stil taşır.",
            style: TextStyle(color: Colors.grey),
          ),
        ),

        //Staff
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "Favoriler",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                "Hepsini gör",
                style: TextStyle(
                    fontSize: 15,
                    fontStyle: FontStyle.italic,
                    color: Colors.blue),
              ),
            ],
          ),
        ),

        const SizedBox(
          height: 20,
        ),

        Expanded(child: ListView.builder(
            itemCount: 4,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              Wallet wallet = value.getWalletList()[index];
              return WalletTile(
                wallet: wallet,
                onTap: () => addWalletToCart(wallet),
              );
            })),

        const Padding(
          padding: EdgeInsets.only(top: 5, left: 25, right: 25),
          child: Divider(
            color: Colors.white,
          ),
        )
      ],
    ),);
  }
}

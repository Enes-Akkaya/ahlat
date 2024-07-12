import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/cart.dart';

import '../models/wallet.dart';

class CartItem extends StatefulWidget {

  Wallet wallet;
  CartItem({super.key, required this.wallet});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {

  void removeItemFromCart() {
    Provider.of<Cart>(context, listen: false).removeItemFromCart(widget.wallet);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.grey[300],
      ),
      margin: EdgeInsets.only(bottom: 10),
      child: ListTile(
        leading: Image.asset(widget.wallet.imagePath),
        title: Text(widget.wallet.name),
        subtitle: Text(widget.wallet.price),
        trailing: IconButton(
          icon: Icon(Icons.delete),
          onPressed: removeItemFromCart,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../models/wallet.dart';

class WalletTile extends StatelessWidget {
  void Function()? onTap;
  Wallet wallet;

  WalletTile({super.key, required this.wallet, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20),
      width: 300,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16), color: Colors.grey[200]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //image
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: SizedBox( // Add a SizedBox for fixed dimensions
              height: 250, // Set your desired height
              width: 250,  // Set your desired width
              child: Image.asset(
                wallet.imagePath,
                fit: BoxFit.cover, // Adjust how the image fits within the SizedBox
              ),
            ),
          ),
          //description
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              wallet.description,
              style: TextStyle(color: Colors.black),
            ),
          ),
          //price
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //name
                    Text(
                      wallet.name,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    //price
                    Text("₺ " + wallet.price, style: const TextStyle(color: Colors.grey),),
                  ],
                ),

                //add sign
                GestureDetector(
                  onTap: onTap,
                  child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(14)),
                      child: Icon(Icons.add)),
                )
              ],
            ),
          )
          //add button
        ],
      ),
    );
  }
}

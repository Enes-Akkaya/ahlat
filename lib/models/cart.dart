import 'package:ahlat/models/wallet.dart';
import 'package:flutter/cupertino.dart';

class Cart extends ChangeNotifier{
  //list of wallets for sale
  List<Wallet> walletShop = [
    Wallet(name: "Kahverengi Deri Cüzdan", price: "1000", imagePath: "lib/images/wallet_1.jpg", description: "Yüksek kalite deriden el ile üretilmiş kahverengi cüzdan."),
    Wallet(name: "Sarı lacivert Deri Cüzdan", price: "1000", imagePath: "lib/images/wallet_2.jpg", description: "Yüksek kalite deriden el ile üretilmiş sarı lacivert cüzdan."),
    Wallet(name: "Siyah Deri Cüzdan", price: "1000", imagePath: "lib/images/wallet_3.jpg", description: "Yüksek kalite deriden el ile üretilmiş klasik siyah cüzdan."),
    Wallet(name: "Siyah Macbook Kılıfı", price: "1500", imagePath: "lib/images/mac.jpg", description: "Yüksek kalite deriden el ile üretilmiş macbook kılıfı."),
  ];
  //list of items in cart
List<Wallet> userCart = [];
  //get list of sale
List<Wallet> getWalletList() {
  return walletShop;
}
  //get cart
  List<Wallet> getUserCart() {
    return userCart;
  }
  //add item to cart
  void addItemToCart(Wallet wallet) {
  userCart.add(wallet);
  notifyListeners();
  }
  //remove item from cart
  void removeItemFromCart(Wallet wallet) {
  userCart.remove(wallet);
  notifyListeners();
}

}
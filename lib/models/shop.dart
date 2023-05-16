import 'package:flutter/cupertino.dart';
import 'package:tea_app_ui/models/drink.dart';

class BubbleTeaShop extends ChangeNotifier{
  //list of drinks for sale
  final List<Drink> _shop = [
    //pearl milk tea
    Drink(
        name: "Pearl Milk Tea",
        price: "4.00",
        imagePath: "lib/images/tea.jpeg"
    ),
  ];
  //list of drinks in user cart
  final List<Drink> _userCart = [];

  //get drinks for sale
  List<Drink> get shop => _shop;

  //get user cart
  List<Drink> get cart => _userCart;

  //add drink to cart
  void addToCart(Drink drink){
    _userCart.add(drink);
    notifyListeners();
  }

  //remove drink from the cart
  void removeFromCart(Drink drink){
    _userCart.remove(drink);
    notifyListeners();
  }
}
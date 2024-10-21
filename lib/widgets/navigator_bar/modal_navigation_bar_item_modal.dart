import 'package:flutter/material.dart';

class NavigationBarItemModal {
  int id;
  IconData icon;
  String name;
  NavigationBarItemModal(
      {required this.id, required this.name, required this.icon});
}

List<NavigationBarItemModal> navigationBarItemModalList = [
  NavigationBarItemModal(id: 0, name: "Home", icon: Icons.home),
  NavigationBarItemModal(id: 1, name: "Market", icon: Icons.shopify),
  NavigationBarItemModal(id: 2, name: "Hedaia", icon: Icons.mosque),
  NavigationBarItemModal(id: 3, name: "Profile", icon: Icons.person),
];

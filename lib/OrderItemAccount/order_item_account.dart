import 'package:delivoostores/Chat/UI/animated_bottom_bar.dart';
import 'package:delivoostores/Locale/locales.dart';
import 'package:delivoostores/OrderItemAccount/Account/UI/account_page.dart';
import 'package:delivoostores/OrderItemAccount/Order/UI/order_page.dart';
import 'package:delivoostores/Pages/items.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class OrderItemAccount extends StatefulWidget {
  @override
  _OrderItemAccountState createState() => _OrderItemAccountState();
}

class _OrderItemAccountState extends State<OrderItemAccount> {
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  final List<Widget> _children = [
    OrderPage(),
    ItemsPage(),
    AccountPage(),
  ];

  void onTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  static String bottomIconItem = 'images/footermenu/ic_item.png';

  static String bottomIconOrder = 'images/footermenu/ic_orders.png';

  static String bottomIconAccount = 'images/footermenu/ic_profile.png';

  @override
  Widget build(BuildContext context) {
    final List<BarItem> barItems = [
      BarItem(
        text: AppLocalizations.of(context).orderText,
        image: bottomIconOrder,
      ),
      BarItem(
        text: AppLocalizations.of(context).product,
        image: bottomIconItem,
      ),
      BarItem(
        text: AppLocalizations.of(context).account,
        image: bottomIconAccount,
      ),
    ];
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: _children,
      ),
      bottomNavigationBar: AnimatedBottomBar(
          barItems: barItems,
          onBarTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          }),
    );
  }
}

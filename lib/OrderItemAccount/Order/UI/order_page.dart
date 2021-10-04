import 'package:delivoostores/Locale/locales.dart';
import 'package:delivoostores/Themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:delivoostores/Routes/routes.dart';

class OrderPage extends StatefulWidget {
  @override
  _OrderPageState createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  @override
  Widget build(BuildContext context) {
    final List<Tab> tabs = <Tab>[
      Tab(text: AppLocalizations.of(context).newOrder),
      Tab(text: AppLocalizations.of(context).pastOrder),
    ];
    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(100.0),
          child: AppBar(
            centerTitle: true,
            title: Text(
              AppLocalizations.of(context).orderText,
              style: Theme.of(context).textTheme.bodyText1,
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(0.0),
              child: TabBar(
                tabs: tabs,
                isScrollable: true,
                labelColor: kMainColor,
                unselectedLabelColor: kLightTextColor,
                indicatorPadding: EdgeInsets.symmetric(horizontal: 24.0),
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: tabs.map((Tab tab) {
            return ListView(
              children: <Widget>[
                Divider(
                  color: Theme.of(context).cardColor,
                  thickness: 8.0,
                ),
                GestureDetector(
                  onTap: () =>
                      Navigator.pushNamed(context, PageRoutes.orderInfoPage),
                  child: ListTile(
                    leading: Image.asset(
                      'images/user.png',
                      scale: 2.5,
                      width: 33.7,
                      height: 42.3,
                    ),
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Samantha Smith\n',
                          style: Theme.of(context)
                              .textTheme
                              .headline4
                              .copyWith(fontSize: 13.3, letterSpacing: 0.07),
                        ),
                        Text(
                          'June 20, 11.35am',
                          style: Theme.of(context).textTheme.headline6.copyWith(
                              fontSize: 11.7,
                              letterSpacing: 0.06,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    trailing: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '\$ 20.50\n',
                          style: Theme.of(context)
                              .textTheme
                              .headline4
                              .copyWith(fontSize: 13.3, letterSpacing: 0.07),
                        ),
                        Text(AppLocalizations.of(context).cod,
                          style: Theme.of(context)
                              .textTheme
                              .headline6
                              .copyWith(
                              fontSize: 11.7,
                              letterSpacing: 0.06,
                              fontWeight: FontWeight.w500),),
                      ],
                    ),
                  ),
                ),
                Divider(
                  color: Theme.of(context).cardColor,
                  thickness: 1.0,
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
                  child: Row(
                    children: <Widget>[
                      Spacer(),
                      Text(
                          AppLocalizations.of(context).orderNumber + ' 2144142',
                          style: Theme.of(context).textTheme.caption.copyWith(
                              fontSize: 11.7,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0.06,
                              color: Color(0xff393939))),
                      Spacer(),
                      Text(AppLocalizations.of(context).items + ': 3',
                          style: Theme.of(context).textTheme.caption.copyWith(
                              fontSize: 11.7,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0.06,
                              color: Color(0xff393939))),
                      Spacer(),
                      Text(AppLocalizations.of(context).pending,
                          style: Theme.of(context).textTheme.headline4.copyWith(
                              color: Color(0xffffa025),
                              fontWeight: FontWeight.bold,
                              fontSize: 11.7,
                              letterSpacing: 0.06)),
                    ],
                  ),
                ),
                Divider(
                  color: Theme.of(context).cardColor,
                  thickness: 8.0,
                ),
                GestureDetector(
                  onTap: () =>
                      Navigator.pushNamed(context, PageRoutes.orderInfoPage),
                  child: ListTile(
                    leading: Image.asset(
                      'images/user.png',
                      scale: 2.5,
                      width: 33.7,
                      height: 42.3,
                    ),
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Emili Williamson\n',
                          style: Theme.of(context)
                              .textTheme
                              .headline4
                              .copyWith(fontSize: 13.3, letterSpacing: 0.07),
                        ),
                        Text(
                          'June 20, 11.35am',
                          style: Theme.of(context).textTheme.headline6.copyWith(
                              fontSize: 11.7,
                              letterSpacing: 0.06,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    trailing: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '\$ 12.50\n',
                          style: Theme.of(context)
                              .textTheme
                              .headline4
                              .copyWith(fontSize: 13.3, letterSpacing: 0.07),
                        ),
                        Text(AppLocalizations.of(context).online,
                          style: Theme.of(context)
                              .textTheme
                              .headline6
                              .copyWith(
                              fontSize: 11.7,
                              letterSpacing: 0.06,
                              fontWeight: FontWeight.w500),),
                      ],
                    ),
                  ),
                ),
                Divider(
                  color: Theme.of(context).cardColor,
                  thickness: 1.0,
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
                  child: Row(
                    children: <Widget>[
                      Spacer(),
                      Text(
                          AppLocalizations.of(context).orderNumber + ' 2144142',
                          style: Theme.of(context).textTheme.caption.copyWith(
                              fontSize: 11.7,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0.06,
                              color: Color(0xff393939))),
                      Spacer(),
                      Text(AppLocalizations.of(context).items + ': 2',
                          style: Theme.of(context).textTheme.caption.copyWith(
                              fontSize: 11.7,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0.06,
                              color: Color(0xff393939))),
                      Spacer(),
                      Text(AppLocalizations.of(context).pending,
                          style: Theme.of(context).textTheme.headline4.copyWith(
                              color: Color(0xffffa025),
                              fontWeight: FontWeight.bold,
                              fontSize: 11.7,
                              letterSpacing: 0.06)),
                    ],
                  ),
                ),
                Divider(
                  color: Theme.of(context).cardColor,
                  thickness: 8.0,
                ),
                GestureDetector(
                  onTap: () =>
                      Navigator.pushNamed(context, PageRoutes.orderInfoPage),
                  child: ListTile(
                    leading: Image.asset(
                      'images/user.png',
                      scale: 2.5,
                      width: 33.7,
                      height: 42.3,
                    ),
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Linda Taylor\n',
                          style: Theme.of(context)
                              .textTheme
                              .headline4
                              .copyWith(fontSize: 13.3, letterSpacing: 0.07),
                        ),
                        Text(
                          'June 20, 11.35am',
                          style: Theme.of(context).textTheme.headline6.copyWith(
                              fontSize: 11.7,
                              letterSpacing: 0.06,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    trailing: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '\$ 35.00\n',
                          style: Theme.of(context)
                              .textTheme
                              .headline4
                              .copyWith(fontSize: 13.3, letterSpacing: 0.07),
                        ),
                        Text(AppLocalizations.of(context).online,
                          style: Theme.of(context)
                              .textTheme
                              .headline6
                              .copyWith(
                              fontSize: 11.7,
                              letterSpacing: 0.06,
                              fontWeight: FontWeight.w500),),
                      ],
                    ),
                  ),
                ),
                Divider(
                  color: Theme.of(context).cardColor,
                  thickness: 1.0,
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
                  child: Row(
                    children: <Widget>[
                      Spacer(),
                      Text(
                          AppLocalizations.of(context).orderNumber + ' 2144142',
                          style: Theme.of(context).textTheme.caption.copyWith(
                              fontSize: 11.7,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0.06,
                              color: Color(0xff393939))),
                      Spacer(),
                      Text(AppLocalizations.of(context).items + ': 4',
                          style: Theme.of(context).textTheme.caption.copyWith(
                              fontSize: 11.7,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0.06,
                              color: Color(0xff393939))),
                      Spacer(),
                      Text(AppLocalizations.of(context).accepted,
                          style: Theme.of(context).textTheme.headline4.copyWith(
                              color: kMainColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 11.7,
                              letterSpacing: 0.06)),
                    ],
                  ),
                ),
                Divider(
                  color: Theme.of(context).cardColor,
                  thickness: 8.0,
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}

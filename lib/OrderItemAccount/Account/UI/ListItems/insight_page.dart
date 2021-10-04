import 'package:delivoostores/Locale/locales.dart';
import 'package:delivoostores/Themes/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:delivoostores/Routes/routes.dart';

class InsightPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context).insight,
            style: Theme.of(context).textTheme.bodyText1),
        titleSpacing: 0.0,
        actions: <Widget>[
          Row(
            children: <Widget>[
              Text(
                AppLocalizations.of(context).today.toUpperCase(),
                style: Theme.of(context).textTheme.headline4.copyWith(
                    fontSize: 15.0, letterSpacing: 1.5, color: kMainColor),
              ),
              IconButton(
                icon: Icon(Icons.arrow_drop_down),
                color: kMainColor,
                onPressed: () {
                  /*....*/
                },
              )
            ],
          )
        ],
      ),
      body: Insight(),
    );
  }
}

class Insight extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Divider(
          color: Theme.of(context).cardColor,
          thickness: 8.0,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 10.0),
          child: Row(
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(bottom: 8.0),
                    child: Text(
                      '32',
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  ),
                  Text(
                    AppLocalizations.of(context).orders,
                    style: Theme.of(context).textTheme.headline6.copyWith(
                        fontWeight: FontWeight.w500, color: kTextColor),
                  ),
                ],
              ),
              Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(bottom: 8.0),
                    child: Text(
                      '229',
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  ),
                  Text(
                    AppLocalizations.of(context).itemSold,
                    style: Theme.of(context).textTheme.headline6.copyWith(
                        fontWeight: FontWeight.w500, color: kTextColor),
                  ),
                ],
              ),
              Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(bottom: 8.0),
                    child: Text(
                      '\$494.50',
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  ),
                  Text(
                    AppLocalizations.of(context).earnings,
                    style: Theme.of(context).textTheme.headline6.copyWith(
                        fontWeight: FontWeight.w500, color: kTextColor),
                  ),
                ],
              ),
            ],
          ),
        ),
        Divider(
          color: Theme.of(context).cardColor,
          thickness: 6.7,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(AppLocalizations.of(context).earnings.toUpperCase(),
                  style: Theme.of(context)
                      .textTheme
                      .headline4
                      .copyWith(fontSize: 15.0, letterSpacing: 1.5)),
              Center(
                child: Image(
                  image: AssetImage("images/graph.png"),
                  height: 200.0,
                ),
              ),
              GestureDetector(
                onTap: () =>
                    Navigator.pushNamed(context, PageRoutes.walletPage),
                child: Center(
                  child: Text(
                    AppLocalizations.of(context).viewAll.toUpperCase(),
                    style: Theme.of(context).textTheme.caption.copyWith(
                        color: kMainColor,
                        letterSpacing: 1.33,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
        Divider(
          color: Theme.of(context).cardColor,
          thickness: 6.7,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(AppLocalizations.of(context).top,
                  style: Theme.of(context).textTheme.headline6.copyWith(
                      fontWeight: FontWeight.bold,color: Theme.of(context).secondaryHeaderColor,letterSpacing: 0.77)),
              Text(AppLocalizations.of(context).total,
                  style: Theme.of(context).textTheme.headline6),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            children: <Widget>[
              Image(
                image: AssetImage("images/veg/Vegetables/onion.png"),
                height: 61.3,
                width: 61.3,
              ),
              SizedBox(width: 10.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(AppLocalizations.of(context).onion,
                      style: Theme.of(context).textTheme.bodyText1.copyWith(
                          fontSize: 15.0, fontWeight: FontWeight.w500)),
                  SizedBox(height: 8.0),
                  Text('188 ' + AppLocalizations.of(context).sales,
                      style: Theme.of(context)
                          .textTheme
                          .caption
                          .copyWith(fontSize: 11.7)),
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
          child: Row(
            children: <Widget>[
              Image(
                image: AssetImage("images/veg/Vegetables/tomato.png"),
                height: 61.3,
                width: 61.3,
              ),
              SizedBox(width: 10.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(AppLocalizations.of(context).tomato,
                      style: Theme.of(context).textTheme.bodyText1.copyWith(
                          fontSize: 15.0, fontWeight: FontWeight.w500)),
                  SizedBox(height: 8.0),
                  Text('179 ' + AppLocalizations.of(context).sales,
                      style: Theme.of(context)
                          .textTheme
                          .caption
                          .copyWith(fontSize: 11.7)),
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            children: <Widget>[
              Image(
                image: AssetImage("images/veg/Vegetables/lady finger.png"),
                height: 61.3,
                width: 61.3,
              ),
              SizedBox(width: 10.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(AppLocalizations.of(context).fingers,
                      style: Theme.of(context).textTheme.bodyText1.copyWith(
                          fontSize: 15.0, fontWeight: FontWeight.w500)),
                  SizedBox(height: 8.0),
                  Text('154 ' + AppLocalizations.of(context).sales,
                      style: Theme.of(context)
                          .textTheme
                          .caption
                          .copyWith(fontSize: 11.7)),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

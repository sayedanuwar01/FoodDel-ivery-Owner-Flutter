import 'package:delivoostores/Components/list_tile.dart';
import 'package:delivoostores/Locale/locales.dart';
import 'package:delivoostores/Routes/routes.dart';
import 'package:delivoostores/Themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';

class AccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context).account, style: Theme.of(context).textTheme.bodyText1),
        centerTitle: true,
      ),
      body: Account(),
    );
  }
}

class Account extends StatefulWidget {
  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  String number;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        StoreDetails(),
        Divider(
          color: Theme.of(context).cardColor,
          thickness: 8.0,
        ),
        BuildListTile(
            image: 'images/account/ic_menu_insight.png',
            text: AppLocalizations.of(context).insight,
            onTap: () =>
                Navigator.pushNamed(context, PageRoutes.insightPage)),
        BuildListTile(
          image: 'images/account/ic_menu_wallet.png',
          text: AppLocalizations.of(context).wallet,
          onTap: () => Navigator.pushNamed(context, PageRoutes.walletPage),
        ),
        BuildListTile(
            image: 'images/account/ic_menu_reviewact.png',
            text: AppLocalizations.of(context).review,
            onTap: () => Navigator.pushNamed(context, PageRoutes.review)),
        BuildListTile(
            image: 'images/account/ic_menu_tncact.png',
            text: AppLocalizations.of(context).tnc,
            onTap: () => Navigator.pushNamed(context, PageRoutes.tncPage)),
        BuildListTile(
            image: 'images/account/ic_menu_supportact.png',
            text: AppLocalizations.of(context).support,
            onTap: () => Navigator.pushNamed(context, PageRoutes.supportPage,
                arguments: number)),
        BuildListTile(
            image: 'images/account/ic_menu_setting.png',
            text: AppLocalizations.of(context).settings,
            onTap: () => Navigator.pushNamed(context, PageRoutes.setting,
                arguments: number)),
        LogoutTile(),
      ],
    );
  }
}

class LogoutTile extends StatelessWidget {
  const LogoutTile({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BuildListTile(
      image: 'images/account/ic_menu_logoutact.png',
      text: AppLocalizations.of(context).logout,
      onTap: () {
        showDialog(
            context: context,
            barrierDismissible: false,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text(AppLocalizations.of(context).loggingOut),
                content: Text(AppLocalizations.of(context).areYouSure),
                actions: <Widget>[
                  FlatButton(
                    child: Text(AppLocalizations.of(context).no),
                    textColor: kMainColor,
                    shape: RoundedRectangleBorder(
                        side: BorderSide(color: kTransparentColor)),
                    onPressed: () => Navigator.pop(context),
                  ),
                  FlatButton(
                      child: Text(AppLocalizations.of(context).yes),
                      shape: RoundedRectangleBorder(
                          side: BorderSide(color: kTransparentColor)),
                      textColor: kMainColor,
                      onPressed: () {
                        Phoenix.rebirth(context);
                      })
                ],
              );
            });
      },
    );
  }
}

class StoreDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Row(
        children: <Widget>[
          Image(
            image: AssetImage("images/layer_1.png"), //delivoo logo
            height: 98.0,
            width: 98.0,
          ),
          SizedBox(width: 16.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(AppLocalizations.of(context).store,
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1
                      .copyWith(fontSize: 15.0, fontWeight: FontWeight.w500)),
              SizedBox(height: 8.0),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.location_on,
                    color: kLightTextColor,
                    size: 9.0,
                  ),
                  SizedBox(width: 5.0),
                  Text(AppLocalizations.of(context).storeText,
                      style: Theme.of(context)
                          .textTheme
                          .subtitle2
                          .copyWith(color: Color(0xff4a4b48), fontSize: 13.3)),
                ],
              ),

              GestureDetector(
                  child: Text(
                    '\n' + AppLocalizations.of(context).storeProfile,
                    style: TextStyle(
                        color: kMainColor,
                        fontSize: 13.3,
                        fontWeight: FontWeight.w500),
                  ),
                  onTap: () =>
                      Navigator.pushNamed(context, PageRoutes.storeProfile)),
              //  Text(email, style: Theme.of(context).textTheme.subtitle2),
            ],
          ),
        ],
      ),
    );
  }
}

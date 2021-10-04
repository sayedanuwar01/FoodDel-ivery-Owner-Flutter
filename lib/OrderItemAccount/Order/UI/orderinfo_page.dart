import 'package:delivoostores/Components/bottom_bar.dart';
import 'package:delivoostores/Components/custom_appbar.dart';
import 'package:delivoostores/Locale/locales.dart';
import 'package:delivoostores/Routes/routes.dart';
import 'package:delivoostores/Themes/colors.dart';
import 'package:flutter/material.dart';

class OrderInfo extends StatefulWidget {
  @override
  _OrderInfoState createState() => _OrderInfoState();
}

class _OrderInfoState extends State<OrderInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(124.0),
        child: CustomAppBar(
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(0.0),
            child: Container(
              color: Theme.of(context).scaffoldBackgroundColor,
              padding: EdgeInsets.symmetric(vertical: 12.0),
              child: ListTile(
                leading: Image.asset(
                  'images/user.png',
                  scale: 2.5,
                  height: 42.3,
                  width: 33.7,
                ),
                title: Text(
                  'Samantha Smith',
                  style: Theme.of(context)
                      .textTheme
                      .headline4
                      .copyWith(fontSize: 13.3, letterSpacing: 0.07),
                ),
                subtitle: Text(
                  'June 20, 11:35 am',
                  style: Theme.of(context)
                      .textTheme
                      .headline6
                      .copyWith(fontSize: 11.7, letterSpacing: 0.06),
                ),
                trailing: FittedBox(
                  fit: BoxFit.fill,
                  child: Row(
                    children: <Widget>[
                      IconButton(
                        icon: Icon(
                          Icons.message,
                          color: kMainColor,
                          size: 18.0,
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, PageRoutes.chatPage);
                        },
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.phone,
                          color: kMainColor,
                          size: 18.0,
                        ),
                        onPressed: () {
                          /*.......*/
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      body: Stack(
        children: <Widget>[
          ListView(
            children: <Widget>[
              Divider(
                color: Theme.of(context).cardColor,
                thickness: 8.0,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Container(
                  padding: EdgeInsets.symmetric( horizontal: 20.0),
                  child: Text(AppLocalizations.of(context).item,
                      style: Theme.of(context).textTheme.headline6.copyWith(
                          color: Color(0xffadadad), fontWeight: FontWeight.bold)),
                  color: Theme.of(context).scaffoldBackgroundColor,
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 6.0),
                height: 60.0,
                child: ListTile(
                  title: Text(
                    AppLocalizations.of(context).onion,
                    style: Theme.of(context).textTheme.headline4.copyWith(
                        fontSize: 15.0, fontWeight: FontWeight.w500),
                  ),
                  subtitle: Text(
                    '1 kg x 1',
                    style: Theme.of(context).textTheme.caption,
                  ),
                  trailing: Text(
                    '\$ 3.00',
                    style: Theme.of(context).textTheme.caption,
                  ),
                ),
              ),
              Divider(
                color: Theme.of(context).cardColor,
                thickness: 1.0,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 6.0),
                height: 60.0,
                child: ListTile(
                  title: Text(
                    AppLocalizations.of(context).fingers,
                    style: Theme.of(context).textTheme.headline4.copyWith(
                        fontSize: 15.0, fontWeight: FontWeight.w500),
                  ),
                  subtitle: Text(
                    '1 kg x 1',
                    style: Theme.of(context).textTheme.caption,
                  ),
                  trailing: Text(
                    '\$ 4.50',
                    style: Theme.of(context).textTheme.caption,
                  ),
                ),
              ),
              Divider(
                color: Theme.of(context).cardColor,
                thickness: 1.0,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 6.0),
                height: 60.0,
                child: ListTile(
                  title: Text(
                    AppLocalizations.of(context).tomato,
                    style: Theme.of(context).textTheme.headline4.copyWith(
                        fontSize: 15.0, fontWeight: FontWeight.w500),
                  ),
                  subtitle: Text(
                    '1 kg x 1',
                    style: Theme.of(context).textTheme.caption,
                  ),
                  trailing: Text(
                    '\$ 2.50',
                    style: Theme.of(context).textTheme.caption,
                  ),
                ),
              ),
              Divider(
                color: Theme.of(context).cardColor,
                thickness: 8.0,
              ),
              Container(
                height: 50,
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
                child: Row(
                  children: <Widget>[
                    SizedBox(width: 10.0),
                    Image.asset(
                      'images/custom/ic_instruction.png',
                      scale: 2.5,
                      height: 15.7,
                      width: 16.3,
                    ),
                    SizedBox(width: 18.0),
                    Text(
                      AppLocalizations.of(context).instruction,
                      style: Theme.of(context)
                          .textTheme
                          .caption
                          .copyWith(fontSize: 11.7),
                    )
                  ],
                ),
              ),
              Divider(
                color: Theme.of(context).cardColor,
                thickness: 8.0,
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
                child: Text(AppLocalizations.of(context).payment.toUpperCase(),
                    style: Theme.of(context).textTheme.headline6.copyWith(
                        color: kDisabledColor, fontWeight: FontWeight.bold)),
                color: Theme.of(context).scaffoldBackgroundColor,
              ),
              Container(
                color: Theme.of(context).scaffoldBackgroundColor,
                padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 20.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        AppLocalizations.of(context).sub,
                        style: Theme.of(context).textTheme.caption,
                      ),
                      Text(
                        '\$ 10.00',
                        style: Theme.of(context).textTheme.caption,
                      ),
                    ]),
              ),
              Divider(
                color: Theme.of(context).cardColor,
                thickness: 1.0,
              ),
              Container(
                color: Theme.of(context).scaffoldBackgroundColor,
                padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 20.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        AppLocalizations.of(context).service,
                        style: Theme.of(context).textTheme.caption,
                      ),
                      Text(
                        '\$ 1.50',
                        style: Theme.of(context).textTheme.caption,
                      ),
                    ]),
              ),
              Divider(
                color: Theme.of(context).cardColor,
                thickness: 1.0,
              ),
              Container(
                color: Theme.of(context).scaffoldBackgroundColor,
                padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 20.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        AppLocalizations.of(context).cod,
                        style: Theme.of(context)
                            .textTheme
                            .caption
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '\$ 11.50',
                        style: Theme.of(context).textTheme.caption,
                      ),
                    ]),
              ),
              SizedBox(
                height: 7.0,
              ),
              Container(
                height: 180.0,
                color: Theme.of(context).cardColor,
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                InkWell(
                  onTap: () => Navigator.pushNamed(context, PageRoutes.track),
                  child: Container(
                    color: Theme.of(context).scaffoldBackgroundColor,
                    child: ListTile(
                      leading: CircleAvatar(
                        radius: 22.0,
                        backgroundImage: AssetImage('images/profile.png'),
                      ),
                      title: Text(
                        'George Anderson',
                        style: Theme.of(context).textTheme.headline4.copyWith(
                            fontSize: 15.0, fontWeight: FontWeight.w500),
                      ),
                      subtitle: Text(
                        AppLocalizations.of(context).deliveryPartner,
                        style: Theme.of(context)
                            .textTheme
                            .headline6
                            .copyWith(fontSize: 11.7, letterSpacing: 0.06),
                      ),
                      trailing: IconButton(
                        icon: Icon(
                          Icons.navigation,
                          color: kMainColor,
                          size: 17.0,
                        ),
                      ),
                    ),
                  ),
                ),
                BottomBar(
                    text: AppLocalizations.of(context).ready,
                    onTap: () {
                      Navigator.pop(context);
                    })
              ],
            ),
          )
        ],
      ),
    );
  }
}

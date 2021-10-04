import 'package:delivoostores/Components/bottom_bar.dart';
import 'package:delivoostores/Components/custom_appbar.dart';
import 'package:delivoostores/Locale/locales.dart';
import 'package:delivoostores/Routes/routes.dart';
import 'package:delivoostores/Themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';


class LocationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SetLocation();
  }
}

class SetLocation extends StatefulWidget {
  @override
  _SetLocationState createState() => _SetLocationState();
}

class _SetLocationState extends State<SetLocation> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(126.0),
        child: CustomAppBar(
          titleWidget: Text(
            AppLocalizations.of(context).setLocation,
            style: TextStyle(fontSize: 16.7),
          ),
          onTap: null,
          hint: AppLocalizations.of(context).enterLocation,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          SizedBox(
            height: 8.0,
          ),
          Expanded(
            child: Stack(
              children: <Widget>[
                Image.asset(
                  'images/map.png',
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.fitWidth,
                ),
                Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 36.0),
                      child: Image.asset(
                        'images/map_pin.png',
                        height: 36,
                      ),
                    ))
              ],
            ),
          ),
          Container(
            color: kCardBackgroundColor,
            padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            child: Row(
              children: <Widget>[
                Image.asset(
                  'images/map_pin.png',
                  scale: 2.5,
                ),
                SizedBox(
                  width: 16.0,
                ),
                Expanded(
                  child: Text(
                    'Paris, France',
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.caption,
                  ),
                ),
              ],
            ),
          ),
          BottomBar(
              text: AppLocalizations.of(context).continueText,
              onTap: () =>
                  Navigator.popAndPushNamed(
                      context, PageRoutes.storeProfile),

              ),
        ],
      ),
    );
  }
}


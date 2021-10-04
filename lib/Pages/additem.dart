import 'package:delivoostores/Components/bottom_bar.dart';
import 'package:delivoostores/Components/entry_field.dart';
import 'package:delivoostores/Locale/locales.dart';
import 'package:delivoostores/Themes/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AddItem extends StatefulWidget {
  @override
  _AddItemState createState() => _AddItemState();
}

class _AddItemState extends State<AddItem> {
  @override
  Widget build(BuildContext context) {
    String stock = AppLocalizations.of(context).outStock;
    bool inStock = false;
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context).add,
            style: Theme.of(context).textTheme.bodyText1),
        titleSpacing: 0.0,
        actions: [
          Center(
            child: Text(
              '$stock',
              style:
                  Theme.of(context).textTheme.caption.copyWith(color: kHintColor),
            ),
          ),
          Switch(
            activeColor: kMainColor,
            activeTrackColor: kMainColor,
            value: inStock,
            onChanged: (value) {
              setState(() {
                inStock = value;
              });
              if (inStock == true)
                stock = AppLocalizations.of(context).stock;
              else if (inStock == false)
                stock = AppLocalizations.of(context).outStock;
            },
          )
        ],
      ),
      body: Add(),
    );
  }
}

class Add extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ListView(
          children: <Widget>[
            Divider(
              color: Theme.of(context).cardColor,
              thickness: 6.7,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: Text(
                      AppLocalizations.of(context).featureImage.toUpperCase(),
                      style: Theme.of(context).textTheme.headline6.copyWith(
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.67,
                          color: kHintColor),
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        height: 99.0,
                        width: 99.0,
                        color: Theme.of(context).cardColor,
                      ),
                      SizedBox(width: 24.0),
                      Icon(
                        Icons.camera_alt,
                        color: kMainColor,
                        size: 19.0,
                      ),
                      SizedBox(width: 14.3),
                      Text(AppLocalizations.of(context).uploadPhoto,
                          style: Theme.of(context)
                              .textTheme
                              .caption
                              .copyWith(color: kMainColor)),
                    ],
                  ),
                ],
              ),
            ),
            Divider(
              color: Theme.of(context).cardColor,
              thickness: 8.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
                  child: Text(
                    AppLocalizations.of(context).info,
                    style: Theme.of(context).textTheme.headline6.copyWith(
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.67,
                        color: kHintColor),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.0),
                  child: EntryField(
                    textCapitalization: TextCapitalization.words,
                    label: AppLocalizations.of(context).title,
                    hint: AppLocalizations.of(context).enterTitle,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.0),
                  child: EntryField(
                    suffixIcon: Icon(Icons.keyboard_arrow_down,color: Colors.black,),
                    textCapitalization: TextCapitalization.words,
                    label: AppLocalizations.of(context).itemCategory,
                    hint: AppLocalizations.of(context).selectCategory,
                  ),
                ),
              ],
            ),
            Divider(
              color: Theme.of(context).cardColor,
              thickness: 8.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
                  child: Text(
                    AppLocalizations.of(context).price,
                    style: Theme.of(context).textTheme.headline6.copyWith(
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.67,
                        color: kHintColor),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: EntryField(
                          textCapitalization: TextCapitalization.words,
                          label: AppLocalizations.of(context).price,
                          hint: AppLocalizations.of(context).enterPrice,
                        ),
                      ),
                      Expanded(
                        child: EntryField(
                          textCapitalization: TextCapitalization.words,
                          label: AppLocalizations.of(context).quantity,
                          hint: AppLocalizations.of(context).enterQuantity,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10.0,),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Text(AppLocalizations.of(context).addMore,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.green,
                            fontSize: 10,
                            letterSpacing: 0.5)),
                  ),
                ),
              ],
            ),
          ],
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: BottomBar(
            text: AppLocalizations.of(context).add,
            onTap: () => Navigator.pop(context),
          ),
        )
      ],
    );
  }
}

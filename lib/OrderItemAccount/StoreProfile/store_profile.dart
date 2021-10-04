import 'package:delivoostores/Locale/locales.dart';
import 'package:flutter/material.dart';
import 'package:delivoostores/Components/bottom_bar.dart';
import 'package:delivoostores/Components/entry_field.dart';
import 'package:delivoostores/Themes/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:delivoostores/Routes/routes.dart';

class ProfilePage extends StatelessWidget {
  static const String id = 'register_page';
  final String phoneNumber;

  ProfilePage({this.phoneNumber});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text(
          AppLocalizations.of(context).editProfile,
          style: TextStyle(fontSize: 16.7),
        ),
      ),

      //this column contains 3 textFields and a bottom bar
      body: RegisterForm(phoneNumber),
    );
  }
}

class RegisterForm extends StatefulWidget {
  final String phoneNumber;

  RegisterForm(this.phoneNumber);

  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView(
          children: <Widget>[
            Divider(
              color: Theme.of(context).cardColor,
              thickness: 8.0,
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
                        child: Image.asset('images/layer_1.png'),
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
                  padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                  child: Text(
                    AppLocalizations.of(context).profileInfo.toUpperCase(),
                    style: Theme.of(context).textTheme.headline6.copyWith(
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.67,
                        color: kHintColor),
                  ),
                ),
                //name textField
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.0),
                  child: EntryField(
                    textCapitalization: TextCapitalization.words,
                    label: AppLocalizations.of(context).fullName.toUpperCase(),
                    initialValue: AppLocalizations.of(context).store,
                  ),
                ),
                //category textField
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.0),
                  child: EntryField(
                    suffixIcon: Icon(Icons.keyboard_arrow_down),
                    textCapitalization: TextCapitalization.words,
                    label: AppLocalizations.of(context).category.toUpperCase(),
                    initialValue: AppLocalizations.of(context).vegetable,
                  ),
                ),
                //phone textField
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.0),
                  child: EntryField(
                    label:
                        AppLocalizations.of(context).mobileNumber.toUpperCase(),
                    initialValue: '+1 987 654 3210',
                    readOnly: true,
                  ),
                ),
                //email textField
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.0),
                  child: EntryField(
                    textCapitalization: TextCapitalization.none,
                    label:
                        AppLocalizations.of(context).emailAddress.toUpperCase(),
                    initialValue: 'storename@email.com',
                    keyboardType: TextInputType.emailAddress,
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
                  padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                  child: Text(
                    AppLocalizations.of(context).address.toUpperCase(),
                    style: Theme.of(context).textTheme.headline6.copyWith(
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.67,
                        color: kHintColor),
                  ),
                ),
                //address textField
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.0),
                  child: EntryField(
                    onTap: () =>
                        Navigator.pushNamed(context, PageRoutes.locationPage),
                    textCapitalization: TextCapitalization.words,
                    readOnly: true,
                    prefixIcon: Icon(
                      Icons.location_on,
                      color: kMainColor,
                      size: 16.0,
                    ),
                    initialValue:
                        '1124, Veggy Garden, Union Market, United States ',
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
                  padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                  child: Text(
                    AppLocalizations.of(context).storeTimings.toUpperCase(),
                    style: Theme.of(context).textTheme.headline6.copyWith(
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.67,
                        color: kHintColor),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: EntryField(
                          textCapitalization: TextCapitalization.words,
                          initialValue: '8:00 am',
                          label: AppLocalizations.of(context).openingTime.toUpperCase(),
                        ),
                      ),
                      SizedBox(width: 30.0,),
                      Expanded(
                        child: EntryField(
                          textCapitalization: TextCapitalization.words,
                          label: AppLocalizations.of(context).closingTime.toUpperCase(),
                          initialValue: '9:00 pm',
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 80.0,)
              ],
            ),
            //continue button bar
          ],
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: BottomBar(
              text: AppLocalizations.of(context).updateInfo,
              onTap: () {
                Navigator.pushNamed(context, PageRoutes.accountPage);
              }),
        ),
      ],
    );
  }
}

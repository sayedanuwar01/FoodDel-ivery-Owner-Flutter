import 'package:delivoostores/Components/custom_appbar.dart';
import 'package:delivoostores/Components/entry_field.dart';
import 'package:delivoostores/Locale/locales.dart';
import 'package:delivoostores/Themes/colors.dart';
import 'package:delivoostores/Themes/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TrackOrder extends StatefulWidget {
  @override
  _TrackOrderState createState() => _TrackOrderState();
}

class _TrackOrderState extends State<TrackOrder> {
  bool chatOpen = false;
  TextEditingController _messageController = TextEditingController();
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _messageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(144.0),
          child: CustomAppBar(
            leading: IconButton(
              icon: Hero(
                tag: 'arrow',
                child: Icon(Icons.keyboard_arrow_down),
              ),
              onPressed: () => Navigator.pop(context),
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(0.0),
              child: Hero(
                tag: 'Delivery Boy',
                child: Container(
                  color: Theme.of(context).scaffoldBackgroundColor,
                  padding: EdgeInsets.symmetric(vertical: 12.0),
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 22.0,
                      backgroundImage: AssetImage('images/profile.png'),
                    ),
                    title: Text(
                      'George Anderson',
                      style: Theme.of(context).textTheme.headline4,
                    ),
                    subtitle: Text(
                      AppLocalizations.of(context).deliveryPartner,
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    trailing: FittedBox(
                      fit: BoxFit.fill,
                      child: Row(
                        children: <Widget>[
                          IconButton(
                            icon: Icon(
                              chatOpen?Icons.close:Icons.message,
                              color: kMainColor,
                              size: 18.0,
                            ),
                            onPressed: () {
                              setState(() {
                                if (chatOpen)
                                  chatOpen = false;
                                else
                                  chatOpen = true;
                              });
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
          )),
      body: chatOpen?
      Stack(
        children: [
          Opacity(
            opacity: 0.08,
            child: Container(
              height: MediaQuery.of(context).size.height,
              child: Image.asset('images/map1.png',fit: BoxFit.fill,),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              MessageStream(),
              Container(
                color: Theme.of(context).scaffoldBackgroundColor,
                padding: EdgeInsets.symmetric(horizontal: 12.0),
                child: EntryField(
                  controller: _messageController,
                  hint: AppLocalizations.of(context).enterMessage,
                  suffixIcon: IconButton(
                    icon: Icon(
                      Icons.send,
                      color: kMainColor,
                    ),
                    onPressed: () {
                      _messageController.clear();
                    },
                  ),
                  border: InputBorder.none,
                ),
              ),
            ],
          ),
        ],
      )
          :Container(
        height: MediaQuery.of(context).size.height,
        child: Image.asset('images/map1.png',fit: BoxFit.fill,),
      ),
    );
  }
}


class MessageStream extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<MessageBubble> messageBubbles = [
      MessageBubble(
        sender: 'user',
        text: AppLocalizations.of(context).heyThere,
        time: '11:58 am',
        isDelivered: false,
        isMe: true,
      ),
      MessageBubble(
        sender: 'delivery_partner',
        text: AppLocalizations.of(context).onMyWay,
        time: '11:59 am',
        isDelivered: false,
        isMe: false,
      ),
    ];
    return Expanded(
      child: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        children: messageBubbles,
      ),
    );
  }
}

class MessageBubble extends StatelessWidget {
  final bool isMe;
  final String text;
  final String sender;
  final String time;
  final bool isDelivered;

  MessageBubble(
      {this.sender, this.text, this.time, this.isMe, this.isDelivered});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment:
        isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: <Widget>[
          Material(
            elevation: 4.0,
            color: isMe ? kMainColor : Theme.of(context).scaffoldBackgroundColor,
            borderRadius: BorderRadius.circular(6.0),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 12.0),
              child: Column(
                crossAxisAlignment:
                isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    text,
                    style: isMe
                        ? bottomBarTextStyle
                        : Theme.of(context)
                        .textTheme
                        .caption
                        .copyWith(fontSize: 15.0),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        time,
                        style: TextStyle(
                          fontSize: 10.0,
                          color: isMe
                              ? kWhiteColor.withOpacity(0.75)
                              : kLightTextColor,
                        ),
                      ),
                      isMe
                          ? Icon(
                        Icons.check_circle,
                        color: isDelivered ? Colors.blue : kDisabledColor,
                        size: 12.0,
                      )
                          : SizedBox.shrink(),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

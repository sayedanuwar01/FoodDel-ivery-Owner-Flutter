import 'package:delivoostores/Components/custom_appbar.dart';
import 'package:delivoostores/Locale/locales.dart';
import 'package:delivoostores/Themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:delivoostores/Routes/routes.dart';

class ItemsPage extends StatefulWidget {
  @override
  _ItemsPageState createState() => _ItemsPageState();
}

class _ItemsPageState extends State<ItemsPage> {
  List<DropdownMenuItem<int>> listDrop = [];
  int selected;

  void loadData() {
    listDrop = [];
    listDrop.add(DropdownMenuItem(
      child: Text('0.25 kg'),
      value: 1,
    ));
    listDrop.add(DropdownMenuItem(
      child: Text('0.5 kg'),
      value: 2,
    ));
    listDrop.add(DropdownMenuItem(
      child: Text('1 kg'),
      value: 3,
    ));
  }

  @override
  Widget build(BuildContext context) {
    String stock = AppLocalizations.of(context).outStock;
    bool inStock = false;
    final List<Tab> tabs = <Tab>[
      Tab(text: AppLocalizations.of(context).vegetables),
      Tab(text: AppLocalizations.of(context).fruits),
      Tab(text: AppLocalizations.of(context).herbs),
      Tab(text: AppLocalizations.of(context).dairy),
    ];
    loadData();
    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(100.0),
          child: CustomAppBar(
            titleWidget: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Center(child: Text(AppLocalizations.of(context).product)),
              ],
            ),
            actions: <Widget>[
              IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {
                    // CustomSearchBar(hint: 'Search item');
                  }),
            ],
            bottom: TabBar(
              tabs: tabs,
              isScrollable: true,
              labelColor: kMainColor,
              unselectedLabelColor: kLightTextColor,
              indicatorPadding: EdgeInsets.symmetric(horizontal: 24.0),
            ),
          ),
        ),
        body: TabBarView(
          children: tabs.map((Tab tab) {
            return ListView(
              children: <Widget>[
                Divider(
                  color: Theme.of(context).cardColor,
                  thickness: 6.3,
                ),
                InkWell(
                  onTap: () =>
                      Navigator.pushNamed(context, PageRoutes.editItem),
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Image.asset(
                          'images/veg/Vegetables/onion.png',
                          scale: 2.5,
                          height: 93.3,
                          width: 93.3,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(AppLocalizations.of(context).onion,
                              style: Theme.of(context)
                                  .textTheme
                                  .headline4
                                  .copyWith(
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.w500)),
                          Text('\n\$ 3.00\n',
                              style: Theme.of(context).textTheme.caption),
                          Row(
                            children: [
                              Container(
                                height: 30.0,
                                padding: EdgeInsets.symmetric(horizontal: 12.0),
                                decoration: BoxDecoration(
                                  color: Theme.of(context).cardColor,
                                  borderRadius: BorderRadius.circular(30.0),
                                ),
                                child: DropdownButtonHideUnderline(
                                  child: DropdownButton(
                                      icon: Icon(
                                        Icons.keyboard_arrow_down,
                                        size: 16.7,
                                      ),
                                      iconEnabledColor: Colors.green,
                                      value: selected,
                                      items: listDrop,
                                      hint: Text(
                                        '1 kg',
                                        style: Theme.of(context).textTheme.caption,
                                      ),
                                      onChanged: (value) {
                                        setState(() {
                                          selected = value;
                                        });
                                      }),
                                ),
                              ),
                              SizedBox(width: 10.0,),
                              FittedBox(
                                child: Row(
                                  children: [
                                    Text(
                                      '$stock',
                                      style: TextStyle(
                                          color: kHintColor,
                                          fontSize: 13.3,
                                          fontWeight: FontWeight.bold),
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
                              )

                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () =>
                      Navigator.pushNamed(context, PageRoutes.editItem),
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Image.asset(
                          'images/veg/Vegetables/tomato.png',
                          scale: 2.5,
                          height: 93.3,
                          width: 93.3,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(AppLocalizations.of(context).tomato,
                              style: Theme.of(context)
                                  .textTheme
                                  .headline4
                                  .copyWith(
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w500)),
                          Text('\n\$ 4.50\n',
                              style: Theme.of(context).textTheme.caption),
                          Row(
                            children: [
                              Container(
                                height: 30.0,
                                padding: EdgeInsets.symmetric(horizontal: 12.0),
                                decoration: BoxDecoration(
                                  color: Theme.of(context).cardColor,
                                  borderRadius: BorderRadius.circular(30.0),
                                ),
                                child: DropdownButtonHideUnderline(
                                  child: DropdownButton(
                                      icon: Icon(
                                        Icons.keyboard_arrow_down,
                                        size: 16.7,
                                      ),
                                      iconEnabledColor: Colors.green,
                                      value: selected,
                                      items: listDrop,
                                      hint: Text(
                                        '1 kg',
                                        style: Theme.of(context).textTheme.caption,
                                      ),
                                      onChanged: (value) {
                                        setState(() {
                                          selected = value;
                                        });
                                      }),
                                ),
                              ),
                              SizedBox(width: 10.0,),
                              FittedBox(
                                child: Row(
                                  children: [
                                    Text(
                                      '$stock',
                                      style: TextStyle(
                                          color: kHintColor,
                                          fontSize: 13.3,
                                          fontWeight: FontWeight.bold),
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
                              )

                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () =>
                      Navigator.pushNamed(context, PageRoutes.editItem),
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Image.asset(
                          'images/veg/Vegetables/lady finger.png',
                          scale: 2.5,
                          height: 93.3,
                          width: 93.3,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(AppLocalizations.of(context).fingers,
                              style: Theme.of(context)
                                  .textTheme
                                  .headline4
                                  .copyWith(
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w500)),
                          Text('\n\$ 6.00\n',
                              style: Theme.of(context).textTheme.caption),
                          Row(
                            children: [
                              Container(
                                height: 30.0,
                                padding: EdgeInsets.symmetric(horizontal: 12.0),
                                decoration: BoxDecoration(
                                  color: Theme.of(context).cardColor,
                                  borderRadius: BorderRadius.circular(30.0),
                                ),
                                child: DropdownButtonHideUnderline(
                                  child: DropdownButton(
                                      icon: Icon(
                                        Icons.keyboard_arrow_down,
                                        size: 16.7,
                                      ),
                                      iconEnabledColor: Colors.green,
                                      value: selected,
                                      items: listDrop,
                                      hint: Text(
                                        '1 kg',
                                        style: Theme.of(context).textTheme.caption,
                                      ),
                                      onChanged: (value) {
                                        setState(() {
                                          selected = value;
                                        });
                                      }),
                                ),
                              ),
                              SizedBox(width: 10.0,),
                              FittedBox(
                                child: Row(
                                  children: [
                                    Text(
                                      '$stock',
                                      style: TextStyle(
                                          color: kHintColor,
                                          fontSize: 13.3,
                                          fontWeight: FontWeight.bold),
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
                              )

                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

              ],
            );
          }).toList(),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: kMainColor,
          onPressed: () => Navigator.pushNamed(context, PageRoutes.addItem),
          tooltip: AppLocalizations.of(context).add,
          child: Icon(
            Icons.add,
            size: 15.7,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

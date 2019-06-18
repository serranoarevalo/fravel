import 'package:flutter/material.dart';

class Tabs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30),
      child: DefaultTabController(
          initialIndex: 0,
          length: 4,
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.symmetric(horizontal: 30),
                child: TabBar(
                    indicatorSize: TabBarIndicatorSize.label,
                    isScrollable: true,
                    indicatorColor: Colors.orangeAccent,
                    unselectedLabelColor: Colors.grey,
                    labelPadding: EdgeInsets.only(
                      bottom: 15,
                    ),
                    indicatorWeight: 3.5,
                    labelColor: Colors.black,
                    labelStyle: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                    tabs: <Widget>[
                      Container(
                        width: 140,
                        child: Center(
                          child: Text("Popular"),
                        ),
                      ),
                      Container(
                        width: 140,
                        child: Center(
                          child: Text("New"),
                        ),
                      ),
                      Container(
                        width: 140,
                        child: Center(
                          child: Text("Recommended"),
                        ),
                      ),
                      Container(
                        width: 140,
                        child: Center(
                          child: Text("Saved"),
                        ),
                      ),
                    ]),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 25),
                padding: EdgeInsets.symmetric(horizontal: 30),
                height: 250,
                child: TabBarView(children: <Widget>[
                  Text("Popular"),
                  Text("New"),
                  Text("Recommended"),
                  Text("Saved"),
                ]),
              )
            ],
          )),
    );
  }
}

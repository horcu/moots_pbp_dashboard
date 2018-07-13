import 'package:flutter/material.dart';



import 'PlayByPlay.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> with SingleTickerProviderStateMixin {

  TabController tabController;
  final List<List<double>> charts = [
    [
      0.0,
      0.3,
      0.7,
      0.6,
      0.55,
      0.8,
      1.2,
      1.3,
      1.35,
      0.9,
      1.5,
      1.7,
      1.8,
      1.7,
      1.2,
      0.8,
      1.9,
      2.0,
      2.2,
      1.9,
      2.2,
      2.1,
      2.0,
      2.3,
      2.4,
      2.45,
      2.6,
      3.6,
      2.6,
      2.7,
      2.9,
      2.8,
      3.4
    ],
    [
      0.0,
      0.3,
      0.7,
      0.6,
      0.55,
      0.8,
      1.2,
      1.3,
      1.35,
      0.9,
      1.5,
      1.7,
      1.8,
      1.7,
      1.2,
      0.8,
      1.9,
      2.0,
      2.2,
      1.9,
      2.2,
      2.1,
      2.0,
      2.3,
      2.4,
      2.45,
      2.6,
      3.6,
      2.6,
      2.7,
      2.9,
      2.8,
      3.4,
      0.0,
      0.3,
      0.7,
      0.6,
      0.55,
      0.8,
      1.2,
      1.3,
      1.35,
      0.9,
      1.5,
      1.7,
      1.8,
      1.7,
      1.2,
      0.8,
      1.9,
      2.0,
      2.2,
      1.9,
      2.2,
      2.1,
      2.0,
      2.3,
      2.4,
      2.45,
      2.6,
      3.6,
      2.6,
      2.7,
      2.9,
      2.8,
      3.4,
    ],
    [
      0.0,
      0.3,
      0.7,
      0.6,
      0.55,
      0.8,
      1.2,
      1.3,
      1.35,
      0.9,
      1.5,
      1.7,
      1.8,
      1.7,
      1.2,
      0.8,
      1.9,
      2.0,
      2.2,
      1.9,
      2.2,
      2.1,
      2.0,
      2.3,
      2.4,
      2.45,
      2.6,
      3.6,
      2.6,
      2.7,
      2.9,
      2.8,
      3.4,
      0.0,
      0.3,
      0.7,
      0.6,
      0.55,
      0.8,
      1.2,
      1.3,
      1.35,
      0.9,
      1.5,
      1.7,
      1.8,
      1.7,
      1.2,
      0.8,
      1.9,
      2.0,
      2.2,
      1.9,
      2.2,
      2.1,
      2.0,
      2.3,
      2.4,
      2.45,
      2.6,
      3.6,
      2.6,
      2.7,
      2.9,
      2.8,
      3.4,
      0.0,
      0.3,
      0.7,
      0.6,
      0.55,
      0.8,
      1.2,
      1.3,
      1.35,
      0.9,
      1.5,
      1.7,
      1.8,
      1.7,
      1.2,
      0.8,
      1.9,
      2.0,
      2.2,
      1.9,
      2.2,
      2.1,
      2.0,
      2.3,
      2.4,
      2.45,
      2.6,
      3.6,
      2.6,
      2.7,
      2.9,
      2.8,
      3.4
    ]
  ];

  static final List<String> chartDropdownItems = [
    'Last 7 days',
    'Last month',
    'Last year'
  ];
  String actualDropdown = chartDropdownItems[0];
  int actualChart = 0;

  @override
  void dispose(){
    super.dispose();
    tabController.dispose();
  }

  @override
  void initState(){
    super.initState();
    tabController = new TabController(length: 3,vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar
          (
          elevation: 0.0,
          backgroundColor: Colors.transparent,

          title: Text('Seahawks @ Patriots', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700)),

          // actions: <Widget>
          // [
          //   Container
          //   (
          //     margin: EdgeInsets.only(right: 8.0),
          //     child: Row
          //     (
          //       mainAxisAlignment: MainAxisAlignment.center,
          //       crossAxisAlignment: CrossAxisAlignment.center,
          //       children: <Widget>
          //       [
          //         Text('beclothed.com', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 14.0)),
          //         Icon(Icons.arrow_drop_down, color: Colors.black54)
          //       ],
          //     ),
          //   )
          // ],
        ),
        body: new TabBarView(
          children: <Widget>[
            new PlayByPlay("firt set team head to head"),
            new PlayByPlay('the other one!'),
            new PlayByPlay('headset is on?')
          ],
          controller: tabController,
        ),
        //now we can just create a bottomnavigationBar under our scaffold
        bottomNavigationBar:new Material(
          color: Colors.transparent,
          child: new TabBar(
            controller: tabController,
            tabs: <Widget>[
              new Tab(
                child: new Icon(Icons.star),
              ),
              new Tab(
                child: new Icon(Icons.favorite),
              ),
              new Tab(
                child: new Icon(Icons.headset),
              ),
            ],
          ),
        ));

//        body: StaggeredGridView.count(
//          crossAxisCount: 2,
//          crossAxisSpacing: 4.0,
//          mainAxisSpacing: 4.0,
//          padding: EdgeInsets.symmetric(horizontal: 0.0, vertical: 16.0),
//          children: <Widget>[
//            _buildTile(
//              Padding(
//                padding: const EdgeInsets.all(24.0),
//                child: Row(
//                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                    crossAxisAlignment: CrossAxisAlignment.center,
//                    children: <Widget>[
//                      Column(
//                        mainAxisAlignment: MainAxisAlignment.center,
//                        crossAxisAlignment: CrossAxisAlignment.start,
//                        children: <Widget>[
//                          Row(
//                            children: <Widget>[
//                              Icon(Icons.arrow_drop_down, color: Colors.red),
//                              Text('down \$2.50',
//                                  style: TextStyle(color: Colors.redAccent))
//                            ],
//                          ),
//                          Text('\$142.00',
//                              style: TextStyle(
//                                  color: Colors.green,
//                                  fontWeight: FontWeight.w700,
//                                  fontSize: 32.0))
//                        ],
//                      ),
//                      Material(
//                          color: Colors.blue,
//                          borderRadius: BorderRadius.circular(16.0),
//                          child: Center(
//                              child: Padding(
//                            padding: const EdgeInsets.all(16.0),
//                            child: Center(
//                              child: Icon(Icons.attach_money,
//                                  color: Colors.white, size: 30.0),
//                            ),
//                          )))
//                    ]),
//              ),
//            ),
//            _buildTile(
//              Padding(
//                padding: const EdgeInsets.all(24.0),
//                child: Column(
//                    mainAxisAlignment: MainAxisAlignment.start,
//                    crossAxisAlignment: CrossAxisAlignment.start,
//                    children: <Widget>[
//                      Material(
//                          color: Colors.blue,
//                          shape: CircleBorder(),
//                          child: Padding(
//                            padding: const EdgeInsets.all(16.0),
//                            child: Icon(Icons.settings_applications,
//                                color: Colors.white, size: 45.0),
//                          )),
//                      Padding(padding: EdgeInsets.only(bottom: 2.0)),
//                      Text('Seahawks',
//                          style: TextStyle(
//                              color: Colors.black,
//                              fontWeight: FontWeight.w700,
//                              fontSize: 24.0)),
//                      Text('10',
//                          style: TextStyle(
//                              color: Colors.black,
//                              fontWeight: FontWeight.w700,
//                              fontSize: 16.0)),
//                    ]),
//              ),
//            ),
//            _buildTile(
//              Padding(
//                padding: const EdgeInsets.all(24.0),
//                child: Column(
//                    mainAxisAlignment: MainAxisAlignment.end,
//                    crossAxisAlignment: CrossAxisAlignment.end,
//                    children: <Widget>[
//                      Material(
//                          color: Colors.red,
//                          shape: CircleBorder(),
//                          child: Padding(
//                            padding: EdgeInsets.all(16.0),
//                            child: Icon(Icons.notifications,
//                                color: Colors.white, size: 45.0),
//                          )),
//                      Padding(padding: EdgeInsets.only(bottom: 8.0)),
//                      Text('Patriots',
//                          style: TextStyle(
//                              color: Colors.black,
//                              fontWeight: FontWeight.w700,
//                              fontSize: 24.0)),
//                      Text('7',
//                          style: TextStyle(
//                              color: Colors.black,
//                              fontWeight: FontWeight.w700,
//                              fontSize: 16.0)),
//                    ]),
//              ),
//            ),
//            _buildTile(
//              Padding(
//                  padding: const EdgeInsets.all(24.0),
//                  child: Column(
//                    mainAxisAlignment: MainAxisAlignment.start,
//                    crossAxisAlignment: CrossAxisAlignment.start,
//                    children: <Widget>[
//                      Row(
//                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                        crossAxisAlignment: CrossAxisAlignment.start,
//                        children: <Widget>[
//                          Column(
//                            mainAxisAlignment: MainAxisAlignment.start,
//                            crossAxisAlignment: CrossAxisAlignment.start,
//                            children: <Widget>[
//                              Text('Revenue',
//                                  style: TextStyle(color: Colors.green)),
//                              Text('\$16K',
//                                  style: TextStyle(
//                                      color: Colors.black,
//                                      fontWeight: FontWeight.w700,
//                                      fontSize: 34.0)),
//                            ],
//                          ),
//                          DropdownButton(
//                              isDense: true,
//                              value: actualDropdown,
//                              onChanged: (String value) => setState(() {
//                                    actualDropdown = value;
//                                    actualChart = chartDropdownItems
//                                        .indexOf(value); // Refresh the chart
//                                  }),
//                              items: chartDropdownItems.map((String title) {
//                                return DropdownMenuItem(
//                                  value: title,
//                                  child: Text(title,
//                                      style: TextStyle(
//                                          color: Colors.blue,
//                                          fontWeight: FontWeight.w400,
//                                          fontSize: 14.0)),
//                                );
//                              }).toList())
//                        ],
//                      ),
//                      Padding(padding: EdgeInsets.only(bottom: 4.0)),
//                      Sparkline(
//                        data: charts[actualChart],
//                        lineWidth: 5.0,
//                        lineColor: Colors.greenAccent,
//                      )
//                    ],
//                  )),
//            ),
//            _buildTile(
//              Padding(
//                padding: const EdgeInsets.all(24.0),
//                child: Row(
//                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                    crossAxisAlignment: CrossAxisAlignment.center,
//                    children: <Widget>[
//                      Column(
//                        mainAxisAlignment: MainAxisAlignment.center,
//                        crossAxisAlignment: CrossAxisAlignment.start,
//                        children: <Widget>[
//                          Text('Shop Items',
//                              style: TextStyle(color: Colors.redAccent)),
//                          Text('173',
//                              style: TextStyle(
//                                  color: Colors.black,
//                                  fontWeight: FontWeight.w700,
//                                  fontSize: 34.0))
//                        ],
//                      ),
//                      Material(
//                          color: Colors.red,
//                          borderRadius: BorderRadius.circular(24.0),
//                          child: Center(
//                              child: Padding(
//                            padding: EdgeInsets.all(16.0),
//                            child: Icon(Icons.store,
//                                color: Colors.white, size: 30.0),
//                          )))
//                    ]),
//              ),
//              onTap: () => Navigator
//                  .of(context)
//                  .push(MaterialPageRoute(builder: (_) => ShopItemsPage())),
//            )
//          ],
//          staggeredTiles: [
//            StaggeredTile.extent(2, 110.0),
//            StaggeredTile.extent(1, 180.0),
//            StaggeredTile.extent(1, 180.0),
//            StaggeredTile.extent(2, 220.0),
//            StaggeredTile.extent(2, 110.0),
//          ],
//        ));
  }


}

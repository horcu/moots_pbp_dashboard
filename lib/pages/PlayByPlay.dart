import 'package:flutter/material.dart';
import 'package:flutter_sparkline/flutter_sparkline.dart';
import 'shop_items_page.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class PlayByPlay extends StatefulWidget {
  String title;
  PlayByPlay(this.title);

  @override
  PlayByPlayPageState createState() {
    return new PlayByPlayPageState();
  }

  Widget _buildTile(Widget child, {Function() onTap}) {
    return Material(
        elevation: 0.5,
        borderRadius: BorderRadius.circular(4.0),
        //shadowColor: Color(0xEFEFEFEF),
        //color: Colors.transparent,
        child: InkWell(
          // Do onTap() if it isn't null, otherwise do print()
            onTap: onTap != null
                ? () => onTap()
                : () {
              print('Not set yet');
            },
            child: child));
  }
}

class PlayByPlayPageState extends State<PlayByPlay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: StaggeredGridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 4.0,
          mainAxisSpacing: 4.0,
          padding: EdgeInsets.symmetric(horizontal: 0.0, vertical: 16.0),
          children: <Widget>[
            widget._buildTile(
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Icon(Icons.arrow_drop_down, color: Colors.red),
                              Text('down \$2.50',
                                  style: TextStyle(color: Colors.redAccent))
                            ],
                          ),
                          Text('\$142.00',
                              style: TextStyle(
                                  color: Colors.green,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 32.0))
                        ],
                      ),
                      Material(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(16.0),
                          child: Center(
                              child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Center(
                              child: Icon(Icons.attach_money,
                                  color: Colors.white, size: 30.0),
                            ),
                          )))
                    ]),
              ),
            ),
            widget._buildTile(
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Material(
                          color: Colors.blue,
                          shape: CircleBorder(),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Icon(Icons.settings_applications,
                                color: Colors.white, size: 45.0),
                          )),
                      Padding(padding: EdgeInsets.only(bottom: 2.0)),
                      Text('Seahawks',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                              fontSize: 24.0)),
                      Text('10',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                              fontSize: 16.0)),
                    ]),
              ),
              onTap: () => Navigator
                  .of(context)
                  .push(MaterialPageRoute(builder: (_) => ShopItemsPage())),
            ),
            widget._buildTile(
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Material(
                          color: Colors.red,
                          shape: CircleBorder(),
                          child: Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Icon(Icons.notifications,
                                color: Colors.white, size: 45.0),
                          )),
                      Padding(padding: EdgeInsets.only(bottom: 8.0)),
                      Text('Patriots',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                              fontSize: 24.0)),
                      Text('7',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                              fontSize: 16.0)),
                    ]),
              ),
              onTap: () => Navigator
                  .of(context)
                  .push(MaterialPageRoute(builder: (_) => ShopItemsPage())),
            ),
            widget._buildTile(
              Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text('Revenue',
                                  style: TextStyle(color: Colors.green)),
                              Text('\$16K',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 34.0)),
                            ],
                          ),
                        ],
                      ),
                      Padding(padding: EdgeInsets.only(bottom: 4.0)),
                                          ],
                  )),
            ),
            widget._buildTile(
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('Shop Items',
                              style: TextStyle(color: Colors.redAccent)),
                          Text('173',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 34.0))
                        ],
                      ),
                      Material(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(24.0),
                          child: Center(
                              child: Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Icon(Icons.store,
                                color: Colors.white, size: 30.0),
                          )))
                    ]),
              ),
              onTap: () => Navigator
                  .of(context)
                  .push(MaterialPageRoute(builder: (_) => ShopItemsPage())),
            )
          ],
          staggeredTiles: [
            StaggeredTile.extent(2, 110.0),
            StaggeredTile.extent(1, 180.0),
            StaggeredTile.extent(1, 180.0),
            StaggeredTile.extent(2, 220.0),
            StaggeredTile.extent(2, 110.0),
          ],
        ));
    }
}
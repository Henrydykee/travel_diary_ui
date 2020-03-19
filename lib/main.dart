import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Material(
        color: Colors.white,
        child: TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: <Widget>[
            Tab(
              icon: Icon(
                Icons.home,
                color: Colors.black,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.search,
                color: Colors.grey,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.graphic_eq,
                color: Colors.grey,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.add_circle_outline,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: Icon(
          Icons.arrow_back,
          color: Colors.grey,
          size: 25.0,
        ),
        actions: <Widget>[
          Icon(
            Icons.notifications,
            color: Colors.grey,
            size: 25.0,
          ),
          SizedBox(
            width: 5.0,
          ),
          Padding(
            padding: EdgeInsets.only(right: 12.0),
            child: InkWell(
              child: Container(
                height: 12.5,
                width: 12.5,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6.2),
                    image: DecorationImage(
                        image: AssetImage('assets/hannah.jpg'))),
              ),
            ),
          )
        ],
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 15.0),
            child: Container(
              padding: EdgeInsets.only(left: 10.0),
              height: 100.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.grey.shade100),
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.navigation,
                    size: 50.0,
                    color: Colors.blue,
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 27.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'MALDAVIES TRIP 2019',
                          style: TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Add an update',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 25.0),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 50.0,
                  ),
                  IconButton(
                      icon: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.grey,
                        size: 30.0,
                      ),
                      onPressed: () {})
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('FROM THE COMMUNITY',
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2.0)),
                Text('view all',
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold))
              ],
            ),
          ),
          //_buildImageGrid(),
          imageGalleryDetail()
        ],
      ),
    );
  }

  Widget imageGalleryDetail() {
    Padding(
      padding: EdgeInsets.only(left: 25.0, right: 25.0, top: 15.0),
      child: Row(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Maui Summer 2018',
                style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 7.0,
              ),
              Row(
                children: <Widget>[
                  Text(
                    'Hannah added 25 photos',
                    style:
                        TextStyle(color: Colors.grey.shade700, fontSize: 11.0),
                  ),
                  SizedBox(
                    width: 4.0,
                  ),
                  Icon(
                    Icons.timer,
                    size: 4.0,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 4.0,
                  ),
                  Text(
                    '2h ago',
                    style:
                        TextStyle(color: Colors.grey.shade500, fontSize: 11.0),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _buildImageGrid() {
    return Padding(
      padding: EdgeInsets.only(top: 25.0, left: 15.0, right: 15.0),
      child: Container(
        height: 225.0,
        child: Row(
          children: <Widget>[
            Container(
              height: 225.0,
              width: MediaQuery.of(context).size.width / 2 + 40.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15.0),
                      bottomLeft: Radius.circular(15.0)),
                  image: DecorationImage(
                      image: AssetImage('assets.hotel1.jpg'),
                      fit: BoxFit.cover)),
            ),
            SizedBox(
              width: 2.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: 111.5,
                  width: MediaQuery.of(context).size.width / 2 - 72.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(15.0),
                      ),
                      image: DecorationImage(
                          image: AssetImage('assets.hotel2.jpg'),
                          fit: BoxFit.cover)),
                ),
                SizedBox(
                  width: 2.0,
                ),
                Container(
                  height: 111.5,
                  width: MediaQuery.of(context).size.width / 2 - 72.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(15.0),
                      ),
                      image: DecorationImage(
                          image: AssetImage('assets.hotel0.jpg'),
                          fit: BoxFit.cover)),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

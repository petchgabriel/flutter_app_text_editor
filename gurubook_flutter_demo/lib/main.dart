import 'package:flutter/material.dart';
//import 'package:home_page_test/login.dart';
import './post_item.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          title: Text('Home'),
          leading: IconButton(
            // icon: Image.network(
            //   'https://searchengineland.com/figz/wp-content/seloads/2015/12/google-amp-fast-speed-travel-ss-1920.jpg',
            // ),
            icon: ClipOval(
                child: Image.network(
              "https://searchengineland.com/figz/wp-content/seloads/2015/12/google-amp-fast-speed-travel-ss-1920.jpg",
              fit: BoxFit.cover,
              width: 90.0,
              height: 90.0,
            )),
            // color: Color(0xFF3A5A98),

            onPressed: () {
              _scaffoldKey.currentState.openDrawer();
            },
          ),
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              DrawerHeader(
                child: Text('Drawer Header'),
                decoration: BoxDecoration(
                    color: Colors.blue,
                    image: DecorationImage(
                        // image: AssetImage("assets/gold.jpg"),
                        image: NetworkImage(
                            'https://searchengineland.com/figz/wp-content/seloads/2015/12/google-amp-fast-speed-travel-ss-1920.jpg'),
                        fit: BoxFit.cover)),
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Text(
                  'Profile',
                  style: TextStyle(fontSize: 16),
                ),
              )
            ],
          ),
        ),
        body: ListView(
          children: <Widget>[
            myFollower(),
            suggestedForYou(),
            PostItem(
              displatImageURL:
                  'https://searchengineland.com/figz/wp-content/seloads/2015/12/google-amp-fast-speed-travel-ss-1920.jpg',
              name: 'testt',
              time: '09:49',
              textPreview:
                  'เดินออกำลังกายในหมู่บ้าน ก็ฝันๆว่ากำลังเดินเล่นอยู่ทะเลสาบที่ญี่ปุ่นไปล่ะกันเนอะ...เอาน่าคิดเป็นแค่ฝันยามเย็นในวันที่ต้องอยู่บ้านติดต่อกันนานที่สุดในชีวิตการทำงานที่ผ่านมาแหละ .. #slowlifeวัย50 คิดอยู่เสมอว่าถ้าเราไม่มีสิทธิ์และสามารถ control เหตุการณ์อะไรที่เกิดขึ้นในชีวิตได้นั้น เราแค่ learn how to live with it.. ชีวิตก็จะไม่ทุกข์ ',
              img:
                  'https://searchengineland.com/figz/wp-content/seloads/2015/12/google-amp-fast-speed-travel-ss-1920.jpg',
            ),
            PostItem(
              displatImageURL:
                  'https://searchengineland.com/figz/wp-content/seloads/2015/12/google-amp-fast-speed-travel-ss-1920.jpg',
              name: 'testt',
              time: '09:49',
              textPreview:
                  'เดินออกำลังกายในหมู่บ้าน ก็ฝันๆว่ากำลังเดินเล่นอยู่ทะเลสาบที่ญี่ปุ่นไปล่ะกันเนอะ...เอาน่าคิดเป็นแค่ฝันยามเย็นในวันที่ต้องอยู่บ้านติดต่อกันนานที่สุดในชีวิตการทำงานที่ผ่านมาแหละ .. #slowlifeวัย50 คิดอยู่เสมอว่าถ้าเราไม่มีสิทธิ์และสามารถ control เหตุการณ์อะไรที่เกิดขึ้นในชีวิตได้นั้น เราแค่ learn how to live with it.. ชีวิตก็จะไม่ทุกข์ ',
              img:
                  'https://searchengineland.com/figz/wp-content/seloads/2015/12/google-amp-fast-speed-travel-ss-1920.jpg',
            ),
            PostItem(
              displatImageURL:
                  'https://searchengineland.com/figz/wp-content/seloads/2015/12/google-amp-fast-speed-travel-ss-1920.jpg',
              name: 'testt',
              time: '09:49',
              textPreview:
                  'เดินออกำลังกายในหมู่บ้าน ก็ฝันๆว่ากำลังเดินเล่นอยู่ทะเลสาบที่ญี่ปุ่นไปล่ะกันเนอะ...เอาน่าคิดเป็นแค่ฝันยามเย็นในวันที่ต้องอยู่บ้านติดต่อกันนานที่สุดในชีวิตการทำงานที่ผ่านมาแหละ .. #slowlifeวัย50 คิดอยู่เสมอว่าถ้าเราไม่มีสิทธิ์และสามารถ control เหตุการณ์อะไรที่เกิดขึ้นในชีวิตได้นั้น เราแค่ learn how to live with it.. ชีวิตก็จะไม่ทุกข์ ',
              img:
                  'https://searchengineland.com/figz/wp-content/seloads/2015/12/google-amp-fast-speed-travel-ss-1920.jpg',
            ),
            PostItem(
              displatImageURL:
                  'https://searchengineland.com/figz/wp-content/seloads/2015/12/google-amp-fast-speed-travel-ss-1920.jpg',
              name: 'testt',
              time: '09:49',
              textPreview:
                  'เดินออกำลังกายในหมู่บ้าน ก็ฝันๆว่ากำลังเดินเล่นอยู่ทะเลสาบที่ญี่ปุ่นไปล่ะกันเนอะ...เอาน่าคิดเป็นแค่ฝันยามเย็นในวันที่ต้องอยู่บ้านติดต่อกันนานที่สุดในชีวิตการทำงานที่ผ่านมาแหละ .. #slowlifeวัย50 คิดอยู่เสมอว่าถ้าเราไม่มีสิทธิ์และสามารถ control เหตุการณ์อะไรที่เกิดขึ้นในชีวิตได้นั้น เราแค่ learn how to live with it.. ชีวิตก็จะไม่ทุกข์ ',
              img:
                  'https://searchengineland.com/figz/wp-content/seloads/2015/12/google-amp-fast-speed-travel-ss-1920.jpg',
            ),
            PostItem(
              displatImageURL:
                  'https://searchengineland.com/figz/wp-content/seloads/2015/12/google-amp-fast-speed-travel-ss-1920.jpg',
              name: 'testt',
              time: '09:49',
              textPreview:
                  'เดินออกำลังกายในหมู่บ้าน ก็ฝันๆว่ากำลังเดินเล่นอยู่ทะเลสาบที่ญี่ปุ่นไปล่ะกันเนอะ...เอาน่าคิดเป็นแค่ฝันยามเย็นในวันที่ต้องอยู่บ้านติดต่อกันนานที่สุดในชีวิตการทำงานที่ผ่านมาแหละ .. #slowlifeวัย50 คิดอยู่เสมอว่าถ้าเราไม่มีสิทธิ์และสามารถ control เหตุการณ์อะไรที่เกิดขึ้นในชีวิตได้นั้น เราแค่ learn how to live with it.. ชีวิตก็จะไม่ทุกข์ ',
              img:
                  'https://searchengineland.com/figz/wp-content/seloads/2015/12/google-amp-fast-speed-travel-ss-1920.jpg',
            ),
            PostItem(
              displatImageURL:
                  'https://searchengineland.com/figz/wp-content/seloads/2015/12/google-amp-fast-speed-travel-ss-1920.jpg',
              name: 'testt',
              time: '09:49',
              textPreview:
                  'เดินออกำลังกายในหมู่บ้าน ก็ฝันๆว่ากำลังเดินเล่นอยู่ทะเลสาบที่ญี่ปุ่นไปล่ะกันเนอะ...เอาน่าคิดเป็นแค่ฝันยามเย็นในวันที่ต้องอยู่บ้านติดต่อกันนานที่สุดในชีวิตการทำงานที่ผ่านมาแหละ .. #slowlifeวัย50 คิดอยู่เสมอว่าถ้าเราไม่มีสิทธิ์และสามารถ control เหตุการณ์อะไรที่เกิดขึ้นในชีวิตได้นั้น เราแค่ learn how to live with it.. ชีวิตก็จะไม่ทุกข์ ',
              img:
                  'https://searchengineland.com/figz/wp-content/seloads/2015/12/google-amp-fast-speed-travel-ss-1920.jpg',
            ),

            // actionButton(),
            // topImage(),
            // description(),
            // actionButton(),
            ListTile(
              title: Text('Sun'),
            ),
            ListTile(
              title: Text('Moon'),
            ),
            ListTile(
              title: Text('Star'),
            ),
          ],
        ));
  }

  Widget suggestedForYou() {
    return Container(
      height: 200,
      child: Column(
        children: <Widget>[
          Row(
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text('Suggested For You'),
              ButtonTheme(
                height: 10.0,
                child: RaisedButton(
                  child: Text("see more"),
                  onPressed: () {},
                  color: Colors.grey.shade300,
                  textColor: Colors.black,
                  padding: EdgeInsets.all(8.0),
                  // padding: EdgeInsets.fromLTRB(3, 3, 3, 3),
                  splashColor: Colors.grey,
                ),
              )
            ],
          ),
          Container(
            height: 150,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                suggestedForYouButton(),
                suggestedForYouButton(),
                suggestedForYouButton(),
                suggestedForYouButton(),
                suggestedForYouButton(),
                suggestedForYouButton(),
                suggestedForYouButton(),
                suggestedForYouButton(),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget topImage() {
    return Container(
        height: 180,
        child: Image.network(
            "https://searchengineland.com/figz/wp-content/seloads/2015/12/google-amp-fast-speed-travel-ss-1920.jpg"));
  }

  Widget description() {
    return Container(
      margin: EdgeInsets.all(20),
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Column(
            children: <Widget>[
              Text('ddddd'),
              Text('222'),
            ],
          ),
          Icon(
            Icons.thumb_up,
            color: Colors.blue,
          )
        ],
      ),
    );
  }

  Widget myFollower() {
    return Container(
      height: 120,
      width: 80,
      child: Container(
        padding: EdgeInsets.only(top: 10, bottom: 10),
        color: Colors.white,
        height: 100,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            followingButton(),
            followingButton(),
            followingButton(),
            followingButton(),
            followingButton(),
            followingButton(),
            followingButton(),
            followingButton(),
          ],
        ),
      ),
    );
  }

  Widget suggestedForYouButton() {
    return Container(
      height: 150,
      width: 110,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: RaisedButton(
            color: Colors.white,
            padding: EdgeInsets.only(top: 0),
            child: Column(
              children: <Widget>[
                Image.network(
                    'https://searchengineland.com/figz/wp-content/seloads/2015/12/google-amp-fast-speed-travel-ss-1920.jpg'),
                Container(
                  transform: Matrix4.translationValues(0.0, -20.0, 0.0),
                  width: 40,
                  height: 40,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                      "https://searchengineland.com/figz/wp-content/seloads/2015/12/google-amp-fast-speed-travel-ss-1920.jpg",
                    ),
                    // backgroundColor: Colors.transparent,
                  ),
                ),
                Container(
                  transform: Matrix4.translationValues(0.0, -10.0, 0.0),
                  child: Text('Home'),
                ),
                Container(
                  transform: Matrix4.translationValues(0.0, -10.0, 0.0),
                  child: Text(
                    'HomeDescription',
                    style: TextStyle(
                      fontSize: 10.0,
                      // fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
            onPressed: () {
              print('clickk');
            },
          ),
        ),
      ),
    );
  }

  Widget followingButton() {
    return Container(
      height: 100,
      width: 80,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: RaisedButton(
          // shape: RoundedRectangleBorder(side: BorderSide(
          //     color: Colors.white,
          //     width: 0,
          //     style: BorderStyle.solid
          //   ), borderRadius: BorderRadius.circular(10)),
          color: Colors.white,
          padding: EdgeInsets.only(top: 10),
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 0),
                width: 55,
                height: 55,
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                    "https://searchengineland.com/figz/wp-content/seloads/2015/12/google-amp-fast-speed-travel-ss-1920.jpg",
                  ),
                  // backgroundColor: Colors.transparent,
                ),
              ),
              SizedBox(height: 10),
              Text('Home')
            ],
          ),
          onPressed: () {
            print('clickk');
          },
        ),
      ),
    );
  }

  Widget suggestedForyou() {
    return Container(
      height: 100,
      width: 80,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: RaisedButton(
          // shape: RoundedRectangleBorder(side: BorderSide(
          //     color: Colors.white,
          //     width: 0,
          //     style: BorderStyle.solid
          //   ), borderRadius: BorderRadius.circular(10)),
          color: Colors.white,
          padding: EdgeInsets.only(top: 10),
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 0),
                width: 55,
                height: 55,
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                    "https://searchengineland.com/figz/wp-content/seloads/2015/12/google-amp-fast-speed-travel-ss-1920.jpg",
                  ),
                  // backgroundColor: Colors.transparent,
                ),
              ),
              SizedBox(height: 10),
              Text('Home')
            ],
          ),
          onPressed: () {
            print('clickk');
          },
        ),
      ),
    );
  }

  Widget slideImage() {
    return Container(
      height: 150,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(12.0),
            child: Image.network(
              "https://searchengineland.com/figz/wp-content/seloads/2015/12/google-amp-fast-speed-travel-ss-1920.jpg",
              width: 150,
              height: 70,
            ),
          ),
          Container(
            padding: EdgeInsets.all(12.0),
            child: Image.network(
              "https://searchengineland.com/figz/wp-content/seloads/2015/12/google-amp-fast-speed-travel-ss-1920.jpg",
              width: 150,
              height: 75,
            ),
          ),
          Container(
            padding: EdgeInsets.all(12.0),
            child: Image.network(
              "https://searchengineland.com/figz/wp-content/seloads/2015/12/google-amp-fast-speed-travel-ss-1920.jpg",
              width: 150,
              height: 70,
            ),
          ),
        ],
      ),
    );
  }
}

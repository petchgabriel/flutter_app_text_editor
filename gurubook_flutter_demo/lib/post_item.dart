import 'package:flutter/material.dart';

class PostItem extends StatefulWidget {
  final String displatImageURL;
  final String name;
  final String time;
  final String textPreview;
  final String img;

  PostItem(
      {@required this.displatImageURL,
      @required this.name,
      @required this.time,
      @required this.textPreview,
      @required this.img});
  @override
  _PostItemState createState() => _PostItemState();
}

class _PostItemState extends State<PostItem> {
  String firstHalf;
  String secondHalf;

  bool flag = true;

  @override
  Widget build(BuildContext context) {
    if (widget.textPreview.length > 100) {
      firstHalf = widget.textPreview.substring(0, 100);
      secondHalf = widget.textPreview.substring(100, widget.textPreview.length);
    } else {
      firstHalf = widget.textPreview;
      secondHalf = "";
    }

    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5),
      child: InkWell(
        child: Column(
          children: <Widget>[
            // ListTile(
            //   leading: CircleAvatar(
            //     backgroundImage: NetworkImage(
            //       "https://searchengineland.com/figz/wp-content/seloads/2015/12/google-amp-fast-speed-travel-ss-1920.jpg",
            //     ),
            //   ),
            //   contentPadding: EdgeInsets.all(0),
            //   // title: Text(
            //   //   "${widget.name}",
            //   //   style: TextStyle(
            //   //     fontWeight: FontWeight.bold,
            //   //   ),
            //   // ),
            //   // trailing: Text(
            //   //   "ddddd ${widget.time}",
            //   //   style: TextStyle(
            //   //     fontWeight: FontWeight.w300,
            //   //     fontSize: 11,
            //   //   ),
            //   // ),
            // ),
            Container(
              padding: EdgeInsets.only(top: 5, left: 10),
              child: Row(
                children: <Widget>[
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                      "https://searchengineland.com/figz/wp-content/seloads/2015/12/google-amp-fast-speed-travel-ss-1920.jpg",
                    ),
                  ),
                  SizedBox(width: 10),
                  Column(
                    children: <Widget>[
                      Container(
                        child: Text(
                          'Page Name',
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        width: 200,
                      ),
                      SizedBox(height: 5),
                      Container(
                        child: Text('1 January        Game',
                          style: TextStyle(
                            fontSize: 10.0,
                            // fontWeight: FontWeight.r,
                            color: Colors.black,
                          )),
                        width: 200,
                      ),
                      // Text('Time         category'),
                      // Align(
                      //   alignment: Alignment.centerLeft,

                      //   child: Text("widget"),
                      // ),
                      // FittedBox(
                      //   fit: BoxFit.contain,
                      //   child: Text('ddddd'),
                      //   alignment: Alignment.topLeft,
                      // ),
                      // FittedBox(
                      //   fit: BoxFit.contain,
                      //   child: Text('Time         category'),
                      // ),
                      // Text('ddddd',textAlign: TextAlign.start, ),
                      // Text('Time         category'),
                    ],
                  ),
                ],
              ),
            ),

            // Text(widget.textPreview),
            textPreview(),
            Image.network(widget.img),
              actionButton(),
          ],
        ),
        onTap: () {},
      ),
    );
  }

  Widget textPreview() {
    final numLines = '\n'.allMatches(secondHalf).length + 1;
    print("numLines");
    print(numLines);
    return Container(
      padding: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      child: secondHalf.isEmpty
          ? new Text(firstHalf)
          : new Column(
              children: <Widget>[
                flag
                    ? Text(
                        widget.textPreview,
                        maxLines: 2,
                      )
                    : Text(widget.textPreview),
                // new Text(flag
                //     ? (firstHalf + "...")
                //     : (firstHalf + secondHalf)),
                new InkWell(
                  child: new Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      new Text(
                        flag ? "show more" : "show less",
                        style: new TextStyle(color: Colors.blue),
                      ),
                    ],
                  ),
                  onTap: () {
                    setState(() {
                      flag = !flag;
                    });
                  },
                ),
              ],
            ),
    );
  }

  Widget actionButton() {
    return Container(
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Column(
            children: <Widget>[
              Icon(
                Icons.thumb_up,
                color: Colors.grey.shade400,
              ),
              Spacer(),
              Text('Like'),
            ],
          ),
          Column(
            children: <Widget>[
              Icon(
                Icons.comment,
                color: Colors.grey.shade400,
              ),
              Spacer(),
              Text('Comment'),
            ],
          ),
          Column(
            children: <Widget>[
              Icon(
                Icons.share,
                color: Colors.grey.shade400,
              ),
              Spacer(),
              Text('Share'),
            ],
          ),
        ],
      ),
    );
  }
}

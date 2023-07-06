import 'package:flutter/material.dart';
import 'package:learn2/academy.dart';
import 'package:learn2/strings.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primaryColor: Colors.amber),
        title: 'Belajar Fundamental Flutter',
        home: const MainScreen());
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Belajar Fundamental FLutter"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
            padding: const EdgeInsets.all(10.0),
            child: Center(
              child: Column(
                children: [
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return LayoutConstraints();
                        }));
                      },
                      child: Text('Layout Constraints')),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return MaterialDesign();
                        }));
                      },
                      child: Text('Material Design')),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return GestureDetection();
                        }));
                      },
                      child: Text('Gesture Decetor')),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return Slivers();
                        }));
                      },
                      child: Text('Silvers')),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return LearnSliver();
                        }));
                      },
                      child: Text('Latihan: Sliver List & Sliver Grid')),
                ],
              ),
            )),
      ),
    );
  }
}

class LayoutConstraints extends StatelessWidget {
  const LayoutConstraints({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: Container(
          color: Colors.red,
          child: Text('Hello! This is a very long Text!'),
        )),
        Container(
          color: Colors.green,
          child: Text('Goodbye!'),
        ),
      ],
    );
  }
}

class MaterialDesign extends StatelessWidget {
  const MaterialDesign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.green),
      home: Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Color(0xFF6200EE),
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white.withOpacity(.60),
            selectedFontSize: 14,
            unselectedFontSize: 14,
            onTap: (value) {
              // Respond to item press.
            },
            items: [
              BottomNavigationBarItem(
                label: 'Favorites',
                icon: Icon(Icons.favorite),
              ),
              BottomNavigationBarItem(
                label: 'Music',
                icon: Icon(Icons.music_note),
              ),
              BottomNavigationBarItem(
                label: 'Places',
                icon: Icon(Icons.location_on),
              ),
              BottomNavigationBarItem(
                label: 'News',
                icon: Icon(Icons.library_books),
              ),
            ],
          ),
          appBar: AppBar(
            title: Text('Material Design'),
            backgroundColor: Theme.of(context).primaryColor,
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(20.0),
                      color: Colors.amber,
                      child: Text('Typography'),
                    ),
                  ],
                ),
                Text(
                  'Headline 1',
                  style: Theme.of(context).textTheme.headline1,
                ),
                Text(
                  'Headline 2',
                  style: Theme.of(context).textTheme.headline2,
                ),
                Text(
                  'Headline 3',
                  style: Theme.of(context).textTheme.headline3,
                ),
                Text(
                  'Headline 4',
                  style: Theme.of(context).textTheme.headline4,
                ),
                Text(
                  'Headline 5',
                  style: Theme.of(context).textTheme.headline5,
                ),
                Text(
                  'Headline 6',
                  style: Theme.of(context).textTheme.headline6,
                ),
                Text(
                  'Subtitle 1',
                  style: Theme.of(context).textTheme.subtitle1,
                ),
                Text(
                  'Subtitle 2',
                  style: Theme.of(context).textTheme.subtitle2,
                ),
                Text(
                  'Body 1',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                Text(
                  'Body 2',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                Text(
                  'Button',
                  style: Theme.of(context).textTheme.button,
                ),
                Text(
                  'Caption',
                  style: Theme.of(context).textTheme.caption,
                ),
                Text('Overline', style: Theme.of(context).textTheme.overline),
              ],
            ),
          )),
    );
  }
}

class GestureDetection extends StatefulWidget {
  const GestureDetection({Key? key}) : super(key: key);

  @override
  State<GestureDetection> createState() => _GestureDetectionState();
}

class _GestureDetectionState extends State<GestureDetection> {
  final double boxSize = 150.0;
  int numTaps = 0;
  int doubleTaps = 0;
  int longPress = 0;
  double posX = 0.0;
  double posY = 0.0;
  @override
  Widget build(BuildContext context) {
    if (posY == 0) {
      center(context);
    }
    return Scaffold(
      appBar: AppBar(
        title: const Text("Gesture Decection"),
        actions: const [],
      ),
      body: Stack(children: [
        Positioned(
            top: posY,
            left: posX,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  numTaps++;
                });
              },
              onDoubleTap: () {
                setState(() {
                  doubleTaps++;
                });
              },
              onLongPress: () {
                setState(() {
                  longPress++;
                });
              },
              onPanUpdate: (DragUpdateDetails details) {
                setState(() {
                  double deltaX = details.delta.dx;
                  double deltaY = details.delta.dy;
                  posX += deltaX;
                  posY += deltaY;
                });
              },
              // onVerticalDragUpdate: (DragUpdateDetails details) {
              //   setState(() {
              //     double delta = details.delta.dy;
              //     posY += delta;
              //   });
              // },
              // onHorizontalDragUpdate: (DragUpdateDetails details) {
              //   setState(() {
              //     double delta = details.delta.dx;
              //     posX += delta;
              //   });
              // },
              child: Container(
                width: boxSize,
                height: boxSize,
                decoration: BoxDecoration(
                  color: Colors.red,
                ),
              ),
            ))
      ]),
      bottomNavigationBar: Container(
        color: Colors.yellow,
        padding: EdgeInsets.all(16.0),
        child: Text(
          'Taps: $numTaps - Double Taps: $doubleTaps - Long Press: $longPress',
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
    );
  }

  void center(BuildContext context) {
    posX = (MediaQuery.of(context).size.width / 2) - boxSize;
    posY = (MediaQuery.of(context).size.height / 2) - boxSize;

    setState(() {
      this.posX = posX;
      this.posY = posY;
    });
  }
}

class Slivers extends StatefulWidget {
  const Slivers({Key? key}) : super(key: key);

  @override
  State<Slivers> createState() => _SliversState();
}

class _SliversState extends State<Slivers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
          headerSliverBuilder: (context, isScrolled) {
            return [
              SliverAppBar(
                pinned: true,
                expandedHeight: 200,
                flexibleSpace: FlexibleSpaceBar(
                  background: Image.asset(
                    'assets/images/pixel_google.jpg',
                    fit: BoxFit.fitWidth,
                  ),
                ),
                title: const Text('Google Pixel'),
              )
            ];
          },
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        r'$735',
                        style: Theme.of(context).textTheme.headline4,
                      ),
                      Container(
                        color: Colors.black26,
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: const [
                            Icon(
                              Icons.collections,
                              color: Colors.white,
                            ),
                            Text(
                              '6 photos',
                              style: const TextStyle(
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    'Stock hanya 5 buah',
                    style: Theme.of(context).textTheme.caption,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Text(contentText),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    'Spesifikasi',
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Table(
                    columnWidths: const {1: FractionColumnWidth(0.7)},
                    children: const [
                      TableRow(children: [
                        Text('Display'),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 4),
                          child: Text(contentSpecsDisplay),
                        )
                      ]),
                      TableRow(children: [
                        Text('Size'),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 4),
                          child: Text(contentSpecsSize),
                        )
                      ]),
                      TableRow(children: [
                        Text('Battery'),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 4),
                          child: Text(contentSpecsBattery),
                        )
                      ]),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(
                    'Dijual oleh',
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/photo_2.jpg'),
                        ),
                      ),
                      Text('Narenda Wicaksono'),
                      // SizedBox(
                      //     width: double.infinity,
                      //     child: ElevatedButton(
                      //       onPressed: () {},
                      //       child: Text('Beli'),
                      //       style: ElevatedButton.styleFrom(
                      //           backgroundColor: Theme.of(context).primaryColor,
                      //           foregroundColor: Colors.white,
                      //           shape: const BeveledRectangleBorder(
                      //               borderRadius:
                      //                   BorderRadius.all(Radius.circular(8)))),
                      //     ))
                    ],
                  )
                ],
              ),
            ),
          )),
    );
  }
}

class LearnSliver extends StatelessWidget {
  const LearnSliver({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Latihan: SliverList & SliverGrid"),
        actions: const [],
      ),
      body: const LearningPathList(),
    );
  }
}

class LearningPathList extends StatelessWidget {
  const LearningPathList({Key? key}) : super(key: key);

  SliverPersistentHeader _header(String text) {
    return SliverPersistentHeader(
        pinned: true,
        delegate: SliverAppBarDelegate(
            minHeight: 60,
            maxHeight: 150,
            child: Container(
              color: Colors.lightBlue,
              child: Center(
                child: Text(
                  text,
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            )));
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        _header('Android Developer'),
        SliverList(
          delegate: SliverChildListDelegate(
            androidPaths.map(_buildTile).toList(),
          ),
        ),
        _header('iOS Developer'),
        SliverList(
          delegate: SliverChildListDelegate(
            iosPaths.map(_buildTile).toList(),
          ),
        ),
        _header('Multi-Platform App Developer'),
        SliverGrid.count(
          crossAxisCount: 2,
          children: flutterPaths.map(_buildTile).toList(),
        ),
        _header('Front-End Web Developer'),
        SliverGrid.count(
          crossAxisCount: 2,
          children: webPaths.map(_buildTile).toList(),
        )
      ],
    );
  }
}

Widget _buildTile(Academy academy) {
  return ListTile(
    title: Text(academy.title),
    subtitle: Text(
      academy.description,
      overflow: TextOverflow.ellipsis,
      maxLines: 4,
    ),
  );
}

class SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  SliverAppBarDelegate({
    required this.minHeight,
    required this.maxHeight,
    required this.child,
  });

  final double minHeight;
  final double maxHeight;
  final Widget child;
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    // TODO: implement build
    return child;
  }

  @override
  // TODO: implement maxExtent
  double get maxExtent => maxHeight;

  @override
  // TODO: implement minExtent
  double get minExtent => minHeight;

  @override
  bool shouldRebuild(SliverAppBarDelegate oldDelegate) {
    return maxHeight != oldDelegate.maxHeight ||
        minHeight != oldDelegate.minHeight ||
        child != oldDelegate.child;
  }
}

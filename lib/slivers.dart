import 'package:flutter/material.dart';
import 'package:learn2/strings.dart';

class Slivers extends StatefulWidget {
  static const routeName = '/slivers';
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

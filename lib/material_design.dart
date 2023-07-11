import 'package:flutter/material.dart';

class MaterialDesign extends StatelessWidget {
  static const routeName = '/material_design';
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

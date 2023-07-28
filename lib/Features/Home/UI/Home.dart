import 'package:bite_stories/Features/Fav/UI/Fav2.dart';
import 'package:bite_stories/Features/Home/bloc/home_bloc.dart';
import 'package:bite_stories/Features/Music/UI/Music.dart';
import 'package:bite_stories/Features/Story/UI/Story.dart';
import 'package:bite_stories/Features/Video/UI/video.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String getTitleBasedOnTime() {
    DateTime now = DateTime.now();
    int hour = now.hour;

    if (hour >= 5 && hour < 12) {
      return "Hi toddler,\nIt's Breakfast time";
    } else if (hour >= 12 && hour < 17) {
      return "Hi toddler,\nIt's Lunch time";
    } else {
      return "Hi toddler,\nIt's Dinner time";
    }
  }

  final HomeBloc homeBloc = HomeBloc();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: 15, // Add some space above the AppBar
            ),
            PreferredSize(
              preferredSize:
                  Size.fromHeight(56), // Set the preferred height of the AppBar
              child: AppBar(
                backgroundColor: Colors.transparent,
                elevation: 0,
                title: Text(
                  getTitleBasedOnTime(),
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                actions: <Widget>[
                  IconButton(
                    icon: Icon(Icons.favorite, color: Colors.black),
                    onPressed: () {
                      // Add your favorite button's onPressed logic here
                      // For example, you can toggle the favorites status or open a favorites screen.
                    },
                  ),
                ],
              ),
            ),
            Expanded(
              child: BlocConsumer<HomeBloc, HomeState>(
                bloc: homeBloc,
                // Adjust listenWhen and buildWhen based on your requirements
                // listenWhen: (previous, current) => current is HomeActionState,
                // buildWhen: (previous, current) => current is! HomeActionState,
                listener: (context, state) {
                  if (state is HomeNavigateToFavActionState) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Fav()));
                  }
                  if (state is HomeNavigateToStoryActionState) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Story()));
                  }
                  if (state is HomeNavigateToMusicActionState) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Music()));
                  } else if (state is HomeNavigateToVideoActionState) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Video()));
                  }
                },
                builder: (context, state) {
                  // Add your UI components here
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 20,
                      ), // Add some space between the text and buttons

                      // Buttons in a horizontal row
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // Button 1 - Story
                          Column(
                            children: [
                              Material(
                                shape: CircleBorder(),
                                color: Colors.transparent,
                                child: IconButton(
                                  onPressed: () {
                                    // Add your onPressed logic for the Story button
                                  },
                                  icon: Image.network(
                                    'https://firebasestorage.googleapis.com/v0/b/bite-a92dd.appspot.com/o/%3Doerhj.png?alt=media&token=b248ab32-9356-42db-b02a-46ed3e246a0d',
                                    width: 100,
                                    height: 100,
                                  ),
                                ),
                              ),
                              Text(
                                'Story',
                                style: TextStyle(color: Colors.black),
                              ),
                            ],
                          ),

                          SizedBox(width: 20), // Add space between buttons

                          // Button 2 - Music
                          Column(
                            children: [
                              Material(
                                shape: CircleBorder(),
                                color: Colors.transparent,
                                child: IconButton(
                                  onPressed: () {
                                    // Add your onPressed logic for the Music button
                                  },
                                  icon: Image.network(
                                    'https://firebasestorage.googleapis.com/v0/b/bite-a92dd.appspot.com/o/5.png?alt=media&token=2f78f064-8bf3-4ae2-a487-abac51320eaf',
                                    width: 100,
                                    height: 100,
                                  ),
                                ),
                              ),
                              Text(
                                'Music',
                                style: TextStyle(color: Colors.black),
                              ),
                            ],
                          ),

                          SizedBox(width: 20), // Add space between buttons

                          // Button 3 - Video
                          Column(
                            children: [
                              Material(
                                shape: CircleBorder(),
                                color: Colors.transparent,
                                child: IconButton(
                                  onPressed: () {
                                    // Add your onPressed logic for the Video button
                                  },
                                  icon: Image.network(
                                    'https://firebasestorage.googleapis.com/v0/b/bite-a92dd.appspot.com/o/4.png?alt=media&token=6b38a32c-20f8-4d1e-a733-b8481184d01a',
                                    width: 100,
                                    height: 100,
                                  ),
                                ),
                              ),
                              Text(
                                'Video',
                                style: TextStyle(color: Colors.black),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

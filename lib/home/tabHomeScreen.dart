import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:assets_music_player/music%20screens/my_music.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../functions/music_List.dart';
import '../functions/music_functions.dart';
import '../music screens/liked_screen.dart';
//import '../music screens/my_music.dart';
import '../music screens/play_listScreen.dart';
import '../second screen/SearchScreen.dart';

class TabHomeScreen extends StatefulWidget {
  const TabHomeScreen({super.key});

  @override
  State<TabHomeScreen> createState() => _TabHomeScreenState();
}

class _TabHomeScreenState extends State<TabHomeScreen> {
  //final AssetsAudioPlayer audioPlayer = AssetsAudioPlayer();
  @override
  void initState() {
    setUpPlayList();
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    audioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: SafeArea(
          child: Scaffold(
            appBar: AppBar(
              toolbarHeight: 85,
              title: Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.5),
                child: Text('Asset Player'),
              ),
              titleTextStyle: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 30,
                  color: Colors.white),
              actions: [
                IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return SearchScreen();
                    }));
                  },
                  icon: Icon(Icons.search),
                  iconSize: 30,
                ),
                SizedBox(
                  width: 5,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.settings),
                  iconSize: 30,
                ),
                SizedBox(
                  width: 20,
                )
              ],
              backgroundColor: Color.fromARGB(255, 36, 19, 60),
              elevation: 0,
              bottom: TabBar(
                indicatorColor: Colors.transparent,
                labelStyle:
                    TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                unselectedLabelStyle: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
                tabs: [
                  Tab(
                    text: 'My Music',
                  ),
                  Tab(
                    text: 'Liked',
                  ),
                  Tab(
                    text: 'Playlist',
                  )
                ],
              ),
            ),
            body: TabBarView(children: [
              MyMusicScreen(),
              LikedScreen(),
              PLaylistScreen(),
            ]),
            bottomSheet: Padding(
              padding: EdgeInsets.all(8),
              child: functionMiniPlayer(context),
            ),
          ),
        ));
  }
}

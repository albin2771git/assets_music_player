import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../functions/music_functions.dart';
import '../other screen/options.dart';

class PLaylistScreen extends StatefulWidget {
  const PLaylistScreen({super.key});

  @override
  State<PLaylistScreen> createState() => _PLaylistScreenState();
}

class _PLaylistScreenState extends State<PLaylistScreen> {
  @override
  Widget build(BuildContext context) {
    bool isFloatVisible = false;
    return SafeArea(
        child: Scaffold(
            body: NotificationListener<UserScrollNotification>(
              onNotification: (notification) {
                setState(() {
                  if (notification.direction == ScrollDirection.forward) {
                    isFloatVisible = false;
                  } else if (notification.direction ==
                      ScrollDirection.reverse) {
                    isFloatVisible = true;
                  }
                });
                return isFloatVisible;
              },
              child: ListView(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Divider(
                    thickness: 1,
                    color: Colors.white,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 22),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Add New PlayList',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        IconButton(
                            onPressed: () {
                              createPlayListAlert(ctx: context);
                            },
                            icon: Icon(
                              Icons.playlist_add_rounded,
                              color: Colors.white,
                              size: 30,
                            ))
                      ],
                    ),
                  ),
                  Divider(
                    thickness: 1,
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  playlistNameScreen(
                    context: context,
                    playlistTitle: 'Playlist One',
                  ),
                  playlistNameScreen(
                    context: context,
                    playlistTitle: 'Playlist Two',
                  ),
                  playlistNameScreen(
                    context: context,
                    playlistTitle: 'Playlist Three',
                  ),
                ],
              ),
            ),
            floatingActionButton: isFloatVisible
                ? FloatingActionButton(
                    onPressed: () {
                      createPlayListAlert(ctx: context);
                    },
                    backgroundColor: Color.fromARGB(197, 0, 0, 0),
                    child: Icon(
                      Icons.playlist_add,
                      size: 25,
                    ),
                  )
                : null));
  }
}

import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:assets_music_player/functions/music_List.dart';
import 'package:assets_music_player/functions/music_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../second screen/play_musicScreen.dart';

class MyMusicScreen extends StatefulWidget {
  const MyMusicScreen({super.key});

  @override
  State<MyMusicScreen> createState() => _MyMusicScreenState();
}

class _MyMusicScreenState extends State<MyMusicScreen> {
  // final AssetsAudioPlayer audioPlayer = AssetsAudioPlayer();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ListView.builder(
            controller: ScrollController(),
            itemBuilder: (context, index) {
              return ListTile(
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(14),
                  child: Image.asset(
                    musicList[index].metas.image!.path,
                    fit: BoxFit.cover,
                    height: 172.03,
                    width: 60,
                  ),
                ),
                title: Text(
                  musicList[index].metas.title.toString(),
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                subtitle: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      musicList[index].metas.artist.toString(),
                      style: TextStyle(
                          color: Color.fromARGB(135, 255, 255, 255),
                          fontSize: 14),
                    ),
                    Text(
                      '4:${index + 10}',
                      style: TextStyle(
                          color: Color.fromARGB(135, 255, 255, 255),
                          fontSize: 14),
                    )
                  ],
                ),
                trailing: PopupMenuButton(
                  position: PopupMenuPosition.under,
                  elevation: 0,
                  onSelected: (value) {
                    if (value == MyListMenu.item1) {
                    } else if (value == MyListMenu.item2) {
                    } else if (value == MyListMenu.item3) {}
                  },
                  icon: Icon(
                    Icons.more_vert,
                    color: Colors.white,
                    size: 20,
                  ),
                  color: Color.fromARGB(255, 118, 65, 153),
                  itemBuilder: (context) => [
                    PopupMenuItem(
                        value: MyListMenu.item1,
                        textStyle: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                            fontSize: 17),
                        child: Text('Add To Liked')),
                    PopupMenuItem(
                        value: MyListMenu.item2,
                        textStyle: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                            fontSize: 17),
                        child: Text('Add To Playlist')),
                    PopupMenuItem(
                        value: MyListMenu.item3,
                        textStyle: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                            fontSize: 17),
                        child: Text('Info')),
                  ],
                ),
                onTap: () async {
                  audioPlayer.playlistPlayAtIndex(index);
                  await Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return PlayMusicScreen();
                  }));
                  miniPlayerVisibility.value = true;
                },
              );
            },
            itemCount: musicList.length,
            shrinkWrap: true,
          ),
        ],
      ),
    );
  }
}

enum MyListMenu {
  item1,
  item2,
  item3,
}

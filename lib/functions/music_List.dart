import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:assets_music_player/functions/music_List.dart';
import 'package:assets_music_player/functions/music_functions.dart';

List<Audio> musicList = [
  Audio('assets/dippam-dappam-kaathuvaakula-rendu-kaadhal-128-kbps-sound.mp3',
      metas: Metas(
          title: 'Dippam Dippim',
          artist: 'Aniruth',
          image: MetasImage.asset('assets/dippam dippam.png'))),
  Audio(
      'assets/the-monster-song-extended-version-kgf-chapter-2-tamil-128-kbps-sound.mp3',
      metas: Metas(
          title: 'KGF',
          artist: 'Shabaash mithu',
          image: MetasImage.asset('assets/kgf.png'))),
  Audio('assets/Karineela_Kayalukondu_(KuttyWap.com).mp3',
      metas: Metas(
          title: 'Honey bee',
          artist: 'Shabaash mithu',
          image: MetasImage.asset('assets/honey-bee.png'))),
  Audio('assets/Eminem-Alfred-Outro-(HiphopKit.com).mp3',
      metas: Metas(
          title: 'Eminum alfred',
          artist: 'Eminum',
          image: MetasImage.asset('assets/Eminem-Alfred-Outro-artwork.webp'))),
  Audio('assets/Eminem-No-Regrets-Ft-Don-Toliver-(HiphopKit.com).mp3',
      metas: Metas(
          title: 'Eminum no regret',
          artist: 'Eminum',
          image: MetasImage.asset('assets/Eminem-Alfred-Outro-artwork.webp'))),
];
//final AssetsAudioPlayer audioPlayer = AssetsAudioPlayer();

void setUpPlayList() async {
  await audioPlayer.open(Playlist(audios: musicList),
      autoStart: false,
      loopMode: LoopMode.playlist,
      showNotification: true,
      notificationSettings: NotificationSettings(stopEnabled: false));
}

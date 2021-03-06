import 'package:deep_link_navigation/deep_link_navigation.dart';
import 'package:flutter/material.dart';

import 'package:single_base_route/deep_links.dart';
import 'package:single_base_route/model.dart';

class SongListTile extends StatelessWidget {
  final Song song;

  const SongListTile({Key key, this.song}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      key: Key(song.name),
      leading: Icon(Icons.music_note),
      title: Text(song.name),
      onTap: () => DeepLinkNavigator.of(context).push(SongDL(song)),
    );
  }
}
import 'package:gcmusic/features/feature_home/domain/entities/playlist_entity.dart';

class PlayListModel extends PlayListEntity {
  PlayListModel({
    String? trackUrl,
    String? pictureUrl,
    int? trackId,
    String? trackName,
    String? artistName,
    String? albumName,
    int? listenCounter,
  }) : super(
          trackUrl: trackUrl,
          pictureUrl: pictureUrl,
          trackId: trackId,
          trackName: trackName,
          artistName: artistName,
          albumName: albumName,
          listenCounter: listenCounter,
        );

  PlayListModel.fromJson(Map<String, dynamic> json) {
    _trackUrl = json['track_url'];
    _pictureUrl = json['picture_url'];
    _trackId = json['track_id'];
    _trackName = json['track_name'];
    _artistName = json['artist_name'];
    _albumName = json['album_name'];
    _listenCounter = json['listen_counter'];
  }
  String? _trackUrl;
  String? _pictureUrl;
  int? _trackId;
  String? _trackName;
  String? _artistName;
  String? _albumName;
  int? _listenCounter;

  String? get trackUrl => _trackUrl;
  String? get pictureUrl => _pictureUrl;
  int? get trackId => _trackId;
  String? get trackName => _trackName;
  String? get artistName => _artistName;
  String? get albumName => _albumName;
  int? get listenCounter => _listenCounter;

  static List<PlayListModel> getPlayListModelList(List list) =>
      List<PlayListModel>.from(list.map((x) => PlayListModel.fromJson(x)));
}

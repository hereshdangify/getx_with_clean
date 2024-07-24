class PlayList {
  final String trackUrl;
  final String pictureUrl;
  final int trackId;
  final String trackName;
  final String artistName;
  final String albumName;
  final int listenCounter;

  PlayList({
    required this.trackUrl,
    required this.pictureUrl,
    required this.trackId,
    required this.trackName,
    required this.artistName,
    required this.albumName,
    required this.listenCounter,
  });

  factory PlayList.fromJson(Map<String, dynamic> json) {
    return PlayList(
      trackUrl: json['track_url'],
      pictureUrl: json['picture_url'],
      trackId: json['track_id'],
      trackName: json['track_name'],
      artistName: json['artist_name'],
      albumName: json['album_name'],
      listenCounter: json['listen_counter'],
    );
  }
}

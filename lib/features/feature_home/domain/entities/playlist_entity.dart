import 'package:equatable/equatable.dart';

class PlayListEntity extends Equatable {
  final String? trackUrl;
  final String? pictureUrl;
  final int? trackId;
  final String? trackName;
  final String? artistName;
  final String? albumName;
  final int? listenCounter;

  PlayListEntity({
    this.trackUrl,
    this.pictureUrl,
    this.trackId,
    this.trackName,
    this.artistName,
    this.albumName,
    this.listenCounter,
  });

  @override
  List<Object?> get props => [
        trackUrl,
        pictureUrl,
        trackId,
        trackName,
        artistName,
        albumName,
        listenCounter,
      ];
}

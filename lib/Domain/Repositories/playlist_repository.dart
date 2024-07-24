import 'package:gcmusic/Domain/Entities/playlist.dart';

abstract class PlaylistRepository {
  Future<List<PlayList>> getPlaylists();
}

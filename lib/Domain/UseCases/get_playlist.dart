import 'package:gcmusic/Domain/Entities/playlist.dart';
import 'package:gcmusic/Domain/Repositories/playlist_repository.dart';

class GetPlaylist {
  final PlaylistRepository repository;

  GetPlaylist({required this.repository});

  Future<List<PlayList>> call() async {
    return repository.getPlaylists();
  }
}

import 'package:gcmusic/features/feature_home/presentation/binding/home_binding.dart';
import 'package:gcmusic/features/feature_home/presentation/screens/playlist_screen.dart';
import 'package:get/get.dart';

class Routings {
  static final Routings _singleton = Routings._internal();
  factory Routings() => _singleton;
  Routings._internal();

  final home = '/home';

  List<GetPage> pages() => [
        GetPage(
          name: home,
          page: () => PlaylistScreen(),
          binding: HomeBinding(),
        ),
      ];
}

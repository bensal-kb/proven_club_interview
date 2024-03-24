
import 'package:demo1/data/models/gif_model.dart';

import '../res.dart';

abstract class Repo {
  Future<Res<List<GifModel>>> getGifList({
    required int offset,
    required int limit,
  });

  Future<Res<List<GifModel>>> getGifListByQuery({
    required String query,
    required int offset,
    required int limit,
  });

}
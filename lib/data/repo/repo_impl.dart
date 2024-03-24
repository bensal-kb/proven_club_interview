import 'package:demo1/data/repo/repo.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import '../../main.dart';
import '../models/gif_model.dart';
import '../res.dart';
import '../urls.dart';

class RepoImpl implements Repo {
  final Dio dio = Dio();

  Urls urls() => getIt<Urls>();

  @override
  Future<Res<List<GifModel>>> getGifList({
    required int offset,
    required int limit,
  }) async {
    try {
      Response res =
          await dio.get(urls().getGifList(limit: limit, offset: offset));
      if(kDebugMode) {
        print(urls().getGifList(limit: limit, offset: offset));
        print(res.data);
      }
      if (res.statusCode == 200) {
        List<GifModel> list = [];
        for (var item in res.data['data']) {
          list.add(GifModel.fromJson(item));
        }
        return Res(data: list);
      } else {
        return Res(error: res.statusMessage, statusCode: res.statusCode);
      }
    } on DioException catch (e) {
      return Res(
        error: e.toString(),
      );
    } catch (e) {
      return Res(
        error: e.toString(),
      );
    }
  }
  @override
  Future<Res<List<GifModel>>> getGifListByQuery({
    required String query,
    required int offset,
    required int limit,
  }) async {
    try {
      Response res =
          await dio.get(urls().getGifByQuery(query: query, limit: limit, offset: offset));
      if(kDebugMode) {
        print(urls().getGifList(limit: limit, offset: offset));
        print(res.data);
      }
      if (res.statusCode == 200) {
        List<GifModel> list = [];
        for (var item in res.data['data']) {
          list.add(GifModel.fromJson(item));
        }
        return Res(data: list);
      } else {
        return Res(error: res.statusMessage, statusCode: res.statusCode);
      }
    } on DioException catch (e) {
      return Res(
        error: e.toString(),
      );
    } catch (e) {
      return Res(
        error: e.toString(),
      );
    }
  }
}

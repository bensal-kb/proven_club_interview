class Urls {
  static const giphyApiKey = 'k3NPe6KT3DdClLluqYUE1U2vLdAwtKv3';

  String getGifList({
    required int offset,
    required int limit,
  }) =>
      'https://api.giphy.com/v1/gifs/trending?api_key=$giphyApiKey&limit=$limit&offset=$offset&rating=g&bundle=messaging_non_clips';

  String getGifByQuery({
    required String query,
    required int offset,
    required int limit,
  }) =>
      'https://api.giphy.com/v1/gifs/search?api_key=$giphyApiKey&q=$query&limit=$limit&offset=$offset&rating=glang=en&bundle=messaging_non_clips';
}

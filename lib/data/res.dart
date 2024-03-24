class Res<T> {
  final T? data;
  final String? error;
  final int? statusCode;

  Res({this.data, this.error, this.statusCode});

  bool isSuccess()=>data!=null;

  bool isError()=>error!=null;
}

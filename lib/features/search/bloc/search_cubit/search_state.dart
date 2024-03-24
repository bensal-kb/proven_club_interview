part of 'search_cubit.dart';

@immutable
abstract class SearchState {
  final String query;
  const SearchState({ this.query = ''});
}

class SearchInitial extends SearchState {
  const SearchInitial({ super.query});

}
class SearchLoading extends SearchState {
  const SearchLoading({ super.query});
}
class SearchSuccess extends SearchState {
  const SearchSuccess({ super.query});
}

class SearchError extends SearchState {
  final String error;
  const SearchError({required this.error,  super.query});
}

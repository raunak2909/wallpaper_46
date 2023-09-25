part of 'wallceno_bloc.dart';

@immutable
class WallcenoEvent {}

class GetSearchWallper extends WallcenoEvent {
  String query;
 
  GetSearchWallper({required this.query, });
}

class GetTradingWallpaper extends WallcenoEvent {}

part of 'internet_bloc.dart';
@freezed
class InternetEvent  with _$InternetEvent
{
  const factory InternetEvent.checkConnection() = _CheckConnection;
  const factory InternetEvent.setNoInternetConnection() = _SetNoInternetConnection;
}
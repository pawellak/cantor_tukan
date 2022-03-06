import 'package:freezed_annotation/freezed_annotation.dart';

part 'cantor_remote_failure.freezed.dart';

@freezed
abstract class CantorRemoteFailure with _$CantorRemoteFailure {
  const factory CantorRemoteFailure.serverError() = _ServerError;
  const factory CantorRemoteFailure.incorrectDataError() = _IncorrectDataError;
  const factory CantorRemoteFailure.noInternet() = _NoInternet;
}

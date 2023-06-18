import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_failures.freezed.dart';

@freezed
class ApiFailure with _$ApiFailure {
  const factory ApiFailure.clientFailure({
    String? errorMessage,
  }) = _ClientFailure;
  const factory ApiFailure.serverFailure({
    int? statusCode,
    String? errorMessage,
  }) = _ServerFailure;
}

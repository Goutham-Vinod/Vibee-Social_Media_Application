import 'package:json_annotation/json_annotation.dart';

import 'count.dart';
import 'result.dart';

part 'search_user_response_model.g.dart';

@JsonSerializable()
class SearchUserResponseModel {
  List<Result>? result;
  List<Count>? count;

  SearchUserResponseModel({this.result, this.count});

  factory SearchUserResponseModel.fromJson(Map<String, dynamic> json) {
    return _$SearchUserResponseModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SearchUserResponseModelToJson(this);
}

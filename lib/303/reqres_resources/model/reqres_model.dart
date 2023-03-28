import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'reqres_model.g.dart';

@JsonSerializable()
class ReqresModel {
  List<Data>? data;

  ReqresModel({this.data});

  factory ReqresModel.fromJson(Map<String, dynamic> json) {
    return _$ReqresModelFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$ReqresModelToJson(this);
  }
}

@JsonSerializable()
class Data extends Equatable {
  int? id;
  String? name;
  int? year;
  String? color;
  String? pantoneValue;
  String? price;

  Data({this.id, this.name, this.year, this.color, this.pantoneValue, this.price});

  factory Data.fromJson(Map<String, dynamic> json) {
    return _$DataFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$DataToJson(this);
  }

  @override
  List<Object?> get props => [id, name, price];
}

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:contentful/contentful.dart';

part 'contentful.g.dart';

@JsonSerializable()
class Event extends Entry<EventFields> {
  Event({
    required SystemFields sys,
    required EventFields fields,
  }) : super(sys: sys, fields: fields);

  static Event fromJson(Map<String, dynamic> json) => _$EventFromJson(json);

  Map<String, dynamic> toJson() => _$EventToJson(this);
}

@JsonSerializable()
class EventFields extends Equatable {
  const EventFields({
    required this.title,
    required this.icon,
  }) : super();

  final String title;
  final Asset icon;

  static EventFields fromJson(Map<String, dynamic> json) =>
      _$EventFieldsFromJson(json);

  Map<String, dynamic> toJson() => _$EventFieldsToJson(this);

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();

}
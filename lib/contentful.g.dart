// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contentful.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Event _$EventFromJson(Map<String, dynamic> json) => Event(
      sys: SystemFields.fromJson(json['sys'] as Map<String, dynamic>),
      fields: EventFields.fromJson(json['fields'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$EventToJson(Event instance) => <String, dynamic>{
      'sys': instance.sys,
      'fields': instance.fields,
    };

EventFields _$EventFieldsFromJson(Map<String, dynamic> json) => EventFields(
      title: json['title'] as String,
      icon: Asset.fromJson(json['icon'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$EventFieldsToJson(EventFields instance) =>
    <String, dynamic>{
      'title': instance.title,
      'icon': instance.icon,
    };

import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first

class PostModel {
  final String id;
  final String title;
  final String tenant;
  final String dateEvent;
  final String initialtime;
  final String finalTime;
  final String event;
  final String imgPost;
  final String tags;
  PostModel({
    required this.id,
    required this.title,
    required this.tenant,
    required this.dateEvent,
    required this.initialtime,
    required this.finalTime,
    required this.event,
    required this.imgPost,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'title': title,
      'tenant': tenant,
      'dateEvent': dateEvent,
      'initialtime': initialtime,
      'finalTime': finalTime,
      'event': event,
      'imgPost': imgPost,
      'tags': tags,
    };
  }

  factory PostModel.fromMap(Map<String, dynamic> map) {
    return PostModel(
      id: map['id'] as String,
      title: map['title'] as String,
      tenant: map['tenant'] as String,
      dateEvent: map['dateEvent'] as String,
      initialtime: map['initialtime'] as String,
      finalTime: map['finalTime'] as String,
      event: map['event'] as String,
      imgPost: map['imgPost'] as String,
      tags: map['tags'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory PostModel.fromJson(String source) =>
      PostModel.fromMap(json.decode(source) as Map<String, dynamic>);
}

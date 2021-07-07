import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'ib_chapter.g.dart';

@HiveType(typeId: 0)
class IbChapter {

  @HiveField(0)
  final String id;

  @HiveField(1)
  final String value;

  @HiveField(2)
  final String navOrder;

  @HiveField(3)
  IbChapter prev;

  @HiveField(4)
  IbChapter next;

  @HiveField(5)
  final HiveList items;

  IbChapter({
    @required this.id,
    @required this.value,
    @required this.navOrder,
    this.prev,
    this.next,
    this.items,
  });

  set prevPage(IbChapter prev) => this.prev = prev;
  set nextPage(IbChapter next) => this.next = next;

  @override
  String toString() {
    return '{id: $id, prev: ${prev?.id}, next: ${next?.id}';
  }
}

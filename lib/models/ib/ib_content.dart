import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

part 'ib_content.g.dart';

abstract class IbContent {
  @HiveField(0)
  String content;

  IbContent({@required this.content});
}

@HiveType(typeId: 2)
class IbTocItem extends IbContent {
  @HiveField(1)
  HiveList items;

  IbTocItem({@required String content, this.items}) : super(content: content);
}

@HiveType(typeId: 3)
class IbMd extends IbContent {
  IbMd({@required String content}) : super(content: content);
}

import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:mobile_app/models/ib/ib_content.dart';

part 'ib_page_data.g.dart';

@HiveType(typeId: 1)
class IbPageData {
  
  @HiveField(0)
  final String id;

  @HiveField(1)
  final String pageUrl;

  @HiveField(2)
  final String title;

  @HiveField(3)
  final List<IbContent> content;
  
  @HiveField(4)
  final List<IbTocItem> tableOfContents;
  
  @HiveField(5)
  final List<IbTocItem> chapterOfContents;

  IbPageData({
    @required this.id,
    @required this.pageUrl,
    @required this.title,
    @required this.content,
    this.tableOfContents,
    this.chapterOfContents,
  });
}

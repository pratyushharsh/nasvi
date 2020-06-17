import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Review extends StatelessWidget {
  final Map<String, dynamic> values;

  const Review({Key key, this.values}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<MapEntry> data = values.entries.toList();
    return Column(
      children: <Widget>[
        Text("Review And Submit", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),),
        Divider(
          thickness: 1,
        ),
        Expanded(
          child: ListView.separated(
            padding: EdgeInsets.only(bottom: 100),
            separatorBuilder: (context, idx) {
              return Divider();
            },
            itemBuilder: (context, idx) {
              return TagPair(
                tag: data[idx]?.key,
                desc: data[idx]?.value,
              );
            },
            itemCount: data.length,
          ),
        ),
      ],
    );
  }
}

class TagPair extends StatelessWidget {
  final String tag;
  final String desc;

  const TagPair({Key key, this.tag, this.desc}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          tag != null ? Intl.message(tag) : "",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Text(desc != null ? Intl.message(desc) : "",)
      ],
    );
  }
}

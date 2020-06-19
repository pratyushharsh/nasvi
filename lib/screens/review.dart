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
        Text(
          "Review And Submit",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
        Divider(
          thickness: 2,
        ),
        Expanded(
          child: ListView.separated(
            padding: EdgeInsets.only(bottom: 100),
            separatorBuilder: (context, idx) {
              return Divider(thickness: 1,);
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
    return Flex(
      direction: Axis.horizontal,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Expanded(
          flex: 4,
          child: Text(
            tag != null ? Intl.message(tag) : "",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Expanded(
          flex: 2,
            child: Container(
              alignment: Alignment.centerRight,
              child: Text(
          desc != null ? Intl.message(desc) : "",
        ),
            ))
      ],
    );
  }
}

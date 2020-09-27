import 'package:flutter/material.dart';
import 'package:meta/meta.dart';  // @required is defined in the meta.dart package



// underscore -> variables are private.
final _rowHeight = 100.0;
final _borderRadius = BorderRadius.circular(_rowHeight / 2);



class Category extends StatelessWidget {

  final String name;  // 変数受け取るため定義
  final ColorSwatch color;
  final IconData iconLocation;
  // [Category] saves the name, color, and the icon。引数受け渡し-> CLASS({}):制約
  const Category({Key key, @required this.name, @required this.color, @required this.iconLocation,})
    : assert(name != null),
      assert(color != null),
      assert(iconLocation != null),
      super(key: key);


  // ++++++++++++++++++++++++++++++++++++++++++++++++++++++
  @override
  // "context" describes the location of this widget in the widget tree.
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        height: _rowHeight,

        child: InkWell(  // Tap -> [InkWell] animation.
          borderRadius: _borderRadius,
          highlightColor: color,
          splashColor: color,
          // 2通り:  "the () => function()" or "the () { function(); }"
          onTap: () {
            print('I was tapped!');
          },
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              // リストの型指定は任意で可：<type>[].
              children: [
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Icon(
                    iconLocation,
                    size: 60.0,
                  ),
                ),
                Center(
                  child: Text(
                    name,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headline5,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

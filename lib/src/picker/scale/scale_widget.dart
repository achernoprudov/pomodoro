import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'scale_item_widget.dart';

class ScaleWidget extends StatelessWidget {
  final int itemsCount;
  final ValueChanged<int> onChangeSelection;

  const ScaleWidget(
      {Key key, @required this.itemsCount, @required this.onChangeSelection})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return PageView.builder(
      itemCount: itemsCount,
      scrollDirection: Axis.horizontal,
      pageSnapping: false,
      // TODO custom page scroll physics
      physics: PageScrollPhysics(),
      onPageChanged: (index) {
        if (theme.platform == TargetPlatform.iOS) {
          HapticFeedback.selectionClick();
        }
        onChangeSelection(index);
      },
      // TODO make edge fraction
      controller: PageController(viewportFraction: 0.1),
      itemBuilder: (_, index) => ScaleItemWidget(
            interval: index,
          ),
    );
  }
}

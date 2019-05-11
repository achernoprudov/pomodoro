import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pomodoro/src/home_view_model.dart';
import 'package:scoped_model/scoped_model.dart';
import 'scale_item_widget.dart';

class ScaleWidget extends StatelessWidget {
  final int itemsCount;

  const ScaleWidget({
    Key key,
    @required this.itemsCount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return ScopedModelDescendant<HomeViewModel>(
      rebuildOnChange: false,
      builder: (context, _, viewModel) => PageView.builder(
            itemCount: itemsCount,
            scrollDirection: Axis.horizontal,
            pageSnapping: false,
            // TODO custom page scroll physics
            physics: PageScrollPhysics(),
            onPageChanged: (index) {
              if (theme.platform == TargetPlatform.iOS) {
                HapticFeedback.selectionClick();
              }
              viewModel.timerValue = index;
            },
            // TODO make edge fraction
            controller: PageController(viewportFraction: 0.1),
            itemBuilder: (_, index) => ScaleItemWidget(
                  interval: index,
                ),
          ),
    );
  }
}

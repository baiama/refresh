import 'package:flutter/material.dart';

class VibrationRefreshIndicator extends StatefulWidget {
  const VibrationRefreshIndicator({
    Key? key,
    required this.child,
    this.displacement = 40.0,
    this.edgeOffset = 0.0,
    required this.onRefresh,
    this.color,
    this.backgroundColor,
    this.notificationPredicate = defaultScrollNotificationPredicate,
    this.semanticsLabel,
    this.semanticsValue,
    this.strokeWidth = 2.0,
    this.triggerMode = RefreshIndicatorTriggerMode.onEdge,
  }) : super(key: key);

  final double displacement;
  final Widget child;
  final double edgeOffset;
  final RefreshCallback onRefresh;
  final Color? color;
  final Color? backgroundColor;
  final ScrollNotificationPredicate notificationPredicate;
  final String? semanticsLabel;
  final String? semanticsValue;
  final double strokeWidth;
  final RefreshIndicatorTriggerMode triggerMode;

  @override
  State<VibrationRefreshIndicator> createState() =>
      _VibrationRefreshIndicatorState();
}

class _VibrationRefreshIndicatorState extends State<VibrationRefreshIndicator> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

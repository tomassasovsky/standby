import 'package:cupertino_clock/cupertino_clock.dart';
import 'package:flutter/widgets.dart';

class StandbyPage extends StatelessWidget {
  const StandbyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const StandbyView();
  }
}

class StandbyView extends StatefulWidget {
  const StandbyView({super.key});

  @override
  State<StandbyView> createState() => _StandbyViewState();
}

class _StandbyViewState extends State<StandbyView> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: PageView(
            scrollDirection: Axis.vertical,
            children: const [
              CupertinoAnalogClock(size: 200),
              CupertinoAnalogClock(size: 200),
            ],
          ),
        ),
        Flexible(
          child: PageView(
            scrollDirection: Axis.vertical,
            children: const [
              CupertinoAnalogClock(size: 200),
              CupertinoAnalogClock(size: 200),
            ],
          ),
        ),
      ],
    );
  }
}

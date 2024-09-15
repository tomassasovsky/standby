import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:standby/charging_indicator/cubit/charging_indicator_cubit.dart';

class ChargingIndicator extends StatelessWidget {
  const ChargingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ChargingIndicatorCubit(),
      child: const Placeholder(),
    );
  }
}

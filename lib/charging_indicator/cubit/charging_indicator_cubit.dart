import 'dart:async';

import 'package:battery_plus/battery_plus.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'charging_indicator_state.dart';

class ChargingIndicatorCubit extends Cubit<ChargingIndicatorState> {
  ChargingIndicatorCubit() : super(ChargingIndicatorInitial());

  final battery = Battery();
  StreamSubscription<BatteryState>? _batteryStateSubscription;

  void registerListener() {
    _batteryStateSubscription = battery.onBatteryStateChanged.listen((state) {
      checkChargingState();
    });
  }

  Future<void> checkChargingState() async {
    final batteryLevel = await battery.batteryLevel;
    final isCharging = await battery.batteryState == BatteryState.charging ||
        await battery.batteryState == BatteryState.full;

    if (isCharging) {
      emit(ChargingIndicatorCharging(batteryLevel));
    } else {
      emit(ChargingIndicatorNotCharging(batteryLevel));
    }
  }

  @override
  Future<void> close() async {
    await _batteryStateSubscription?.cancel();
    return super.close();
  }
}

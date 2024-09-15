part of 'charging_indicator_cubit.dart';

@immutable
sealed class ChargingIndicatorState {}

final class ChargingIndicatorInitial extends ChargingIndicatorState {}

final class ChargingIndicatorCharging extends ChargingIndicatorState {
  ChargingIndicatorCharging(this.batteryLevel);

  final int batteryLevel;
}

final class ChargingIndicatorNotCharging extends ChargingIndicatorState {
  ChargingIndicatorNotCharging(this.batteryLevel);

  final int batteryLevel;
}

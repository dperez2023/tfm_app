
import 'energyUsageModel.dart';

class ApiResponse {
  final String status;
  final String message;
  final EnergyUsageData data;

  ApiResponse({required this.status, required this.message, required this.data});

  factory ApiResponse.fromJson(Map<String, dynamic> json) {
    return ApiResponse(
      status: json['status'],
      message: json['message'],
      data: EnergyUsageData.fromJson(json['data']),
    );
  }
}

class EnergyUsageData {
  final EnergyUsage energyUsage;

  EnergyUsageData({required this.energyUsage});

  factory EnergyUsageData.fromJson(Map<String, dynamic> json) {
    return EnergyUsageData(
      energyUsage: EnergyUsage.fromJson(json['energy_usage']),
    );
  }
}

class EnergyUsage {
  final List<int> data;
  final int endTimestamp;
  final int interval;
  final String localTime;
  final int startTimestamp;

  EnergyUsage({
    required this.data,
    required this.endTimestamp,
    required this.interval,
    required this.localTime,
    required this.startTimestamp,
  });

  factory EnergyUsage.fromJson(Map<String, dynamic> json) {
    return EnergyUsage(
      data: List<int>.from(json['data']),
      endTimestamp: json['end_timestamp'],
      interval: json['interval'],
      localTime: json['local_time'],
      startTimestamp: json['start_timestamp'],
    );
  }
}
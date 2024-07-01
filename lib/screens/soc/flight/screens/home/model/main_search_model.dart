class MainSearchModel {
  final String from;
  final String? to;
  final int adult;
  final int child;
  final int infant;

  MainSearchModel({
    required this.from,
    this.to,
    required this.adult,
    required this.child,
    required this.infant,
  });

  MainSearchModel copyWith({
    String? from,
    String? to,
    int? adult,
    int? child,
    int? infant,
  }) {
    return MainSearchModel(
      from: from ?? this.from,
      to: to ?? this.to,
      adult: adult ?? this.adult,
      child: child ?? this.child,
      infant: infant ?? this.infant,
    );
  }

  factory MainSearchModel.init() {
    return MainSearchModel(
      from: "HCM",
      adult: 1,
      child: 0,
      infant: 0,
    );
  }
}

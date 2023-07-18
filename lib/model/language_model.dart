class LanguageModel {
  String? language;
  String? engName;
  bool? isSelected;

  LanguageModel({this.language, this.isSelected, this.engName});

  factory LanguageModel.fromJson(Map<String, dynamic> json) {
    return LanguageModel(
      language: json['language'],
      engName: json['eng_name'],
      isSelected: json['isSelected'],
    );
  }

  LanguageModel copyWith({
    String? language,
    String? engName,
    bool? isSelected,
  }) {
    return LanguageModel(
      language: language ?? this.language,
      engName: engName ?? this.engName,
      isSelected: isSelected ?? this.isSelected,
    );
  }
}

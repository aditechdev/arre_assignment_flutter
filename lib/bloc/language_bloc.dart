import 'dart:convert';
import 'package:arre_assignment_flutter/data/language_list.dart';
import 'package:arre_assignment_flutter/model/language_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final languageprovider =
    StateNotifierProvider<LanguageNotifier, List<LanguageModel>>(
        (ref) => LanguageNotifier());

class LanguageNotifier extends StateNotifier<List<LanguageModel>> {
  LanguageNotifier() : super([]);

  List<LanguageModel> tempSelectedList = [];

  fetchList() {
    if (state.isEmpty) {
      const jsonString = jsonLanguage;
      final jsonList = json.decode(jsonString) as List<dynamic>;

      final data = jsonList.map((e) => LanguageModel.fromJson(e)).toList();

      state = data;
      tempSelectedList = data;
    } else {
      tempSelectedList = state;
    }
  }

  updateList(LanguageModel selectedModel) {
    final tempList = state.toList();
    
    final selectedIndex =
        tempList.indexWhere((item) => item.language == selectedModel.language);

    if (selectedIndex != -1) {
      tempList[selectedIndex] = selectedModel.copyWith(
        isSelected: !selectedModel.isSelected!,
      );

      state = tempList;
    }
  }

  clearTempList() {
    state = tempSelectedList;
  }
}

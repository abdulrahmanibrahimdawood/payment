import 'item.model.dart';

class ItemsList {
  List<Item>? items;

  ItemsList({this.items});

  factory ItemsList.fromJson(Map<String, dynamic> json) => ItemsList(
    items: (json['items'] as List<dynamic>?)
        ?.map((e) => Item.fromJson(e as Map<String, dynamic>))
        .toList(),
  );

  Map<String, dynamic> toJson() => {
    'items': items?.map((e) => e.toJson()).toList(),
  };
}

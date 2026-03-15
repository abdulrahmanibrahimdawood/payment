import 'package:payment/features/checkout/data/models/paypal_models/amount/amount.model.dart';
import 'package:payment/features/checkout/data/models/paypal_models/amount/details.model.dart';
import 'package:payment/features/checkout/data/models/paypal_models/items/item.model.dart';
import 'package:payment/features/checkout/data/models/paypal_models/items/items_list.model.dart';

({AmountModel amount, ItemsListModel itemList}) getTransactionsData() {
  var amount = AmountModel(
    currency: 'USD',
    total: '100',
    details: Details(shipping: '0', shippingDiscount: 0, subtotal: '100'),
  );
  List<OrderItemModel> orders = [
    OrderItemModel(currency: 'USD', name: 'Apple', price: '4', quantity: 10),
    OrderItemModel(currency: 'USD', name: 'Apple', price: '5', quantity: 12),
  ];
  var itemList = ItemsListModel(orders: orders);

  return (amount: amount, itemList: itemList);
}

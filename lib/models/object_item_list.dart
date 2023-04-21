class ObjectItemList {
  late final int _amount;
  late final String _item;
  late final bool _check;
  late final double _cost;

  ObjectItemList(this._item) {
    _amount = 1;
    _check = false;
    _cost = 0;
  }

  getItem() {
    return _item;
  }

  getAmount() {
    return _amount;
  }

  getCost() {
    return _cost;
  }

  isCheck() {
    return _check;
  }

  setAmount(amount) {
    _amount = amount;
  }

  setCost(cost) {
    _cost = cost;
  }

  setCheck(check) {
    _check = check;
  }
}

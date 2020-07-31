class State {
  int _value;
  final String _ignoreValue = "-";

  State() {
    this._value = 0;
  }

  State.unSet(this._value);

  getValue() {
    if (this._value != -1) return this._value;
    return this._ignoreValue;
  }

  flip() {
    this._value = 1 - this._value;
  }

  String toString() {
    return "S-" + this._value.toString();
  }
}

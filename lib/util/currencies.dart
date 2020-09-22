class Currencies{

  String _prefixReais = "R\$";
  String _prefixEuro = "€";
  String _prefixDolar = "US\$";

  String _typeReais = "Reais";
  String _typeDolar = "Dolares";
  String _typeEuro = "Euro";

  String getPrefixReais() => this._prefixReais;
  String getPrefixDolar() => this._prefixDolar;
  String getPrefixEuro() => this._prefixEuro;

  String getTypeReais() => this._typeReais;
  String getTypeDolar() => this._typeDolar;
  String getTypeEuro() => this._typeEuro;

  double _dolar;
  double _euro;

  bool isTypeReal(String value) => value == this._typeReais;
  bool isTypeDolar(String value) => value == this._typeDolar;
  bool isTypeEuro(String value) => value == this._typeEuro;

  void setDolar(double value) => _dolar = value;
  void setEuro(double value) => _euro = value;

  double getDolar() => this._dolar;
  double getEuro() => this._euro;

  void setData(Map data){
    setDolar(data["results"]["currencies"]["USD"]["buy"]);
    setEuro(data["results"]["currencies"]["EUR"]["buy"]);
  }
}
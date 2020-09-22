class Currencies{

  String _prefixReais = "R\$";
  String _prefixEuro = "€";
  String _prefixDolar = "US\$";

  String getPrefixReais(){
    return this._prefixReais;
  }

  String getPrefixDolar(){
    return this._prefixDolar;
  }

  String getPrefixEuro(){
    return this._prefixEuro;
  }

  double getBuyDolar(Map data){
    return data["results"]["currencies"]["USD"]["buy"];
  }

  double getBuyEuro(Map data){
    return data["results"]["currencies"]["EUR"]["buy"];
  }

}
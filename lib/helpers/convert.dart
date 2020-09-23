import 'package:conversor_de_moedas/model/quotations.dart';

class Currencies{

  static const String PREFIX_REAIS = "R\$";
  static const String PREFIX_EURO = "€";
  static const String PREFIX_DOLAR = "US\$";

  Map<Currency, Quotation> quotations;

  Currencies(this.quotations);

  Quotation getDolarQuotation() => getQuotation(Currency.USD);
  Quotation getEuroQuotation() => getQuotation(Currency.EUR);
  Quotation getBitcoinQuotation() => getQuotation(Currency.BTC);

  Quotation getQuotation(Currency type) {
    return this.quotations[type] ??
        Quotation(type.toString(), buy: 0, sell: 0, variation: 0);
  }

  double dolarToReal(double value) {
    return value * getDolarQuotation().buy;
  }

  double euroToReal(double value) {
    return value * getEuroQuotation().buy;
  }

  double realToDolar(double value) {
    return value * getDolarQuotation().buy;
  }

  double euroToDolar(double value) {
    return realToEuro(value) / getDolarQuotation().buy;
  }

  double realToEuro(double value) {
    return value * getEuroQuotation().buy;
  }

  double dolarToEuro(double value) {
    return realToDolar(value) / getEuroQuotation().buy;
  }

}
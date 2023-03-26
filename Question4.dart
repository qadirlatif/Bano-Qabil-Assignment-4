void main() {
  Map<String, List> Contries = {
    "pakistan": [5555, 8888],
    "india": [12121, 882323288],
    "bangladesh": [78787, 89898],
    "saudi arabia": [56565, 8815151588],
    "afghanistan": [25425, 353535],
  };
  var Densities =
      Contries.entries.map((e) => [e.key, e.value[0] / e.value[1]]).toList();
  Densities.sort((a, b) => b[1].compareTo(a[1]));
  var TopContries = Densities.sublist(0, 5);
  print('Top 5 countries by population density:');
  for (final country in TopContries) {
    print('${country[0]} : with density :  ${country[1]}');
  }
}

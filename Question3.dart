void main() {
  Map<String, List> products = {
    "bananas": [55, 88],
    "apples": [20, 55],
    "chikoo": [10, 10],
    "mango": [30, 20],
  };
  var costs =
      products.entries.map((e) => [e.key, e.value[0] * e.value[1]]).toList();
  costs.sort(((a, b) => a[1].compareTo(b[1])));
  //reverse is not working
  print(costs);
}

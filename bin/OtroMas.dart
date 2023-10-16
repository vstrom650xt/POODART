void main() {
  personalisedGreeting('jose', 5);

  List<String> lista = ['hola', 'farola', 'lola', 'lola', 'estrapola'];

  Set setLista = lista.toSet();

  setLista.add("value");
  setLista.remove("hola");

  lista.forEach((element) {
    print(element);
  });

  print("----------------------------------------");

  setLista.forEach((element) {
    print(element);
  });
}

void personalisedGreeting(String name, int hour) {
  print("good mornig" + " " + "$name" + " it's" + hour.toString());
}

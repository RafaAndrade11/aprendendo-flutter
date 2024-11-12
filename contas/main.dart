Future<void> main() async {
  Usuario usuario =Usuario('Rafael');

  await delay();

  usuario.setIdade(18);

  print(usuario.maiorIdade);
}

//com o Future async await, conseguimos configurar um delay para inicializar a aplicação
//a a notação Future e async permite que usemos o await
Future<void> delay() async {
  await Future.delayed(Duration(seconds: 1));
}

class Usuario {

  String nome;
  late int idade;

  Usuario(this.nome);

 void setIdade(int idade) {
  this.idade = idade;
 }

 bool get maiorIdade => idade >= 18;

}
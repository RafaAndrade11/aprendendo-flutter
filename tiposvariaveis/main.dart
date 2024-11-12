//Exemplo de Conta Bancária

void main() {
  final user1 = Usuario('Rafael', 28);

  user1.balance.deposit(100);

  print(user1.toString());

  user1.balance.withdraw(50);

  print(user1.toString());
}

class Usuario {
  String nome;
  int idade;
  Balance balance = Balance(0);

  @override
  String toString() {
    return 'Nome: $nome, Idade: $idade, ${balance.toString()}';
  }

  Usuario(this.nome, this.idade);

  String get getNome => this.nome;

  get getIdade => this.idade;

  get getBalance => this.balance;
}

class Balance {
  double value;

  Balance(this.value);

  void deposit(double value) {
    this.value += value;
  }

  void withdraw(double value) {
    this.value -= value;
  }

  @override
  String toString() {
    return 'Saldo: $value';
  }
}

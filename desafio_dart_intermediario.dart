/*
  Baseado na lista acima.
    1 - Remover os duplicados
    2 - Me mostre a quantidade de pessoas do sexo Masculino e Feminino
    3 - Filtrar e deixar a lista somente com pessoas maiores de 18 anos 
    e mostre a quantidade de pessoas com mais de 18 anos
    4 - Encontre a pessoa mais velha.
*/

main(List<String> args) {
  var pessoas = [
    'Rodrigo Rahman|35|Masculino',
    'Jose|56|Masculino',
    'Joaquim|84|Masculino',
    'Rodrigo Rahman|35|Masculino',
    'Maria|88|Feminino',
    'Helena|24|Feminino',
    'Leonardo|5|Masculino',
    'Laura Maria|29|Feminino',
    'Joaquim|72|Masculino',
    'Helena|24|Feminino',
    'Guilherme|15|Masculino',
    'Manuela|85|Masculino',
    'Leonardo|5|Masculino',
    'Helena|24|Feminino',
    'Laura|29|Feminino',
  ];

// 1 - Remover os duplicados
Set<String> newPessoas = pessoas.toSet();
print('Removendo duplicados, restaram: ${newPessoas.length}');

// 2 - Me mostre a quantidade de pessoas do sexo Masculino e Feminino
void exercise2(Set pessoas) {
  int masculino = 0;
  int feminino = 0;

  pessoas.forEach((element) {
    if(element.contains('Masculino')) {
      masculino++;
    } else if(element.contains('Feminino')) { // else if ... só para garantir!
      feminino++;
    }
  });
  print('Masculino: $masculino / Feminino: $feminino');
}

exercise2(newPessoas);

// 3 - Filtrar e deixar a lista somente com pessoas maiores de 18 anos 
//     e mostre a quantidade de pessoas com mais de 18 anos
// 4 - Encontre a pessoa mais velha.

void exercise3And4(Set pessoas) {
  List<String> peopleUnder18 = [];
  String olderPersonName;
  int olderPersonAge = 0;

  pessoas.forEach((element) {
    var pessoa = element.split('|');

    int idade = int.parse(pessoa[1]);
    if (idade > 18) {
      peopleUnder18.add(pessoa[0]);
    }
    if (idade > olderPersonAge) {
      olderPersonAge = idade;
      olderPersonName = pessoa[0];
    }
  });

  print('Maiores de 18: $peopleUnder18');
  print('Pessoas maiores de 18 (qtde): ${peopleUnder18.length}');
  print('A pessoa mais velha é: $olderPersonName');
}

exercise3And4(newPessoas);






}


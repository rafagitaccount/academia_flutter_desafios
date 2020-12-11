/*
  Academia Flutter - Rodrigo Rahman
  Desafio - Dart Básico
  
  Baseado no array fornecido, monte o relatório abaixo:
    1) Apresente a quantidade de pacientes acima de 20 anos
    2) Agrupar os pacientes e apresentá-los, por família (sobrenome)
*/

main() {
  var pacientes = [
    'Rodrigo Rahman|35|desenvolvedor|SP',
    'Manoel Silva|12|estudante|MG',
    'Joaquim Rahman|18|estudante|SP',
    'Fernando Verne|35|estudante|MG',
    'Gustavo Silva|40|estudante|MG',
    'Sandra Silva|40|estudante|MG',
    'Regina Verne|35|estudante|MG',
    'João Rahman|55|Jornalista|SP',
  ];

  // =================================================================+
  // Desafio parte 1

  List maioresDe20 = [];

  // Buscando somente os pacientes maiores de 20
  for (var e in pacientes) {
    var paciente = e.split('|');

    int idade = int.parse(paciente[1]);
    if (idade > 20) {
      maioresDe20.add(paciente[0]);
    }
  }

  print('São maiores de 20 anos, ${maioresDe20.length} pacientes.');

  // =================================================================+
  // Desafio parte 2

  List sobreNomeDasFamilias = [];

  // Buscando somente os sobrenomes
  for (var e in pacientes) {
    var paciente = e.split('|');
    sobreNomeDasFamilias.add(paciente
        .toString()
        .substring(paciente[0].indexOf(' ') + 1, paciente[0].length + 1));
  }

  // Tornando os sobrenomes únicos
  var sobrenomes = sobreNomeDasFamilias.toSet();
  List sobrenomesUnicos = sobrenomes.toList();

  // Imprimindo as famílias por sobrenome
  for (int i = 0; i < sobrenomesUnicos.length; i++) {
    print('Família${sobrenomesUnicos[i]}');
    for (var e in pacientes) {
      var paciente = e.split('|');
      if (paciente[0].contains(sobrenomesUnicos[i])) {
        print('  ${paciente[0]}');
      }
    }
  }
}

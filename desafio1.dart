void main(List<String> args) {
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

  // Baseado no array acima monte um relatório onde mostre
  // Apresente a quantidade de pacientes com mais de 20 anos
  // Agrupar os pacientes por familia(considerar o sobrenome) apresentar por familia.
  int qtdePacientes = 0;
  List<String> sobrenomes = [];

  for (var paciente in pacientes) {
    var valores = paciente.split('|');
    var sobrenome = valores[0].split(" ").last;

    if (int.parse(valores[1]) > 20) {
      qtdePacientes++;
    }

    if (!sobrenomes.contains(sobrenome)) {
      sobrenomes.add(sobrenome);
      print("Família: $sobrenome");
      for (int i = 0; i < valores.length; i++) {
        if (sobrenome.toUpperCase() == valores[0].split(" ").last.toUpperCase()) {
          print("${valores[0]}");
        }
      }
    }
  }

  print("Quantidade pacientes com mais de 20 anos: $qtdePacientes");
}

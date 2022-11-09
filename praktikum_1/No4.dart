void main(List<String> args) {
  Map<String, num> ipkmhs = {
    'jaka': 3.9,
    'prasetya': 3.78,
    'dimas': 3.8,
    'naruto': 3.45,
    'sasuke': 3.48,
  };

  ipkmhs.forEach((k, v) {
    if (v >= 3.5) {
      print(k);
      print('Cumlaude\n');
    } else {
      print(k);
      print('Tidak Cumlaude\n');
    }
  });
}

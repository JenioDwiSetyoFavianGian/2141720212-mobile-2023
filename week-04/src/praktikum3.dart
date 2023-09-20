void main() {
  var gifts = {
    // Key:    Value
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 1
  };

  var nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 2,
  };

  var mhs1 = Map<String, String>();
  mhs1['first'] = 'partridge';
  mhs1['second'] = 'turtledoves';
  mhs1['fifth'] = 'golden rings';

  var mhs2 = Map<int, String>();
  mhs2[2] = 'helium';
  mhs2[10] = 'neon';
  mhs2[18] = 'argon';

  gifts['nama'] = 'Jenio Dwi Setyo Favian Gian';
  gifts['NIM'] = '2141720212';
  nobleGases[0] = 'Jenio Dwi Setyo Favian Gian';
  nobleGases[1] = '2141720212';
  mhs1['nama'] = 'Jenio Dwi Setyo Favian Gian';
  mhs1['NIM'] = '2141720212';
  mhs2[0] = 'Jenio Dwi Setyo Favian Gian';
  mhs2[1] = '2141720212';

  print(gifts);
  print(nobleGases);
  print(mhs1);
  print(mhs2);
}
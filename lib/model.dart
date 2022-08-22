class NumberButtons {
  String number;
  String letters;
  NumberButtons({required this.number,required this.letters});

  static List<List<NumberButtons>> numbersButtons = [
    [
      NumberButtons(number: '1',letters: ''),
      NumberButtons(number: '2',letters: 'ABC'),
      NumberButtons(number: '3',letters: 'DEF'),
    ],
    [
      NumberButtons(number: '4',letters: 'GHI'),
      NumberButtons(number: '5',letters: 'JKL'),
      NumberButtons(number: '6',letters: 'BNO'),
    ],
    [
      NumberButtons(number: '7',letters: 'PORS'),
      NumberButtons(number: '8',letters: 'TUV'),
      NumberButtons(number: '9',letters: 'WXYZ'),
    ],
    [
      NumberButtons(number: '*',letters: ''),
      NumberButtons(number: '0',letters: '+'),
      NumberButtons(number: '#',letters: ''),
    ]
  ];
}

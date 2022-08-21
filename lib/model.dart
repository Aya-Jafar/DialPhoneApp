class NumberButtons {
  String number;
  NumberButtons({required this.number});

  static List<List<NumberButtons>> numbersButtons = [
    [
      NumberButtons(number: '1'),
      NumberButtons(number: '2'),
      NumberButtons(number: '3'),
    ],
    [
      NumberButtons(number: '4'),
      NumberButtons(number: '5'),
      NumberButtons(number: '6'),
    ],
    [
      NumberButtons(number: '7'),
      NumberButtons(number: '8'),
      NumberButtons(number: '9'),
    ],
    [
      NumberButtons(number: '*'),
      NumberButtons(number: '0'),
      NumberButtons(number: '#'),
    ]
  ];
}

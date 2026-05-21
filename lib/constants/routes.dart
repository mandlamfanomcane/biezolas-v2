const Map<String, Map<String, double>> routeFares = {
  'byo_hre': {
    'Bulawayo-Shangani': 5,
    'Shangani-Gweru': 3,
    'Bulawayo-Gweru': 7,
    'Bulawayo-Kwekwe': 10,
    'Gweru-Kwekwe': 3,
    'Kwekwe-Battlefields': 3,
    'Bulawayo-Battlefields': 12,
    'Bulawayo-Kadoma': 15,
    'Kwekwe-Kadoma': 4,
    'Kadoma-Chegutu': 3,
    'Bulawayo-Chegutu': 17,
    'Chegutu-Halfway': 2,
    'Bulawayo-Halfway': 18,
    'Bulawayo-Norton': 19,
    'Halfway-Norton': 3,
    'Norton-Harare': 2,
    'Bulawayo-Harare': 20,
  },
};

const List<Map<String, String>> routes = [
  {
    'id': 'byo_hre',
    'from': 'Bulawayo',
    'to': 'Harare',
    'crossBorder': 'false',
  },
  {
    'id': 'hre_francistown',
    'from': 'Harare',
    'to': 'Francistown',
    'crossBorder': 'true',
  },
  {
    'id': 'byo_francistown',
    'from': 'Bulawayo',
    'to': 'Francistown',
    'crossBorder': 'true',
  },
  {
    'id': 'byo_jhb',
    'from': 'Bulawayo',
    'to': 'Johannesburg',
    'crossBorder': 'true',
  },
  {
    'id': 'hre_jhb',
    'from': 'Harare',
    'to': 'Johannesburg',
    'crossBorder': 'true',
  },
];

const List<String> busStops = [
  'Bulawayo',
  'Shangani',
  'Gweru',
  'Kwekwe',
  'Battlefields',
  'Kadoma',
  'Chegutu',
  'Halfway',
  'Norton',
  'Harare',
];

const List<String> crossBorderStops = [
  'Bulawayo',
  'Gweru',
  'Kwekwe',
  'Harare',
  'Francistown',
  'Johannesburg',
];

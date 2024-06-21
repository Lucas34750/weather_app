class City {
  String name;
  String? countryCode;
  double longitude;
  double lattitude;

  City(
    this.lattitude,
    this.longitude,
    this.name,
    this.countryCode,
  );

  static List<City> cities(){
    return[
      City(
        48.85,
        2.35,
        'Paris',
        'FR'
      ),
      City(
        51.3,
        -0.07,
        'London',
        'GB'
      ),
      City(
        52.31,
        13.24,
        'Berlin',
        'DE'
      ),
      City(
        35.41,
        139.41,
        'Tokyo',
        'JP'
      ),
      City(
        40.42,
        -74,
        'New York',
        'US'
      ),
      City(
        39.54,
        116.23,
        'Bejing',
        'CN'
      ),
      City(
        -33.86,
        151.12,
        'Sydney',
        'AU'
      ),

    ];

  }

}

class Site {
  final int id;
  final String name;
  final String location;
  final String? about;
  final String image;
  final List<String> otherImages;

  Site(
      {required this.id,
      required this.name,
      required this.location,
      required this.about,
      required this.image,
      required this.otherImages});

  static List<Site> sites = [
    Site(
      id: 1,
      name: 'Kwahu Mountain',
      location: 'Eastern, Ghana',
      about:
          'Kwahu mountains is located in the eastern region of Ghana. It is the second highest mountain in Ghana and the third highest in West Africa. It attracts many visitors from around the world every year.',
      image: 'assets/images/kwahu.jpeg',
      otherImages: ['assets/images/kwahu.jpeg', 'assets/images/Kwahu2.jpg'],
    ),
    Site(
        id: 2,
        name: 'Afaja Mountain',
        location: 'Volta, Ghana',
        about:
            'Kwahu mountains is located in the eastern region of Ghana. It is the second highest mountain in Ghana and the third highest in West Africa. It attracts many visitors from around the world every year.',
        image: 'assets/images/afaja.jpeg',
        otherImages: ['assets/images/afaja.jpeg']),
    Site(
        id: 3,
        name: 'Atwea Mountain',
        location: 'Eastern, Ghana',
        about:
            'Kwahu mountains is located in the eastern region of Ghana. It is the second highest mountain in Ghana and the third highest in West Africa. It attracts many visitors from around the world every year.',
        image: 'assets/images/mountain.jpeg',
        otherImages: ['assets/images/mountain.jpeg']),
    Site(
      id: 4,
      name: 'Mountain Kilimanjaro',
      location: 'Tanzania',
      about:
          'Mount Kilimanjaro is a dormant volcano in Tanzania. It has three volcanic cones: Kibo, Mawenzi, and Shira. It is the highest mountain in Africa and the highest single free-standing mountain in the world: 5,895 metres above sea level and about 4,900 metres above its plateau base.',
      image: 'assets/images/kilimanjaro.jpg',
      otherImages: [
        'assets/images/kilimanjaro.jpg',
        'assets/images/kili1.jpg',
        'assets/images/kili2.jpg'
      ],
    ),
  ];
}

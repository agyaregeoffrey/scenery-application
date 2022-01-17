class Site {
  final int id;
  final String name;
  final String location;
  final String? about;
  final String image;

  Site({
    required this.id,
    required this.name,
    required this.location,
    required this.about,
    required this.image,
  });
}

List<Site> sites = [
  Site(
      id: 1,
      name: 'Kwahu Mountain',
      location: 'Eastern, Ghana',
      about:
          'Kwahu mountains is located in the eastern region of Ghana. It is the second highest mountain in Ghana and the third highest in West Africa. It attracts many visitors from around the world every year.',
      image: 'assets/images/kwahu.jpeg'),
  Site(
      id: 2,
      name: 'Afaja Mountain',
      location: 'Volta, Ghana',
      about:
          'Kwahu mountains is located in the eastern region of Ghana. It is the second highest mountain in Ghana and the third highest in West Africa. It attracts many visitors from around the world every year.',
      image: 'assets/images/afaja.jpeg'),
  Site(
      id: 3,
      name: 'Atwea Mountain',
      location: 'Eastern, Ghana',
      about:
          'Kwahu mountains is located in the eastern region of Ghana. It is the second highest mountain in Ghana and the third highest in West Africa. It attracts many visitors from around the world every year.',
      image: 'assets/images/mountain.jpeg')
];

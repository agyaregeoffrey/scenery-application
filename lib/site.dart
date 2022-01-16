class Site {
  final String name;
  final String location;
  final String? about;
  final String image;

  Site({
    required this.name,
    required this.location,
    required this.about,
    required this.image,
  });

  static List<Site> sites = [
    Site(
        name: 'Kwahu Mountain',
        location: 'Eastern, Ghana',
        about:
            'Kwahu mountains is located in the eastern region of Ghana. It is the second highest mountain in Ghana and the third highest in West Africa. It attracts many visitors from around the world every year.',
        image: 'assets/images/kwahu.jpeg'),
    Site(
        name: 'Afaja Mountain',
        location: 'Volta, Ghana',
        about: 'Not available',
        image: 'assets/images/afaja.jpeg')
  ];
}

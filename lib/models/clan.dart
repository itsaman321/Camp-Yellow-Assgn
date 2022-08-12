class Clan {
  String imageUrl;
  String name;

  Clan({required this.imageUrl, required this.name});

  static List<Clan> clans = [
    Clan(imageUrl: 'https://faces-img.xcdn.link/image-lorem-face-5477.jpg', name: 'James Bond'),
    Clan(imageUrl: 'https://faces-img.xcdn.link/image-lorem-face-5660.jpg', name: 'Henry Salve'),
    Clan(imageUrl: 'https://faces-img.xcdn.link/image-lorem-face-6511.jpg', name: 'Jenny Luthra'),
  ];
}

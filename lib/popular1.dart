class Popular {
  String title;
  String description;
  String imageUrl;
  double ratings;

  Popular({
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.ratings,
  });
}

List<Popular> popularList = [
  Popular(
      title: 'One Piece',
      description:
          "One Piece is the story of Monkey D. Luffy, a young man who has a single dream: To find the legendary treasure known as the One Piece and become the King of the Pirates The capture and execution of Roger by the World Government brought a change throughout the world. His last words before his death revealed the existence of the greatest treasure in the world, One Piece.",
      ratings: 8.62,
      imageUrl:
          'https://m.media-amazon.com/images/M/MV5BODcwNWE3OTMtMDc3MS00NDFjLWE1OTAtNDU3NjgxODMxY2UyXkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_UY1200_CR85,0,630,1200_AL_.jpg'),
  Popular(
      title: 'Boruto: Naruto Next Generations',
      description:
          "Following the successful end of the Fourth Shinobi World War, Konohagakure has been enjoying a period of peace, prosperity, and extraordinary technological advancement. This is all due to the efforts of the Allied Shinobi Forces and the village's Seventh Hokage, Naruto Uzumaki.Now resembling a modern metropolis, Konohagakure has changed, particularly the life of a shinobi. Under the watchful eye of Naruto and his old comrades, a new generation of shinobi has stepped up to learn the ways of the ninja. Boruto Uzumaki is often the center of attention as the son of the Seventh Hokage",
      ratings: 7.72,
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/en/d/db/Boruto_manga_vol_1.jpg'),
  Popular(
      title: 'Shingeki no Kyojin: The Final Season Part 2',
      description:
          "Turning against his former allies and enemies alike, Eren Yeager sets a disastrous plan in motion. Under the guidance of the Beast Titan, Zeke, Eren takes extreme measures to end the ancient conflict between Marley and Eldia—but his true intentions remain a mystery.Delving deep into his family's past, Eren fights to control his own destiny. Meanwhile, the long-feuding nations of Marley and Eldia utilize both soldiers and Titans in a brutal race to eliminate the other. Reiner Braun uses his own powers in a desperate bid to hold off Eren's own militaristic force, and his fellow Eldians—children Falco Grice and Gabi Braun—struggle to survive in the unfolding chaos. ",
      ratings: 9.31,
      imageUrl: 'https://cf.shopee.ph/file/dc2c232f21a0f0c2f5ef7bc97370294e'),
  Popular(
      title: 'Kimetsu no Yaiba: Yuukaku-hen',
      description:
          "The devastation of the Mugen Train incident still weighs heavily on the members of the Demon Slayer Corps. Despite being given time to recover, life must go on, as the wicked never sleep: a vicious demon is terrorizing the alluring women of the Yoshiwara Entertainment District.The Sound Pillar, Tengen Uzui, and his three wives are on the case. However, when he soon loses contact with his spouses, Tengen fears the worst and enlists the help of Tanjirou Kamado, Zenitsu Agatsuma, and Inosuke Hashibira to infiltrate the district's most prominent houses and locate the depraved Upper Rank demon. ",
      ratings: 8.91,
      imageUrl: 'https://cdn.myanimelist.net/images/anime/1338/111945l.jpg'),
  Popular(
      title: 'Shingeki no Kyojin: Chronicle',
      description:
          "It is set in a world where humanity lives inside cities surrounded by three enormous walls that protect them from the gigantic man-eating humanoids referred to as Titans;Soldier Eren Jaeger and his friends join the Survey Corps as humanity fight to take Earth back from giant, man-eating Titans.",
      ratings: 7.70,
      imageUrl: 'https://pbs.twimg.com/media/ElVNk4dUUAAnue8.jpg'),
];

/// Modèle de données pour un film ou une série
class Media {
  final int id;
  final String title;
  final String description;
  final String longDescription;
  final double price;
  final String imageUrl;
  final String category; // Film ou Série
  final int year;
  final double rating;

  Media({
    required this.id,
    required this.title,
    required this.description,
    required this.longDescription,
    required this.price,
    required this.imageUrl,
    this.category = 'Film',
    this.year = 2023,
    this.rating = 4.0,
  });
}

/// Liste statique de films et séries pour l'application
final List<Media> staticMediaList = [
  Media(
    id: 1,
    title: 'Inception',
    description: 'Un voleur qui s\'infiltre dans les rêves.',
    longDescription:
        'Dom Cobb est un voleur expérimenté, le meilleur dans l\'art périlleux de l\'extraction : sa spécialité consiste à s\'approprier les secrets les plus précieux d\'un individu, enfouis au plus profond de son subconscient, pendant qu\'il rêve et que son esprit est particulièrement vulnérable. Ses talents ont fait de lui un homme très recherché dans le monde trouble de l\'espionnage industriel, mais ils ont aussi fait de lui un fugitif et lui ont coûté tout ce qu\'il aimait.',
    price: 14.99,
    imageUrl: 'https://i.pinimg.com/originals/55/ac/07/55ac07d162dd6ab978b1eea36d2427d3.jpg',
    category: 'Film',
    year: 2010,
    rating: 4.8,
  ),
  Media(
    id: 2,
    title: 'Breaking Bad',
    description: 'Un professeur de chimie devient baron de la drogue.',
    longDescription:
        'Breaking Bad suit le parcours de Walter White, un professeur de chimie au lycée d\'Albuquerque, au Nouveau-Mexique, qui, après avoir appris qu\'il est atteint d\'un cancer du poumon en phase terminale, se lance dans la fabrication et la vente de méthamphétamine avec un ancien élève, Jesse Pinkman, pour assurer l\'avenir financier de sa famille. La série explore les thèmes de la moralité, de la famille et des conséquences de nos choix.',
    price: 29.99,
    imageUrl: 'https://i.pinimg.com/originals/34/55/dd/3455dd9c324097f92e0df0bd2c46d54a.jpg',
    category: 'Série',
    year: 2008,
    rating: 4.9,
  ),
  Media(
    id: 3,
    title: 'The Dark Knight',
    description: 'Batman affronte le Joker à Gotham City.',
    longDescription:
        'Dans ce nouveau volet, Batman augmente les mises dans sa guerre contre le crime. Avec l\'aide du lieutenant de police Jim Gordon et du procureur Harvey Dent, Batman entreprend de démanteler les organisations criminelles qui pullulent dans la ville. Leur association est très efficace, mais elle sera bientôt bouleversée par un nouveau criminel qui répand le chaos et la terreur parmi les citoyens : le Joker.',
    price: 12.99,
    imageUrl: 'https://i.pinimg.com/originals/1e/19/53/1e19531a7f6d338993ede9677e01d1c9.jpg',
    category: 'Film',
    year: 2008,
    rating: 4.9,
  ),
  Media(
    id: 4,
    title: 'Stranger Things',
    description: 'Des enfants découvrent des phénomènes surnaturels.',
    longDescription:
        'À Hawkins, une petite ville de l\'Indiana dans les années 1980, la vie est paisible jusqu\'à ce qu\'un jeune garçon disparaisse mystérieusement. Ses amis, sa famille et la police locale se lancent à sa recherche. Mais ils vont découvrir des expériences secrètes, des forces surnaturelles terrifiantes et une petite fille très étrange. Stranger Things mélange habilement horreur, science-fiction et nostalgie des années 80.',
    price: 24.99,
    imageUrl: 'https://m.media-amazon.com/images/I/71gqeR0YQML.jpg',
    category: 'Série',
    year: 2016,
    rating: 4.7,
  ),
  Media(
    id: 5,
    title: 'Interstellar',
    description: 'Une mission spatiale pour sauver l\'humanité.',
    longDescription:
        'Dans un futur proche, la Terre est devenue hostile pour l\'homme. Les tempêtes de poussière ravagent les récoltes et l\'humanité est menacée d\'extinction. Joseph Cooper, ancien pilote de la NASA reconverti en agriculteur, découvre par hasard une base secrète de la NASA. Il est recruté pour piloter un vaisseau spatial qui doit traverser un trou de ver récemment découvert, à la recherche d\'une nouvelle planète habitable pour l\'humanité.',
    price: 15.99,
    imageUrl: 'https://i.pinimg.com/originals/a9/e2/5b/a9e25b249c9a6a9382a1f3434a060085.jpg',
    category: 'Film',
    year: 2014,
    rating: 4.8,
  ),
  Media(
    id: 6,
    title: 'Game of Thrones',
    description: 'La lutte pour le Trône de Fer de Westeros.',
    longDescription:
        'Dans un monde médiéval fantastique, plusieurs familles nobles se battent pour le contrôle du Trône de Fer des Sept Royaumes de Westeros. Pendant ce temps, une menace oubliée ressurgit au-delà du Mur qui protège le royaume au nord, et la dernière héritière d\'une dynastie déchue complote pour reprendre le trône depuis l\'exil. Game of Thrones est une saga épique de trahison, de survie, de mort et d\'amour.',
    price: 49.99,
    imageUrl: 'https://i.pinimg.com/originals/cf/82/d1/cf82d1e56a1bcb3e4f7ae35be16e885e.jpg',
    category: 'Série',
    year: 2011,
    rating: 4.6,
  ),
  Media(
    id: 7,
    title: 'Pulp Fiction',
    description: 'Histoires entrelacées de criminels à Los Angeles.',
    longDescription:
        'L\'odyssée sanglante et burlesque de petits malfrats dans la jungle de Hollywood à travers trois histoires entremêlées. Pulp Fiction raconte les aventures de Vincent Vega et Jules Winnfield, deux tueurs à gages philosophes, de Butch Coolidge, un boxeur qui refuse de truquer un match, et de Mia Wallace, la femme fatale de leur patron. Un chef-d\'œuvre de Quentin Tarantino qui a révolutionné le cinéma.',
    price: 11.99,
    imageUrl: 'https://v1.imgix.net/imagecache/4/7/bmi-2_bmwcm-2.0_fid-880611_fwcm-2.5_ihcm-101.5_iwcm-68.6_lmwcm-2.0_maxdim-1000_mc-ffffff_rmwcm-2.0_si-471222.jpg_tmwcm-2.0.jpg?ixlib=rails-4.3.1&auto=compress&nr=20&nrs=20&q=50',
    category: 'Film',
    year: 1994,
    rating: 4.8,
  ),
  Media(
    id: 8,
    title: 'The Witcher',
    description: 'Un chasseur de monstres dans un monde fantastique.',
    longDescription:
        'Geralt de Riv, un chasseur de monstres mutant, lutte pour trouver sa place dans un monde où les humains se révèlent souvent plus méchants que les bêtes. Mais lorsque le destin le pousse vers une puissante sorcière et une jeune princesse possédant un secret dangereux, les trois doivent apprendre à naviguer ensemble sur le Continent de plus en plus instable. The Witcher est une épopée fantastique sombre et captivante.',
    price: 22.99,
    imageUrl: 'https://i0.wp.com/www.thewrap.com/wp-content/uploads/2019/07/The-Witcher-7.jpg?resize=618,1099&quality=89',
    category: 'Série',
    year: 2019,
    rating: 4.5,
  ),
  Media(
    id: 9,
    title: 'Matrix',
    description: 'La réalité n\'est qu\'une simulation informatique.',
    longDescription:
        'Programmeur anonyme dans un service administratif le jour, Thomas Anderson devient Neo la nuit venue. Sous ce pseudonyme, il est l\'un des hackers les plus recherchés du cyberespace. Trinity, une belle inconnue, l\'introduit auprès de Morpheus. Celui-ci lui révèle que le monde dans lequel il vit n\'est qu\'un leurre, une prison pour l\'esprit créée par une intelligence artificielle qui asservit l\'humanité.',
    price: 13.99,
    imageUrl: 'https://preview.redd.it/the-matrix-trilogy-1999-2003-by-sahin-d%C3%BCzg%C3%BCn-v0-6b5thta5gfse1.png?width=640&crop=smart&auto=webp&s=65bb0f16428ec7b883c36377b210ea5127baf223',
    category: 'Film',
    year: 1999,
    rating: 4.7,
  ),
  Media(
    id: 10,
    title: 'Money Heist',
    description: 'Le plus grand braquage de l\'histoire d\'Espagne.',
    longDescription:
        'Un mystérieux personnage, surnommé Le Professeur, planifie le plus grand braquage de l\'histoire : s\'introduire dans la Fabrique nationale de la monnaie et du timbre et imprimer des milliards d\'euros. Pour mener à bien ce plan, il recrute huit personnes ayant certaines capacités et qui n\'ont rien à perdre. L\'objectif : rester enfermés dans la Fabrique pendant onze jours, le temps d\'imprimer l\'argent.',
    price: 27.99,
    imageUrl: 'https://wallpapers.com/images/hd/money-heist-denver-portrait-6gpif1auysnqwhw6.jpg',
    category: 'Série',
    year: 2017,
    rating: 4.6,
  ),
  Media(
    id: 11,
    title: 'Avatar',
    description: 'Un marine paralysé explore la planète Pandora.',
    longDescription:
        'Malgré sa paralysie, Jake Sully, un ancien marine immobilisé dans un fauteuil roulant, est resté un combattant au plus profond de son être. Il est recruté pour se rendre sur Pandora, une lune située dans une galaxie lointaine, riche en minerai rare et aux propriétés extraordinaires. Parce que l\'atmosphère de Pandora est toxique, on a créé le Programme Avatar, qui permet aux scientifiques de lier leur esprit à un avatar.',
    price: 16.99,
    imageUrl: 'https://m.media-amazon.com/images/M/MV5BZDVlZTgwZDgtY2RhMy00OGI5LWFlZjYtMTM3ZTJiMjE1NzU5XkEyXkFqcGc@.jpg',
    category: 'Film',
    year: 2009,
    rating: 4.5,
  ),
  Media(
    id: 12,
    title: 'The Crown',
    description: 'La vie de la Reine Elizabeth II.',
    longDescription:
        'The Crown retrace l\'histoire de la famille royale britannique, depuis le mariage de la jeune princesse Elizabeth avec Philip, duc d\'Édimbourg, en 1947, jusqu\'aux scandales les plus récents. La série explore les intrigues, les romances et les rivalités politiques qui ont façonné la seconde moitié du XXe siècle et le début du XXIe siècle. Un portrait intime du pouvoir et de ses responsabilités.',
    price: 34.99,
    imageUrl: 'https://fr.web.img2.acsta.net/c_310_420/pictures/23/10/26/11/17/0715878.jpg',
    category: 'Série',
    year: 2016,
    rating: 4.7,
  ),
];

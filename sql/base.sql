CREATE DATABASE IF NOT EXISTS `blog` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `blog`;

CREATE TABLE `user` (
                        `id` int NOT NULL AUTO_INCREMENT,
                        `firstname` varchar(200) NOT NULL,
                        `lastname` varchar(200) NOT NULL,
                        `email` varchar(200) NOT NULL,
                        `password` varchar(500) NOT NULL,
                        PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb3;

CREATE TABLE `article` (
                           `id` int NOT NULL AUTO_INCREMENT,
                           `title` varchar(255) NOT NULL,
                           `image` varchar(255) NOT NULL,
                           `content` longtext NOT NULL,
                           `category` varchar(45) NOT NULL,
                           `author` int DEFAULT NULL,
                           PRIMARY KEY (`id`),
                           KEY `fk_article_user_idx` (`author`),
                           CONSTRAINT `fk_article_user` FOREIGN KEY (`author`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3;


CREATE TABLE `session` (
                           `id` char(64) NOT NULL,
                           `userid` int NOT NULL,
                           PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `user` (firstname,lastname,email,password) VALUES
('admin','blog','support@victork.fr','$argon2i$v=19$m=65536,t=4,p=1$aS94RTh1dWV5S2hZc1pPbA$CX0CEfh44b9N2omryhXALk3UgXhlrVd0mxDSWq4TMKI');
INSERT INTO article (title,image,content,category,author) VALUES
                                                                               ('DS3, Nouveau SUV prefere des francais','https://sf1.auto-moto.com/wp-content/uploads/sites/9/2020/08/home-ds3-cb-fl-750x410.jpg','Lorem ipsum dolor, sit amet consectetur adipisicing elit. Tempore vel porro earum repellat repellendus corporis et alias officiis! Adipisci beatae ea repellat rem, iure officiis quasi quas odit ducimus magni non fugit aut optio consectetur tempore, officia numquam maiores cumque, quo id quam fuga facere. Alias consectetur maiores mollitia? Accusamus.','Technologie',1),
                                                                               ('Les r&eacute;sultats dans votre commune et votre d&eacute;partement au 1er tour de l&#039;&eacute;lection pr&eacute;sidentielle 2022','https://picsum.photos/id/24/200/300','Trois minutes pour comprendre les principaux enseignements de ce 1er tour.
Les principaux enseignements du scrutin d&eacute;crypt&eacute;s pour vous par C&eacute;dric Cl&eacute;rin, r&eacute;dacteur en chef de l&rsquo;Humanit&eacute; Magazine.
D&eacute;couvrez les r&eacute;sultats du premier tour de l&#039;&eacute;lection pr&eacute;sidentielle 2022 dans votre commune, votre d&eacute;partement et votre r&eacute;gion en temps r&eacute;el avec notre carte interactive.
Retrouvez aussi les r&eacute;sultats de la pr&eacute;sidentielle 2017.
Et retrouvez ici toute l&#039;actualit&eacute; politique apr&egrave;s ce premier tour de l&#039;&eacute;lection pr&eacute;sidentielle.','Politique',1),
                                                                               ('La nature. L&#039;industrie la plus pr&eacute;cieuse du monde','https://www.lombardodier.com/files/live/sites/loportail/files/news/2021/May/20210521/Nature_LOcom.jpg','C&rsquo;est notre ressource la plus pr&eacute;cieuse, mais nous ne la traitons pas comme telle. La nature est au c&oelig;ur de toute chose &ndash; notre sol, notre terre, notre ciel et notre v&eacute;g&eacute;tation &ndash; et plus de la moiti&eacute; du PIB mondial en d&eacute;pend.

Pourtant, malgr&eacute; l&rsquo;importance de la nature, nous la surexploitons et la sous-utilisons en m&ecirc;me temps. Nous la surexploitons par notre d&eacute;pendance excessive &agrave; l&rsquo;&eacute;gard des ressources non renouvelables et les dommages croissants caus&eacute;s &agrave; notre environnement, mais nous la sous-utilisons en ignorant les fa&ccedil;ons plus durables et circulaires dont la nature peut soutenir notre &eacute;conomie.

Mais un changement commence &agrave; s&rsquo;op&eacute;rer et les industries s&rsquo;orientent d&eacute;j&agrave; vers un mod&egrave;le &eacute;conomique circulaire, efficient, inclusif et propre (CLIC&trade;). Les voitures deviennent plus l&eacute;g&egrave;res gr&acirc;ce &agrave; l&rsquo;utilisation de bois dans leur structure, le polyester est &eacute;vinc&eacute; du secteur de la mode au profit de mat&eacute;riaux plus soutenables et les b&acirc;timents sont construits de mani&egrave;re plus efficiente, dans un souci de r&eacute;duction des &eacute;missions.

Notre r&eacute;cent webinaire Lombard Odier intitul&eacute; &laquo; La Nature &ndash; notre capital le plus pr&eacute;cieux au monde &raquo; a abord&eacute; ces th&egrave;mes et montr&eacute; comment les forces du march&eacute;, les politiques et l&rsquo;&eacute;volution du comportement des consommateurs contribuent au changement vers des solutions soutenables et plus propres, plus efficaces et moins ch&egrave;res.','Nature',1),
                                                                               ('Idées de nature ? Envie de s''evader ? Rien de tel que les balades en foret','https://picsum.photos/id/10/1000/1000','La pand&eacute;mie de Covid nous invite &agrave; r&eacute;fl&eacute;chir sur les relations entre les soci&eacute;t&eacute;s et la nature &agrave; la lumi&egrave;re de l&rsquo;urgence &eacute;cologique. Comment s&rsquo;exprime l&rsquo;id&eacute;e de nature dans diff&eacute;rentes soci&eacute;t&eacute;s et au cours du temps ? Et comment ces id&eacute;es d&eacute;terminent-elles le mode de cohabitation des soci&eacute;t&eacute;s ?
&Agrave; partir des diff&eacute;rents noms de la nature : natur, tabia, zi-ran&hellip; mais aussi : biodiversit&eacute;, ressources g&eacute;n&eacute;tiques, Ga&iuml;a&hellip; nous aborderons les enjeux culturels, scientifiques et &eacute;conomiques autour de l&rsquo;id&eacute;e de nature.','Nature',1),
                                                                               ('Les 10 technologies de 2020 qui vont changer le monde','https://cdn.futura-sciences.com/buildsv6/images/wide1920/f/d/1/fd100bc73e_50147633_plane-te-technologie.jpg','Ransomeware, vol de donn&eacute;es, piratage d&#039;objets connect&eacute;s... Internet est sous la menace de cyberattaques de grande ampleur. &laquo; Un Internet bas&eacute; sur la physique quantique permettra bient&ocirc;t de s&eacute;curiser les communications &raquo;, pr&eacute;dit la MIT Technology Review. Des chercheurs de l&#039;universit&eacute; de technologie de Delft, aux Pays-Bas, travaillent ainsi sur une infrastructure d&rsquo;Internet quantique o&ugrave; les communications sont cod&eacute;es sous forme de qubits et intriqu&eacute;es dans des photons circulant dans des fibres optiques, de fa&ccedil;on &agrave; les rendre impossibles &agrave; d&eacute;crypter sans perturber le r&eacute;seau. La technologie devrait &ecirc;tre op&eacute;rationnelle d&#039;ici 5 &agrave; 6 ans pour les longues distances et un r&eacute;seau au niveau mondial est envisageable d&#039;ici la fin de la d&eacute;cennie, selon les chercheurs.','Technologie',1),
                                                                               (' Le r&ocirc;le de la technologie et de la pratique dans l&rsquo;enseignement de l&rsquo;informatique','https://eduscol.education.fr/sti/system/files/images/articles/4679/4679-clavier.jpg','Cet article pr&eacute;sente les r&eacute;flexions men&eacute;es au sein de la commission Technologies de l&rsquo;information et de la communication de l&rsquo;Acad&eacute;mie des technologies.

Cette communication traite de la question Mais que doit-on enseigner et de quelle mani&egrave;re doit se faire cet enseignement ?

Extrait de la communication

L&rsquo;enseignement de l&rsquo;informatique et du num&eacute;rique doit avant tout permettre &agrave; l&rsquo;&eacute;l&egrave;ve l&rsquo;apprentissage de la mod&eacute;lisation et int&eacute;grer l&rsquo;&eacute;tude des syst&egrave;mes, un besoin fondamental du 21&egrave;me si&egrave;cle. L&rsquo;informatique est un outil formidable pour cr&eacute;er et manipuler des syst&egrave;mes. C&rsquo;est une &eacute;cole pour d&eacute;velopper et comprendre l&rsquo;abstraction, et elle le fait &agrave; sa mani&egrave;re, concr&egrave;te, et qui se pr&ecirc;te bien &agrave; l&rsquo;apprentissage par l&rsquo;action, ch&egrave;re &agrave; Jean Piaget.

Enseigner la mod&eacute;lisation et les concepts de la syst&eacute;mique, c&rsquo;est pr&eacute;parer les &eacute;l&egrave;ves &agrave; comprendre les grands syst&egrave;mes complexes (&eacute;nergie, transports, communications&hellip;) qui sous-tendent le fonctionnement de la soci&eacute;t&eacute;. C&rsquo;est aussi les pr&eacute;parer aux emplois d&rsquo;avenir et faciliter en particulier leur int&eacute;gration dans les organisations industrielles, o&ugrave; l&rsquo;am&eacute;lioration continue des proc&eacute;d&eacute;s repose sur la mod&eacute;lisation. Notre pr&eacute;conisation est donc double : renforcer l&rsquo;attention donn&eacute;e &agrave; la mod&eacute;lisation dans l&rsquo;enseignement informatique et ne pas r&eacute;duire sa finalit&eacute; &agrave; la science informatique elle-m&ecirc;me','Technologie',1),
                                                                               ('NOUVELLE POLITIQUE DE LA VILLE : QUEL DISCOURS ?','https://lumieresdelaville.net/wp-content/uploads/2017/11/7392285_d60a92a8-c940-11e7-b36b-53a09aedfc0c-1_1000x625.jpg','D&egrave;s sa cr&eacute;ation la politique de la ville avait pour ambition de r&eacute;duire les &eacute;carts de d&eacute;veloppement au sein de nos villes. L&rsquo;id&eacute;e &eacute;tait d&rsquo;assurer &agrave; chacun un acc&egrave;s &eacute;gal au territoire. Les quartiers priv&eacute;s de ce droit r&eacute;publicain sont alors identifi&eacute;s en fonction de crit&egrave;re socio-&eacute;conomiques. Des budgets sont allou&eacute;s et l&rsquo;ensemble des politiques de droit commun et des services publics sont mobilis&eacute;s. Aujourd&rsquo;hui, la politique de la ville concerne 5,5 millions de personnes, dans 1.500 quartiers o&ugrave;, le ch&ocirc;mage touche entre 25 et 50% de la population.

Cette semaine, six mois apr&egrave;s son investiture, notre pr&eacute;sident a fait son annonce, dans un lieu symbolique de la politique de la ville, Tourcoing. Quel diagnostic pose-t-il de notre territoire ? Quelles r&eacute;ponses apporte-t-il ? Comment Emmanuel Macron souhaite &ldquo;remettre la R&eacute;publique au coeur de nos quartiers&rdquo; ?','Politique',1),
                                                                               ('Sarkozy condamn&eacute;, comment Macron compte-t-il capter son h&eacute;ritage politique ?','https://cdn-europe1.lanmedia.fr/var/europe1/storage/images/europe1/politique/sarkozy-condamne-comment-macron-compte-t-il-capter-son-heritage-politique-4028540/56792762-1-fre-FR/Sarkozy-condamne-comment-Macron-compte-t-il-capter-son-heritage-politique.jpg','Avec une &eacute;lection pr&eacute;sidentielle de 2022 qui va probablement se jouer &agrave; droite, Emmanuel Macron compte b&eacute;n&eacute;ficier de l&#039;influence d&#039;un Nicolas Sarkozy d&eacute;sormais condamn&eacute; dans l&#039;affaire des &quot;&eacute;coutes&quot;. Un h&eacute;ritage qui appara&icirc;t comme capital pour que l&#039;actuel pr&eacute;sident soit r&eacute;&eacute;lu.
D&Eacute;CRYPTAGE
Un d&eacute;lib&eacute;r&eacute; qui peut changer l&#039;&eacute;lection pr&eacute;sidentielle de 2022. L&#039;ancien pr&eacute;sident de la R&eacute;publique Nicolas Sarkozy a &eacute;t&eacute; condamn&eacute; lundi &agrave; trois ans de prison dont un an ferme pour corruption dans l&#039;affaire dites des &quot;&eacute;coutes&quot;. S&#039;il compte faire appel de cette d&eacute;cision, le verdict rendu en premi&egrave;re instance change la donne politique pour Emmanuel Macron en vue de l&#039;&eacute;ch&eacute;ance &eacute;lectorale de 2022. Car si les deux s&#039;adressent r&eacute;guli&egrave;rement des marques d&#039;estime, Nicolas Sarkozy a toujours repr&eacute;sent&eacute; une menace politique pour l&#039;actuel chef de l&#039;&Eacute;tat en se pr&eacute;sentant comme une potentielle alternative &agrave; droite. ','Politique',1);

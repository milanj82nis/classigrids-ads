-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 18, 2022 at 05:06 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `classigrids`
--

-- --------------------------------------------------------

--
-- Table structure for table `ads`
--

CREATE TABLE `ads` (
  `id` int(11) NOT NULL,
  `active` int(11) NOT NULL DEFAULT 1,
  `title` varchar(211) NOT NULL,
  `location` varchar(233) NOT NULL DEFAULT 'Other',
  `price` decimal(10,2) NOT NULL,
  `price_type_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `images` text DEFAULT NULL,
  `youtube_link` text NOT NULL,
  `description` text NOT NULL,
  `condition_id` int(11) NOT NULL,
  `sub_category_id` int(11) DEFAULT NULL,
  `amount` int(11) NOT NULL,
  `sending_id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `free_delivery` int(11) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `expires_at` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `slug` varchar(211) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ads`
--

INSERT INTO `ads` (`id`, `active`, `title`, `location`, `price`, `price_type_id`, `currency_id`, `images`, `youtube_link`, `description`, `condition_id`, `sub_category_id`, `amount`, `sending_id`, `payment_id`, `free_delivery`, `created_at`, `updated_at`, `expires_at`, `user_id`, `slug`) VALUES
(7, 1, 'Scripsit enim et multis saepe verbis ', 'Other', '1233.23', 1, 1, '02b2a0800bea5eba02468920ffcf7a9f1619563071.jpg|9decbde481a08e51b65f689e2f5f48c71619563071.jpg|953fe3ff827831a0bf7c0457e8fa09861619563071.jpg|kupatilo 11619563071.jpg', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/WKuOZm-n26E\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '<h1>Vitiosum est enim in dividendo partem in genere numerare.</h1>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Est, ut dicis, inquit; <a href=\"http://loripsum.net/\" target=\"_blank\">Ego vero isti, inquam, permitto.</a> <i>Putabam equidem satis, inquit, me dixisse.</i> Sed in rebus apertissimis nimium longi sumus. </p>\r\n\r\n<ul>\r\n	<li>Hi curatione adhibita levantur in dies, valet alter plus cotidie, alter videt.</li>\r\n	<li>Omnes enim iucundum motum, quo sensus hilaretur.</li>\r\n	<li>Hoc est dicere: Non reprehenderem asotos, si non essent asoti.</li>\r\n</ul>\r\n\r\n\r\n<ol>\r\n	<li>Quod si ita est, sequitur id ipsum, quod te velle video, omnes semper beatos esse sapientes.</li>\r\n	<li>Sed haec nihil sane ad rem;</li>\r\n	<li>At quanta conantur! Mundum hunc omnem oppidum esse nostrum! Incendi igitur eos, qui audiunt, vides.</li>\r\n	<li>Hoc loco discipulos quaerere videtur, ut, qui asoti esse velint, philosophi ante fiant.</li>\r\n	<li>Indicant pueri, in quibus ut in speculis natura cernitur.</li>\r\n	<li>Si alia sentit, inquam, alia loquitur, numquam intellegam quid sentiat;</li>\r\n</ol>\r\n\r\n\r\n<pre>Haec ego non possum dicere non esse hominis quamvis et belli\r\net humani, sapientis vero nullo modo, physici praesertim,\r\nquem se ille esse vult, putare ullum esse cuiusquam diem\r\nnatalem.\r\n\r\nLicet hic rursus ea commemores, quae optimis verbis ab\r\nEpicuro de laude amicitiae dicta sunt.\r\n</pre>\r\n\r\n\r\n<p>Duo Reges: constructio interrete. Eademne, quae restincta siti? <b>Restatis igitur vos;</b> Facillimum id quidem est, inquam. Et quod est munus, quod opus sapientiae? <a href=\"http://loripsum.net/\" target=\"_blank\">Prioris generis est docilitas, memoria;</a> </p>\r\n\r\n<blockquote cite=\"http://loripsum.net\">\r\n	Scripsit enim et multis saepe verbis et breviter arteque in eo libro, quem modo nominavi, mortem nihil ad nos pertinere.\r\n</blockquote>\r\n\r\n\r\n<h2>Ut id aliis narrare gestiant?</h2>\r\n\r\n<p>Non potes, nisi retexueris illa. Id mihi magnum videtur. Id est enim, de quo quaerimus. Aperiendum est igitur, quid sit voluptas; <a href=\"http://loripsum.net/\" target=\"_blank\">Nam Pyrrho, Aristo, Erillus iam diu abiecti.</a> </p>\r\n\r\n<dl>\r\n	<dt><dfn>Perge porro;</dfn></dt>\r\n	<dd>Hoc ipsum elegantius poni meliusque potuit.</dd>\r\n	<dt><dfn>At coluit ipse amicitias.</dfn></dt>\r\n	<dd>Idem iste, inquam, de voluptate quid sentit?</dd>\r\n	<dt><dfn>Ut pulsi recurrant?</dfn></dt>\r\n	<dd>Cum ageremus, inquit, vitae beatum et eundem supremum diem, scribebamus haec.</dd>\r\n</dl>\r\n\r\n\r\n', 1, 1, 12, 2, 1, 1, '2021-04-28 00:37:51', '2021-04-28 00:37:51', '2021-05-28 00:37:51', 3, NULL),
(8, 1, 'A asdA  ltis saepe verbis  2 ', 'Belgrade', '233.33', 1, 3, '02b2a0800bea5eba02468920ffcf7a9f1619563138.jpg|9decbde481a08e51b65f689e2f5f48c71619563138.jpg|953fe3ff827831a0bf7c0457e8fa09861619563138.jpg|12671798_818011141677953_8612666938672366883_o1619563138.jpg|12671798_818011141677953_8612666938672366883_o1619563138.jpg', '', '<h1>Et ais, si una littera commota sit, fore tota ut labet disciplina.</h1>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. An quod ita callida est, ut optime possit architectari voluptates? Nihilo beatiorem esse Metellum quam Regulum. Duo Reges: constructio interrete. <i>Illi enim inter se dissentiunt.</i> <b>Quo tandem modo?</b> <a href=\"http://loripsum.net/\" target=\"_blank\">Audeo dicere, inquit.</a> Tum Quintus: Est plane, Piso, ut dicis, inquit. <code>Non igitur bene.</code> </p>\r\n\r\n<blockquote cite=\"http://loripsum.net\">\r\n	Huc et illuc, Torquate, vos versetis licet, nihil in hac praeclara epistula scriptum ab Epicuro congruens et conveniens decretis eius reperietis.\r\n</blockquote>\r\n\r\n\r\n<h2>An hoc usque quaque, aliter in vita?</h2>\r\n\r\n<p>Fortemne possumus dicere eundem illum Torquatum? Quorum sine causa fieri nihil putandum est. Quod quidem nobis non saepe contingit. Istam voluptatem, inquit, Epicurus ignorat? </p>\r\n\r\n<dl>\r\n	<dt><dfn>Haec dicuntur inconstantissime.</dfn></dt>\r\n	<dd>Superiores tres erant, quae esse possent, quarum est una sola defensa, eaque vehementer.</dd>\r\n	<dt><dfn>Moriatur, inquit.</dfn></dt>\r\n	<dd>Paupertas si malum est, mendicus beatus esse nemo potest, quamvis sit sapiens.</dd>\r\n</dl>\r\n\r\n\r\n<h3>Mihi, inquam, qui te id ipsum rogavi?</h3>\r\n\r\n<p>Respondent extrema primis, media utrisque, omnia omnibus. Utinam quidem dicerent alium alio beatiorem! Iam ruinas videres. Quid vero? <mark>Quid Zeno?</mark> </p>\r\n\r\n<ul>\r\n	<li>Illud quaero, quid ei, qui in voluptate summum bonum ponat, consentaneum sit dicere.</li>\r\n	<li>Quod idem cum vestri faciant, non satis magnam tribuunt inventoribus gratiam.</li>\r\n	<li>Quamquam id quidem licebit iis existimare, qui legerint.</li>\r\n</ul>\r\n\r\n\r\n<pre>Ut bacillum aliud est inflexum et incurvatum de industria,\r\naliud ita natum, sic ferarum natura non est illa quidem\r\ndepravata mala disciplina, sed natura sua.\r\n\r\nObscura, inquit, quaedam esse confiteor, nec tamen ab illis\r\nita dicuntur de industria, sed inest in rebus ipsis\r\nobscuritas.\r\n</pre>\r\n\r\n\r\n<ol>\r\n	<li>Summum a vobis bonum voluptas dicitur.</li>\r\n	<li>Negat enim summo bono afferre incrementum diem.</li>\r\n	<li>Eiuro, inquit adridens, iniquum, hac quidem de re;</li>\r\n	<li>Quamquam te quidem video minime esse deterritum.</li>\r\n</ol>\r\n\r\n\r\n', 3, 1, 1, 2, 3, 0, '2021-04-28 00:38:58', '2021-04-28 00:38:58', '2021-05-28 00:38:58', 3, NULL),
(9, 1, 'Quamquam te quidem video minime esse deterritum.', 'New York', '566.77', 2, 3, '02b2a0800bea5eba02468920ffcf7a9f1619563190.jpg|9decbde481a08e51b65f689e2f5f48c71619563190.jpg|953fe3ff827831a0bf7c0457e8fa09861619563190.jpg|953fe3ff827831a0bf7c0457e8fa09861619563190.jpg', '', '<h1>Et ais, si una littera commota sit, fore tota ut labet disciplina.</h1>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. An quod ita callida est, ut optime possit architectari voluptates? Nihilo beatiorem esse Metellum quam Regulum. Duo Reges: constructio interrete. <i>Illi enim inter se dissentiunt.</i> <b>Quo tandem modo?</b> <a href=\"http://loripsum.net/\" target=\"_blank\">Audeo dicere, inquit.</a> Tum Quintus: Est plane, Piso, ut dicis, inquit. <code>Non igitur bene.</code> </p>\r\n\r\n<blockquote cite=\"http://loripsum.net\">\r\n	Huc et illuc, Torquate, vos versetis licet, nihil in hac praeclara epistula scriptum ab Epicuro congruens et conveniens decretis eius reperietis.\r\n</blockquote>\r\n\r\n\r\n<h2>An hoc usque quaque, aliter in vita?</h2>\r\n\r\n<p>Fortemne possumus dicere eundem illum Torquatum? Quorum sine causa fieri nihil putandum est. Quod quidem nobis non saepe contingit. Istam voluptatem, inquit, Epicurus ignorat? </p>\r\n\r\n<dl>\r\n	<dt><dfn>Haec dicuntur inconstantissime.</dfn></dt>\r\n	<dd>Superiores tres erant, quae esse possent, quarum est una sola defensa, eaque vehementer.</dd>\r\n	<dt><dfn>Moriatur, inquit.</dfn></dt>\r\n	<dd>Paupertas si malum est, mendicus beatus esse nemo potest, quamvis sit sapiens.</dd>\r\n</dl>\r\n\r\n\r\n<h3>Mihi, inquam, qui te id ipsum rogavi?</h3>\r\n\r\n<p>Respondent extrema primis, media utrisque, omnia omnibus. Utinam quidem dicerent alium alio beatiorem! Iam ruinas videres. Quid vero? <mark>Quid Zeno?</mark> </p>\r\n\r\n<ul>\r\n	<li>Illud quaero, quid ei, qui in voluptate summum bonum ponat, consentaneum sit dicere.</li>\r\n	<li>Quod idem cum vestri faciant, non satis magnam tribuunt inventoribus gratiam.</li>\r\n	<li>Quamquam id quidem licebit iis existimare, qui legerint.</li>\r\n</ul>\r\n\r\n\r\n<pre>Ut bacillum aliud est inflexum et incurvatum de industria,\r\naliud ita natum, sic ferarum natura non est illa quidem\r\ndepravata mala disciplina, sed natura sua.\r\n\r\nObscura, inquit, quaedam esse confiteor, nec tamen ab illis\r\nita dicuntur de industria, sed inest in rebus ipsis\r\nobscuritas.\r\n</pre>\r\n\r\n\r\n<ol>\r\n	<li>Summum a vobis bonum voluptas dicitur.</li>\r\n	<li>Negat enim summo bono afferre incrementum diem.</li>\r\n	<li>Eiuro, inquit adridens, iniquum, hac quidem de re;</li>\r\n	<li>Quamquam te quidem video minime esse deterritum.</li>\r\n</ol>\r\n\r\n\r\n', 3, 1, 12, 2, 1, 0, '2021-04-28 00:39:50', '2021-04-28 00:39:50', '2021-05-28 00:39:50', 3, NULL),
(10, 0, 'Scripsit enim et multise21', 'Phoenix', '1233.23', 2, 2, '02b2a0800bea5eba02468920ffcf7a9f1619563071.jpg|9decbde481a08e51b65f689e2f5f48c71619563071.jpg|953fe3ff827831a0bf7c0457e8fa09861619563071.jpg|kupatilo 11619563071.jpg', '', '<h1>Vitiosum est enim in dividendo partem in genere numerare.</h1>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Est, ut dicis, inquit; <a href=\"http://loripsum.net/\" target=\"_blank\">Ego vero isti, inquam, permitto.</a> <i>Putabam equidem satis, inquit, me dixisse.</i> Sed in rebus apertissimis nimium longi sumus. </p>\r\n\r\n<ul>\r\n	<li>Hi curatione adhibita levantur in dies, valet alter plus cotidie, alter videt.</li>\r\n	<li>Omnes enim iucundum motum, quo sensus hilaretur.</li>\r\n	<li>Hoc est dicere: Non reprehenderem asotos, si non essent asoti.</li>\r\n</ul>\r\n\r\n\r\n<ol>\r\n	<li>Quod si ita est, sequitur id ipsum, quod te velle video, omnes semper beatos esse sapientes.</li>\r\n	<li>Sed haec nihil sane ad rem;</li>\r\n	<li>At quanta conantur! Mundum hunc omnem oppidum esse nostrum! Incendi igitur eos, qui audiunt, vides.</li>\r\n	<li>Hoc loco discipulos quaerere videtur, ut, qui asoti esse velint, philosophi ante fiant.</li>\r\n	<li>Indicant pueri, in quibus ut in speculis natura cernitur.</li>\r\n	<li>Si alia sentit, inquam, alia loquitur, numquam intellegam quid sentiat;</li>\r\n</ol>\r\n\r\n\r\n<pre>Haec ego non possum dicere non esse hominis quamvis et belli\r\net humani, sapientis vero nullo modo, physici praesertim,\r\nquem se ille esse vult, putare ullum esse cuiusquam diem\r\nnatalem.\r\n\r\nLicet hic rursus ea commemores, quae optimis verbis ab\r\nEpicuro de laude amicitiae dicta sunt.\r\n</pre>\r\n\r\n\r\n<p>Duo Reges: constructio interrete. Eademne, quae restincta siti? <b>Restatis igitur vos;</b> Facillimum id quidem est, inquam. Et quod est munus, quod opus sapientiae? <a href=\"http://loripsum.net/\" target=\"_blank\">Prioris generis est docilitas, memoria;</a> </p>\r\n\r\n<blockquote cite=\"http://loripsum.net\">\r\n	Scripsit enim et multis saepe verbis et breviter arteque in eo libro, quem modo nominavi, mortem nihil ad nos pertinere.\r\n</blockquote>\r\n\r\n\r\n<h2>Ut id aliis narrare gestiant?</h2>\r\n\r\n<p>Non potes, nisi retexueris illa. Id mihi magnum videtur. Id est enim, de quo quaerimus. Aperiendum est igitur, quid sit voluptas; <a href=\"http://loripsum.net/\" target=\"_blank\">Nam Pyrrho, Aristo, Erillus iam diu abiecti.</a> </p>\r\n\r\n<dl>\r\n	<dt><dfn>Perge porro;</dfn></dt>\r\n	<dd>Hoc ipsum elegantius poni meliusque potuit.</dd>\r\n	<dt><dfn>At coluit ipse amicitias.</dfn></dt>\r\n	<dd>Idem iste, inquam, de voluptate quid sentit?</dd>\r\n	<dt><dfn>Ut pulsi recurrant?</dfn></dt>\r\n	<dd>Cum ageremus, inquit, vitae beatum et eundem supremum diem, scribebamus haec.</dd>\r\n</dl>\r\n\r\n\r\n', 2, 4, 111, 2, 3, 1, '2021-04-28 00:37:51', '2021-04-28 00:37:51', '2021-05-28 00:37:51', 3, NULL),
(11, 1, 'A asdA  ltis saepe verbis  2 ', 'Belgrade', '233.33', 3, 1, '02b2a0800bea5eba02468920ffcf7a9f1619563138.jpg|9decbde481a08e51b65f689e2f5f48c71619563138.jpg|953fe3ff827831a0bf7c0457e8fa09861619563138.jpg|12671798_818011141677953_8612666938672366883_o1619563138.jpg|12671798_818011141677953_8612666938672366883_o1619563138.jpg', '', '<h1>Et ais, si una littera commota sit, fore tota ut labet disciplina.</h1>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. An quod ita callida est, ut optime possit architectari voluptates? Nihilo beatiorem esse Metellum quam Regulum. Duo Reges: constructio interrete. <i>Illi enim inter se dissentiunt.</i> <b>Quo tandem modo?</b> <a href=\"http://loripsum.net/\" target=\"_blank\">Audeo dicere, inquit.</a> Tum Quintus: Est plane, Piso, ut dicis, inquit. <code>Non igitur bene.</code> </p>\r\n\r\n<blockquote cite=\"http://loripsum.net\">\r\n	Huc et illuc, Torquate, vos versetis licet, nihil in hac praeclara epistula scriptum ab Epicuro congruens et conveniens decretis eius reperietis.\r\n</blockquote>\r\n\r\n\r\n<h2>An hoc usque quaque, aliter in vita?</h2>\r\n\r\n<p>Fortemne possumus dicere eundem illum Torquatum? Quorum sine causa fieri nihil putandum est. Quod quidem nobis non saepe contingit. Istam voluptatem, inquit, Epicurus ignorat? </p>\r\n\r\n<dl>\r\n	<dt><dfn>Haec dicuntur inconstantissime.</dfn></dt>\r\n	<dd>Superiores tres erant, quae esse possent, quarum est una sola defensa, eaque vehementer.</dd>\r\n	<dt><dfn>Moriatur, inquit.</dfn></dt>\r\n	<dd>Paupertas si malum est, mendicus beatus esse nemo potest, quamvis sit sapiens.</dd>\r\n</dl>\r\n\r\n\r\n<h3>Mihi, inquam, qui te id ipsum rogavi?</h3>\r\n\r\n<p>Respondent extrema primis, media utrisque, omnia omnibus. Utinam quidem dicerent alium alio beatiorem! Iam ruinas videres. Quid vero? <mark>Quid Zeno?</mark> </p>\r\n\r\n<ul>\r\n	<li>Illud quaero, quid ei, qui in voluptate summum bonum ponat, consentaneum sit dicere.</li>\r\n	<li>Quod idem cum vestri faciant, non satis magnam tribuunt inventoribus gratiam.</li>\r\n	<li>Quamquam id quidem licebit iis existimare, qui legerint.</li>\r\n</ul>\r\n\r\n\r\n<pre>Ut bacillum aliud est inflexum et incurvatum de industria,\r\naliud ita natum, sic ferarum natura non est illa quidem\r\ndepravata mala disciplina, sed natura sua.\r\n\r\nObscura, inquit, quaedam esse confiteor, nec tamen ab illis\r\nita dicuntur de industria, sed inest in rebus ipsis\r\nobscuritas.\r\n</pre>\r\n\r\n\r\n<ol>\r\n	<li>Summum a vobis bonum voluptas dicitur.</li>\r\n	<li>Negat enim summo bono afferre incrementum diem.</li>\r\n	<li>Eiuro, inquit adridens, iniquum, hac quidem de re;</li>\r\n	<li>Quamquam te quidem video minime esse deterritum.</li>\r\n</ol>\r\n\r\n\r\n', 2, 5, 44, 1, 1, 0, '2021-04-28 00:38:58', '2021-04-28 00:38:58', '2021-05-28 00:38:58', 3, NULL),
(12, 1, 'Quamquam te quidem video minime esse deterritum.', 'New York', '566.77', 2, 3, '02b2a0800bea5eba02468920ffcf7a9f1619563190.jpg|9decbde481a08e51b65f689e2f5f48c71619563190.jpg|953fe3ff827831a0bf7c0457e8fa09861619563190.jpg|953fe3ff827831a0bf7c0457e8fa09861619563190.jpg', '', '<h1>Et ais, si una littera commota sit, fore tota ut labet disciplina.</h1>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. An quod ita callida est, ut optime possit architectari voluptates? Nihilo beatiorem esse Metellum quam Regulum. Duo Reges: constructio interrete. <i>Illi enim inter se dissentiunt.</i> <b>Quo tandem modo?</b> <a href=\"http://loripsum.net/\" target=\"_blank\">Audeo dicere, inquit.</a> Tum Quintus: Est plane, Piso, ut dicis, inquit. <code>Non igitur bene.</code> </p>\r\n\r\n<blockquote cite=\"http://loripsum.net\">\r\n	Huc et illuc, Torquate, vos versetis licet, nihil in hac praeclara epistula scriptum ab Epicuro congruens et conveniens decretis eius reperietis.\r\n</blockquote>\r\n\r\n\r\n<h2>An hoc usque quaque, aliter in vita?</h2>\r\n\r\n<p>Fortemne possumus dicere eundem illum Torquatum? Quorum sine causa fieri nihil putandum est. Quod quidem nobis non saepe contingit. Istam voluptatem, inquit, Epicurus ignorat? </p>\r\n\r\n<dl>\r\n	<dt><dfn>Haec dicuntur inconstantissime.</dfn></dt>\r\n	<dd>Superiores tres erant, quae esse possent, quarum est una sola defensa, eaque vehementer.</dd>\r\n	<dt><dfn>Moriatur, inquit.</dfn></dt>\r\n	<dd>Paupertas si malum est, mendicus beatus esse nemo potest, quamvis sit sapiens.</dd>\r\n</dl>\r\n\r\n\r\n<h3>Mihi, inquam, qui te id ipsum rogavi?</h3>\r\n\r\n<p>Respondent extrema primis, media utrisque, omnia omnibus. Utinam quidem dicerent alium alio beatiorem! Iam ruinas videres. Quid vero? <mark>Quid Zeno?</mark> </p>\r\n\r\n<ul>\r\n	<li>Illud quaero, quid ei, qui in voluptate summum bonum ponat, consentaneum sit dicere.</li>\r\n	<li>Quod idem cum vestri faciant, non satis magnam tribuunt inventoribus gratiam.</li>\r\n	<li>Quamquam id quidem licebit iis existimare, qui legerint.</li>\r\n</ul>\r\n\r\n\r\n<pre>Ut bacillum aliud est inflexum et incurvatum de industria,\r\naliud ita natum, sic ferarum natura non est illa quidem\r\ndepravata mala disciplina, sed natura sua.\r\n\r\nObscura, inquit, quaedam esse confiteor, nec tamen ab illis\r\nita dicuntur de industria, sed inest in rebus ipsis\r\nobscuritas.\r\n</pre>\r\n\r\n\r\n<ol>\r\n	<li>Summum a vobis bonum voluptas dicitur.</li>\r\n	<li>Negat enim summo bono afferre incrementum diem.</li>\r\n	<li>Eiuro, inquit adridens, iniquum, hac quidem de re;</li>\r\n	<li>Quamquam te quidem video minime esse deterritum.</li>\r\n</ol>\r\n\r\n\r\n', 3, 2, 12, 2, 1, 0, '2021-04-28 00:39:50', '2021-04-28 00:39:50', '2021-05-28 00:39:50', 3, NULL),
(13, 0, 'Scripsit enim et multis saepe verbis ', 'Phoenix', '1233.23', 1, 1, '02b2a0800bea5eba02468920ffcf7a9f1619563071.jpg|9decbde481a08e51b65f689e2f5f48c71619563071.jpg|953fe3ff827831a0bf7c0457e8fa09861619563071.jpg|kupatilo 11619563071.jpg', '', '<h1>Vitiosum est enim in dividendo partem in genere numerare.</h1>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Est, ut dicis, inquit; <a href=\"http://loripsum.net/\" target=\"_blank\">Ego vero isti, inquam, permitto.</a> <i>Putabam equidem satis, inquit, me dixisse.</i> Sed in rebus apertissimis nimium longi sumus. </p>\r\n\r\n<ul>\r\n	<li>Hi curatione adhibita levantur in dies, valet alter plus cotidie, alter videt.</li>\r\n	<li>Omnes enim iucundum motum, quo sensus hilaretur.</li>\r\n	<li>Hoc est dicere: Non reprehenderem asotos, si non essent asoti.</li>\r\n</ul>\r\n\r\n\r\n<ol>\r\n	<li>Quod si ita est, sequitur id ipsum, quod te velle video, omnes semper beatos esse sapientes.</li>\r\n	<li>Sed haec nihil sane ad rem;</li>\r\n	<li>At quanta conantur! Mundum hunc omnem oppidum esse nostrum! Incendi igitur eos, qui audiunt, vides.</li>\r\n	<li>Hoc loco discipulos quaerere videtur, ut, qui asoti esse velint, philosophi ante fiant.</li>\r\n	<li>Indicant pueri, in quibus ut in speculis natura cernitur.</li>\r\n	<li>Si alia sentit, inquam, alia loquitur, numquam intellegam quid sentiat;</li>\r\n</ol>\r\n\r\n\r\n<pre>Haec ego non possum dicere non esse hominis quamvis et belli\r\net humani, sapientis vero nullo modo, physici praesertim,\r\nquem se ille esse vult, putare ullum esse cuiusquam diem\r\nnatalem.\r\n\r\nLicet hic rursus ea commemores, quae optimis verbis ab\r\nEpicuro de laude amicitiae dicta sunt.\r\n</pre>\r\n\r\n\r\n<p>Duo Reges: constructio interrete. Eademne, quae restincta siti? <b>Restatis igitur vos;</b> Facillimum id quidem est, inquam. Et quod est munus, quod opus sapientiae? <a href=\"http://loripsum.net/\" target=\"_blank\">Prioris generis est docilitas, memoria;</a> </p>\r\n\r\n<blockquote cite=\"http://loripsum.net\">\r\n	Scripsit enim et multis saepe verbis et breviter arteque in eo libro, quem modo nominavi, mortem nihil ad nos pertinere.\r\n</blockquote>\r\n\r\n\r\n<h2>Ut id aliis narrare gestiant?</h2>\r\n\r\n<p>Non potes, nisi retexueris illa. Id mihi magnum videtur. Id est enim, de quo quaerimus. Aperiendum est igitur, quid sit voluptas; <a href=\"http://loripsum.net/\" target=\"_blank\">Nam Pyrrho, Aristo, Erillus iam diu abiecti.</a> </p>\r\n\r\n<dl>\r\n	<dt><dfn>Perge porro;</dfn></dt>\r\n	<dd>Hoc ipsum elegantius poni meliusque potuit.</dd>\r\n	<dt><dfn>At coluit ipse amicitias.</dfn></dt>\r\n	<dd>Idem iste, inquam, de voluptate quid sentit?</dd>\r\n	<dt><dfn>Ut pulsi recurrant?</dfn></dt>\r\n	<dd>Cum ageremus, inquit, vitae beatum et eundem supremum diem, scribebamus haec.</dd>\r\n</dl>\r\n\r\n\r\n', 1, 2, 12, 2, 1, 1, '2021-04-28 00:37:51', '2021-04-28 00:37:51', '2021-05-28 00:37:51', 3, NULL),
(14, 1, 'A asdA  ltis saepe verbis  2 ', 'Belgrade', '233.33', 1, 3, '02b2a0800bea5eba02468920ffcf7a9f1619563138.jpg|9decbde481a08e51b65f689e2f5f48c71619563138.jpg|953fe3ff827831a0bf7c0457e8fa09861619563138.jpg|12671798_818011141677953_8612666938672366883_o1619563138.jpg|12671798_818011141677953_8612666938672366883_o1619563138.jpg', '', '<h1>Et ais, si una littera commota sit, fore tota ut labet disciplina.</h1>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. An quod ita callida est, ut optime possit architectari voluptates? Nihilo beatiorem esse Metellum quam Regulum. Duo Reges: constructio interrete. <i>Illi enim inter se dissentiunt.</i> <b>Quo tandem modo?</b> <a href=\"http://loripsum.net/\" target=\"_blank\">Audeo dicere, inquit.</a> Tum Quintus: Est plane, Piso, ut dicis, inquit. <code>Non igitur bene.</code> </p>\r\n\r\n<blockquote cite=\"http://loripsum.net\">\r\n	Huc et illuc, Torquate, vos versetis licet, nihil in hac praeclara epistula scriptum ab Epicuro congruens et conveniens decretis eius reperietis.\r\n</blockquote>\r\n\r\n\r\n<h2>An hoc usque quaque, aliter in vita?</h2>\r\n\r\n<p>Fortemne possumus dicere eundem illum Torquatum? Quorum sine causa fieri nihil putandum est. Quod quidem nobis non saepe contingit. Istam voluptatem, inquit, Epicurus ignorat? </p>\r\n\r\n<dl>\r\n	<dt><dfn>Haec dicuntur inconstantissime.</dfn></dt>\r\n	<dd>Superiores tres erant, quae esse possent, quarum est una sola defensa, eaque vehementer.</dd>\r\n	<dt><dfn>Moriatur, inquit.</dfn></dt>\r\n	<dd>Paupertas si malum est, mendicus beatus esse nemo potest, quamvis sit sapiens.</dd>\r\n</dl>\r\n\r\n\r\n<h3>Mihi, inquam, qui te id ipsum rogavi?</h3>\r\n\r\n<p>Respondent extrema primis, media utrisque, omnia omnibus. Utinam quidem dicerent alium alio beatiorem! Iam ruinas videres. Quid vero? <mark>Quid Zeno?</mark> </p>\r\n\r\n<ul>\r\n	<li>Illud quaero, quid ei, qui in voluptate summum bonum ponat, consentaneum sit dicere.</li>\r\n	<li>Quod idem cum vestri faciant, non satis magnam tribuunt inventoribus gratiam.</li>\r\n	<li>Quamquam id quidem licebit iis existimare, qui legerint.</li>\r\n</ul>\r\n\r\n\r\n<pre>Ut bacillum aliud est inflexum et incurvatum de industria,\r\naliud ita natum, sic ferarum natura non est illa quidem\r\ndepravata mala disciplina, sed natura sua.\r\n\r\nObscura, inquit, quaedam esse confiteor, nec tamen ab illis\r\nita dicuntur de industria, sed inest in rebus ipsis\r\nobscuritas.\r\n</pre>\r\n\r\n\r\n<ol>\r\n	<li>Summum a vobis bonum voluptas dicitur.</li>\r\n	<li>Negat enim summo bono afferre incrementum diem.</li>\r\n	<li>Eiuro, inquit adridens, iniquum, hac quidem de re;</li>\r\n	<li>Quamquam te quidem video minime esse deterritum.</li>\r\n</ol>\r\n\r\n\r\n', 3, 2, 1, 2, 3, 0, '2021-04-28 00:38:58', '2021-04-28 00:38:58', '2021-05-28 00:38:58', 3, NULL),
(15, 1, 'Quamquam te quidem video minime esse deterritum.', 'New York', '566.77', 2, 3, '02b2a0800bea5eba02468920ffcf7a9f1619563190.jpg|9decbde481a08e51b65f689e2f5f48c71619563190.jpg|953fe3ff827831a0bf7c0457e8fa09861619563190.jpg|953fe3ff827831a0bf7c0457e8fa09861619563190.jpg', '', '<h1>Et ais, si una littera commota sit, fore tota ut labet disciplina.</h1>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. An quod ita callida est, ut optime possit architectari voluptates? Nihilo beatiorem esse Metellum quam Regulum. Duo Reges: constructio interrete. <i>Illi enim inter se dissentiunt.</i> <b>Quo tandem modo?</b> <a href=\"http://loripsum.net/\" target=\"_blank\">Audeo dicere, inquit.</a> Tum Quintus: Est plane, Piso, ut dicis, inquit. <code>Non igitur bene.</code> </p>\r\n\r\n<blockquote cite=\"http://loripsum.net\">\r\n	Huc et illuc, Torquate, vos versetis licet, nihil in hac praeclara epistula scriptum ab Epicuro congruens et conveniens decretis eius reperietis.\r\n</blockquote>\r\n\r\n\r\n<h2>An hoc usque quaque, aliter in vita?</h2>\r\n\r\n<p>Fortemne possumus dicere eundem illum Torquatum? Quorum sine causa fieri nihil putandum est. Quod quidem nobis non saepe contingit. Istam voluptatem, inquit, Epicurus ignorat? </p>\r\n\r\n<dl>\r\n	<dt><dfn>Haec dicuntur inconstantissime.</dfn></dt>\r\n	<dd>Superiores tres erant, quae esse possent, quarum est una sola defensa, eaque vehementer.</dd>\r\n	<dt><dfn>Moriatur, inquit.</dfn></dt>\r\n	<dd>Paupertas si malum est, mendicus beatus esse nemo potest, quamvis sit sapiens.</dd>\r\n</dl>\r\n\r\n\r\n<h3>Mihi, inquam, qui te id ipsum rogavi?</h3>\r\n\r\n<p>Respondent extrema primis, media utrisque, omnia omnibus. Utinam quidem dicerent alium alio beatiorem! Iam ruinas videres. Quid vero? <mark>Quid Zeno?</mark> </p>\r\n\r\n<ul>\r\n	<li>Illud quaero, quid ei, qui in voluptate summum bonum ponat, consentaneum sit dicere.</li>\r\n	<li>Quod idem cum vestri faciant, non satis magnam tribuunt inventoribus gratiam.</li>\r\n	<li>Quamquam id quidem licebit iis existimare, qui legerint.</li>\r\n</ul>\r\n\r\n\r\n<pre>Ut bacillum aliud est inflexum et incurvatum de industria,\r\naliud ita natum, sic ferarum natura non est illa quidem\r\ndepravata mala disciplina, sed natura sua.\r\n\r\nObscura, inquit, quaedam esse confiteor, nec tamen ab illis\r\nita dicuntur de industria, sed inest in rebus ipsis\r\nobscuritas.\r\n</pre>\r\n\r\n\r\n<ol>\r\n	<li>Summum a vobis bonum voluptas dicitur.</li>\r\n	<li>Negat enim summo bono afferre incrementum diem.</li>\r\n	<li>Eiuro, inquit adridens, iniquum, hac quidem de re;</li>\r\n	<li>Quamquam te quidem video minime esse deterritum.</li>\r\n</ol>\r\n\r\n\r\n', 3, 3, 12, 2, 1, 0, '2021-04-28 00:39:50', '2021-04-28 00:39:50', '2021-05-28 00:39:50', 3, NULL),
(16, 1, 'Scripsit enim et multise21', 'Phoenix', '1233.23', 2, 2, '02b2a0800bea5eba02468920ffcf7a9f1619563071.jpg|9decbde481a08e51b65f689e2f5f48c71619563071.jpg|953fe3ff827831a0bf7c0457e8fa09861619563071.jpg|kupatilo 11619563071.jpg', '', '<h1>Vitiosum est enim in dividendo partem in genere numerare.</h1>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Est, ut dicis, inquit; <a href=\"http://loripsum.net/\" target=\"_blank\">Ego vero isti, inquam, permitto.</a> <i>Putabam equidem satis, inquit, me dixisse.</i> Sed in rebus apertissimis nimium longi sumus. </p>\r\n\r\n<ul>\r\n	<li>Hi curatione adhibita levantur in dies, valet alter plus cotidie, alter videt.</li>\r\n	<li>Omnes enim iucundum motum, quo sensus hilaretur.</li>\r\n	<li>Hoc est dicere: Non reprehenderem asotos, si non essent asoti.</li>\r\n</ul>\r\n\r\n\r\n<ol>\r\n	<li>Quod si ita est, sequitur id ipsum, quod te velle video, omnes semper beatos esse sapientes.</li>\r\n	<li>Sed haec nihil sane ad rem;</li>\r\n	<li>At quanta conantur! Mundum hunc omnem oppidum esse nostrum! Incendi igitur eos, qui audiunt, vides.</li>\r\n	<li>Hoc loco discipulos quaerere videtur, ut, qui asoti esse velint, philosophi ante fiant.</li>\r\n	<li>Indicant pueri, in quibus ut in speculis natura cernitur.</li>\r\n	<li>Si alia sentit, inquam, alia loquitur, numquam intellegam quid sentiat;</li>\r\n</ol>\r\n\r\n\r\n<pre>Haec ego non possum dicere non esse hominis quamvis et belli\r\net humani, sapientis vero nullo modo, physici praesertim,\r\nquem se ille esse vult, putare ullum esse cuiusquam diem\r\nnatalem.\r\n\r\nLicet hic rursus ea commemores, quae optimis verbis ab\r\nEpicuro de laude amicitiae dicta sunt.\r\n</pre>\r\n\r\n\r\n<p>Duo Reges: constructio interrete. Eademne, quae restincta siti? <b>Restatis igitur vos;</b> Facillimum id quidem est, inquam. Et quod est munus, quod opus sapientiae? <a href=\"http://loripsum.net/\" target=\"_blank\">Prioris generis est docilitas, memoria;</a> </p>\r\n\r\n<blockquote cite=\"http://loripsum.net\">\r\n	Scripsit enim et multis saepe verbis et breviter arteque in eo libro, quem modo nominavi, mortem nihil ad nos pertinere.\r\n</blockquote>\r\n\r\n\r\n<h2>Ut id aliis narrare gestiant?</h2>\r\n\r\n<p>Non potes, nisi retexueris illa. Id mihi magnum videtur. Id est enim, de quo quaerimus. Aperiendum est igitur, quid sit voluptas; <a href=\"http://loripsum.net/\" target=\"_blank\">Nam Pyrrho, Aristo, Erillus iam diu abiecti.</a> </p>\r\n\r\n<dl>\r\n	<dt><dfn>Perge porro;</dfn></dt>\r\n	<dd>Hoc ipsum elegantius poni meliusque potuit.</dd>\r\n	<dt><dfn>At coluit ipse amicitias.</dfn></dt>\r\n	<dd>Idem iste, inquam, de voluptate quid sentit?</dd>\r\n	<dt><dfn>Ut pulsi recurrant?</dfn></dt>\r\n	<dd>Cum ageremus, inquit, vitae beatum et eundem supremum diem, scribebamus haec.</dd>\r\n</dl>\r\n\r\n\r\n', 2, 4, 111, 3, 3, 1, '2021-04-28 00:37:51', '2021-04-28 00:37:51', '2021-05-28 00:37:51', 3, NULL),
(17, 1, 'A asdA  ltis saepe verbis  2 ', 'Belgrade', '233.33', 3, 1, '02b2a0800bea5eba02468920ffcf7a9f1619563138.jpg|9decbde481a08e51b65f689e2f5f48c71619563138.jpg|953fe3ff827831a0bf7c0457e8fa09861619563138.jpg|12671798_818011141677953_8612666938672366883_o1619563138.jpg|12671798_818011141677953_8612666938672366883_o1619563138.jpg', '', '<h1>Et ais, si una littera commota sit, fore tota ut labet disciplina.</h1>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. An quod ita callida est, ut optime possit architectari voluptates? Nihilo beatiorem esse Metellum quam Regulum. Duo Reges: constructio interrete. <i>Illi enim inter se dissentiunt.</i> <b>Quo tandem modo?</b> <a href=\"http://loripsum.net/\" target=\"_blank\">Audeo dicere, inquit.</a> Tum Quintus: Est plane, Piso, ut dicis, inquit. <code>Non igitur bene.</code> </p>\r\n\r\n<blockquote cite=\"http://loripsum.net\">\r\n	Huc et illuc, Torquate, vos versetis licet, nihil in hac praeclara epistula scriptum ab Epicuro congruens et conveniens decretis eius reperietis.\r\n</blockquote>\r\n\r\n\r\n<h2>An hoc usque quaque, aliter in vita?</h2>\r\n\r\n<p>Fortemne possumus dicere eundem illum Torquatum? Quorum sine causa fieri nihil putandum est. Quod quidem nobis non saepe contingit. Istam voluptatem, inquit, Epicurus ignorat? </p>\r\n\r\n<dl>\r\n	<dt><dfn>Haec dicuntur inconstantissime.</dfn></dt>\r\n	<dd>Superiores tres erant, quae esse possent, quarum est una sola defensa, eaque vehementer.</dd>\r\n	<dt><dfn>Moriatur, inquit.</dfn></dt>\r\n	<dd>Paupertas si malum est, mendicus beatus esse nemo potest, quamvis sit sapiens.</dd>\r\n</dl>\r\n\r\n\r\n<h3>Mihi, inquam, qui te id ipsum rogavi?</h3>\r\n\r\n<p>Respondent extrema primis, media utrisque, omnia omnibus. Utinam quidem dicerent alium alio beatiorem! Iam ruinas videres. Quid vero? <mark>Quid Zeno?</mark> </p>\r\n\r\n<ul>\r\n	<li>Illud quaero, quid ei, qui in voluptate summum bonum ponat, consentaneum sit dicere.</li>\r\n	<li>Quod idem cum vestri faciant, non satis magnam tribuunt inventoribus gratiam.</li>\r\n	<li>Quamquam id quidem licebit iis existimare, qui legerint.</li>\r\n</ul>\r\n\r\n\r\n<pre>Ut bacillum aliud est inflexum et incurvatum de industria,\r\naliud ita natum, sic ferarum natura non est illa quidem\r\ndepravata mala disciplina, sed natura sua.\r\n\r\nObscura, inquit, quaedam esse confiteor, nec tamen ab illis\r\nita dicuntur de industria, sed inest in rebus ipsis\r\nobscuritas.\r\n</pre>\r\n\r\n\r\n<ol>\r\n	<li>Summum a vobis bonum voluptas dicitur.</li>\r\n	<li>Negat enim summo bono afferre incrementum diem.</li>\r\n	<li>Eiuro, inquit adridens, iniquum, hac quidem de re;</li>\r\n	<li>Quamquam te quidem video minime esse deterritum.</li>\r\n</ol>\r\n\r\n\r\n', 2, 5, 44, 1, 1, 0, '2021-04-28 00:38:58', '2021-04-28 00:38:58', '2021-05-28 00:38:58', 3, NULL),
(18, 1, 'Quamquam te quidem video minime esse deterritum.', 'New York', '566.77', 2, 3, '02b2a0800bea5eba02468920ffcf7a9f1619563190.jpg|9decbde481a08e51b65f689e2f5f48c71619563190.jpg|953fe3ff827831a0bf7c0457e8fa09861619563190.jpg|953fe3ff827831a0bf7c0457e8fa09861619563190.jpg', '', '<h1>Et ais, si una littera commota sit, fore tota ut labet disciplina.</h1>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. An quod ita callida est, ut optime possit architectari voluptates? Nihilo beatiorem esse Metellum quam Regulum. Duo Reges: constructio interrete. <i>Illi enim inter se dissentiunt.</i> <b>Quo tandem modo?</b> <a href=\"http://loripsum.net/\" target=\"_blank\">Audeo dicere, inquit.</a> Tum Quintus: Est plane, Piso, ut dicis, inquit. <code>Non igitur bene.</code> </p>\r\n\r\n<blockquote cite=\"http://loripsum.net\">\r\n	Huc et illuc, Torquate, vos versetis licet, nihil in hac praeclara epistula scriptum ab Epicuro congruens et conveniens decretis eius reperietis.\r\n</blockquote>\r\n\r\n\r\n<h2>An hoc usque quaque, aliter in vita?</h2>\r\n\r\n<p>Fortemne possumus dicere eundem illum Torquatum? Quorum sine causa fieri nihil putandum est. Quod quidem nobis non saepe contingit. Istam voluptatem, inquit, Epicurus ignorat? </p>\r\n\r\n<dl>\r\n	<dt><dfn>Haec dicuntur inconstantissime.</dfn></dt>\r\n	<dd>Superiores tres erant, quae esse possent, quarum est una sola defensa, eaque vehementer.</dd>\r\n	<dt><dfn>Moriatur, inquit.</dfn></dt>\r\n	<dd>Paupertas si malum est, mendicus beatus esse nemo potest, quamvis sit sapiens.</dd>\r\n</dl>\r\n\r\n\r\n<h3>Mihi, inquam, qui te id ipsum rogavi?</h3>\r\n\r\n<p>Respondent extrema primis, media utrisque, omnia omnibus. Utinam quidem dicerent alium alio beatiorem! Iam ruinas videres. Quid vero? <mark>Quid Zeno?</mark> </p>\r\n\r\n<ul>\r\n	<li>Illud quaero, quid ei, qui in voluptate summum bonum ponat, consentaneum sit dicere.</li>\r\n	<li>Quod idem cum vestri faciant, non satis magnam tribuunt inventoribus gratiam.</li>\r\n	<li>Quamquam id quidem licebit iis existimare, qui legerint.</li>\r\n</ul>\r\n\r\n\r\n<pre>Ut bacillum aliud est inflexum et incurvatum de industria,\r\naliud ita natum, sic ferarum natura non est illa quidem\r\ndepravata mala disciplina, sed natura sua.\r\n\r\nObscura, inquit, quaedam esse confiteor, nec tamen ab illis\r\nita dicuntur de industria, sed inest in rebus ipsis\r\nobscuritas.\r\n</pre>\r\n\r\n\r\n<ol>\r\n	<li>Summum a vobis bonum voluptas dicitur.</li>\r\n	<li>Negat enim summo bono afferre incrementum diem.</li>\r\n	<li>Eiuro, inquit adridens, iniquum, hac quidem de re;</li>\r\n	<li>Quamquam te quidem video minime esse deterritum.</li>\r\n</ol>\r\n\r\n\r\n', 3, 2, 12, 1, 1, 0, '2021-04-28 00:39:50', '2021-04-28 00:39:50', '2021-05-28 00:39:50', 3, NULL),
(19, 1, 'Quamquam te quidem video minime esse deterritum.', 'New York', '566.77', 2, 3, '02b2a0800bea5eba02468920ffcf7a9f1619563190.jpg|9decbde481a08e51b65f689e2f5f48c71619563190.jpg|953fe3ff827831a0bf7c0457e8fa09861619563190.jpg|953fe3ff827831a0bf7c0457e8fa09861619563190.jpg', '', '<h1>Et ais, si una littera commota sit, fore tota ut labet disciplina.</h1>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. An quod ita callida est, ut optime possit architectari voluptates? Nihilo beatiorem esse Metellum quam Regulum. Duo Reges: constructio interrete. <i>Illi enim inter se dissentiunt.</i> <b>Quo tandem modo?</b> <a href=\"http://loripsum.net/\" target=\"_blank\">Audeo dicere, inquit.</a> Tum Quintus: Est plane, Piso, ut dicis, inquit. <code>Non igitur bene.</code> </p>\r\n\r\n<blockquote cite=\"http://loripsum.net\">\r\n	Huc et illuc, Torquate, vos versetis licet, nihil in hac praeclara epistula scriptum ab Epicuro congruens et conveniens decretis eius reperietis.\r\n</blockquote>\r\n\r\n\r\n<h2>An hoc usque quaque, aliter in vita?</h2>\r\n\r\n<p>Fortemne possumus dicere eundem illum Torquatum? Quorum sine causa fieri nihil putandum est. Quod quidem nobis non saepe contingit. Istam voluptatem, inquit, Epicurus ignorat? </p>\r\n\r\n<dl>\r\n	<dt><dfn>Haec dicuntur inconstantissime.</dfn></dt>\r\n	<dd>Superiores tres erant, quae esse possent, quarum est una sola defensa, eaque vehementer.</dd>\r\n	<dt><dfn>Moriatur, inquit.</dfn></dt>\r\n	<dd>Paupertas si malum est, mendicus beatus esse nemo potest, quamvis sit sapiens.</dd>\r\n</dl>\r\n\r\n\r\n<h3>Mihi, inquam, qui te id ipsum rogavi?</h3>\r\n\r\n<p>Respondent extrema primis, media utrisque, omnia omnibus. Utinam quidem dicerent alium alio beatiorem! Iam ruinas videres. Quid vero? <mark>Quid Zeno?</mark> </p>\r\n\r\n<ul>\r\n	<li>Illud quaero, quid ei, qui in voluptate summum bonum ponat, consentaneum sit dicere.</li>\r\n	<li>Quod idem cum vestri faciant, non satis magnam tribuunt inventoribus gratiam.</li>\r\n	<li>Quamquam id quidem licebit iis existimare, qui legerint.</li>\r\n</ul>\r\n\r\n\r\n<pre>Ut bacillum aliud est inflexum et incurvatum de industria,\r\naliud ita natum, sic ferarum natura non est illa quidem\r\ndepravata mala disciplina, sed natura sua.\r\n\r\nObscura, inquit, quaedam esse confiteor, nec tamen ab illis\r\nita dicuntur de industria, sed inest in rebus ipsis\r\nobscuritas.\r\n</pre>\r\n\r\n\r\n<ol>\r\n	<li>Summum a vobis bonum voluptas dicitur.</li>\r\n	<li>Negat enim summo bono afferre incrementum diem.</li>\r\n	<li>Eiuro, inquit adridens, iniquum, hac quidem de re;</li>\r\n	<li>Quamquam te quidem video minime esse deterritum.</li>\r\n</ol>\r\n\r\n\r\n', 3, 3, 12, 2, 1, 0, '2021-04-28 00:39:50', '2021-04-28 00:39:50', '2021-05-28 00:39:50', 3, NULL),
(20, 1, 'Scripsit enim et multis saepe verbis ', 'Phoenix', '1233.23', 1, 1, '02b2a0800bea5eba02468920ffcf7a9f1619563071.jpg|9decbde481a08e51b65f689e2f5f48c71619563071.jpg|953fe3ff827831a0bf7c0457e8fa09861619563071.jpg|kupatilo 11619563071.jpg', '', '<h1>Vitiosum est enim in dividendo partem in genere numerare.</h1>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Est, ut dicis, inquit; <a href=\"http://loripsum.net/\" target=\"_blank\">Ego vero isti, inquam, permitto.</a> <i>Putabam equidem satis, inquit, me dixisse.</i> Sed in rebus apertissimis nimium longi sumus. </p>\r\n\r\n<ul>\r\n	<li>Hi curatione adhibita levantur in dies, valet alter plus cotidie, alter videt.</li>\r\n	<li>Omnes enim iucundum motum, quo sensus hilaretur.</li>\r\n	<li>Hoc est dicere: Non reprehenderem asotos, si non essent asoti.</li>\r\n</ul>\r\n\r\n\r\n<ol>\r\n	<li>Quod si ita est, sequitur id ipsum, quod te velle video, omnes semper beatos esse sapientes.</li>\r\n	<li>Sed haec nihil sane ad rem;</li>\r\n	<li>At quanta conantur! Mundum hunc omnem oppidum esse nostrum! Incendi igitur eos, qui audiunt, vides.</li>\r\n	<li>Hoc loco discipulos quaerere videtur, ut, qui asoti esse velint, philosophi ante fiant.</li>\r\n	<li>Indicant pueri, in quibus ut in speculis natura cernitur.</li>\r\n	<li>Si alia sentit, inquam, alia loquitur, numquam intellegam quid sentiat;</li>\r\n</ol>\r\n\r\n\r\n<pre>Haec ego non possum dicere non esse hominis quamvis et belli\r\net humani, sapientis vero nullo modo, physici praesertim,\r\nquem se ille esse vult, putare ullum esse cuiusquam diem\r\nnatalem.\r\n\r\nLicet hic rursus ea commemores, quae optimis verbis ab\r\nEpicuro de laude amicitiae dicta sunt.\r\n</pre>\r\n\r\n\r\n<p>Duo Reges: constructio interrete. Eademne, quae restincta siti? <b>Restatis igitur vos;</b> Facillimum id quidem est, inquam. Et quod est munus, quod opus sapientiae? <a href=\"http://loripsum.net/\" target=\"_blank\">Prioris generis est docilitas, memoria;</a> </p>\r\n\r\n<blockquote cite=\"http://loripsum.net\">\r\n	Scripsit enim et multis saepe verbis et breviter arteque in eo libro, quem modo nominavi, mortem nihil ad nos pertinere.\r\n</blockquote>\r\n\r\n\r\n<h2>Ut id aliis narrare gestiant?</h2>\r\n\r\n<p>Non potes, nisi retexueris illa. Id mihi magnum videtur. Id est enim, de quo quaerimus. Aperiendum est igitur, quid sit voluptas; <a href=\"http://loripsum.net/\" target=\"_blank\">Nam Pyrrho, Aristo, Erillus iam diu abiecti.</a> </p>\r\n\r\n<dl>\r\n	<dt><dfn>Perge porro;</dfn></dt>\r\n	<dd>Hoc ipsum elegantius poni meliusque potuit.</dd>\r\n	<dt><dfn>At coluit ipse amicitias.</dfn></dt>\r\n	<dd>Idem iste, inquam, de voluptate quid sentit?</dd>\r\n	<dt><dfn>Ut pulsi recurrant?</dfn></dt>\r\n	<dd>Cum ageremus, inquit, vitae beatum et eundem supremum diem, scribebamus haec.</dd>\r\n</dl>\r\n\r\n\r\n', 1, 2, 12, 2, 1, 1, '2021-04-28 00:37:51', '2021-04-28 00:37:51', '2021-05-28 00:37:51', 3, NULL),
(21, 1, 'A asdA  ltis saepe verbis  2 ', 'Chicago', '233.33', 1, 3, '02b2a0800bea5eba02468920ffcf7a9f1619563138.jpg|9decbde481a08e51b65f689e2f5f48c71619563138.jpg|953fe3ff827831a0bf7c0457e8fa09861619563138.jpg|12671798_818011141677953_8612666938672366883_o1619563138.jpg|12671798_818011141677953_8612666938672366883_o1619563138.jpg', '', '<h1>Et ais, si una littera commota sit, fore tota ut labet disciplina.</h1>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. An quod ita callida est, ut optime possit architectari voluptates? Nihilo beatiorem esse Metellum quam Regulum. Duo Reges: constructio interrete. <i>Illi enim inter se dissentiunt.</i> <b>Quo tandem modo?</b> <a href=\"http://loripsum.net/\" target=\"_blank\">Audeo dicere, inquit.</a> Tum Quintus: Est plane, Piso, ut dicis, inquit. <code>Non igitur bene.</code> </p>\r\n\r\n<blockquote cite=\"http://loripsum.net\">\r\n	Huc et illuc, Torquate, vos versetis licet, nihil in hac praeclara epistula scriptum ab Epicuro congruens et conveniens decretis eius reperietis.\r\n</blockquote>\r\n\r\n\r\n<h2>An hoc usque quaque, aliter in vita?</h2>\r\n\r\n<p>Fortemne possumus dicere eundem illum Torquatum? Quorum sine causa fieri nihil putandum est. Quod quidem nobis non saepe contingit. Istam voluptatem, inquit, Epicurus ignorat? </p>\r\n\r\n<dl>\r\n	<dt><dfn>Haec dicuntur inconstantissime.</dfn></dt>\r\n	<dd>Superiores tres erant, quae esse possent, quarum est una sola defensa, eaque vehementer.</dd>\r\n	<dt><dfn>Moriatur, inquit.</dfn></dt>\r\n	<dd>Paupertas si malum est, mendicus beatus esse nemo potest, quamvis sit sapiens.</dd>\r\n</dl>\r\n\r\n\r\n<h3>Mihi, inquam, qui te id ipsum rogavi?</h3>\r\n\r\n<p>Respondent extrema primis, media utrisque, omnia omnibus. Utinam quidem dicerent alium alio beatiorem! Iam ruinas videres. Quid vero? <mark>Quid Zeno?</mark> </p>\r\n\r\n<ul>\r\n	<li>Illud quaero, quid ei, qui in voluptate summum bonum ponat, consentaneum sit dicere.</li>\r\n	<li>Quod idem cum vestri faciant, non satis magnam tribuunt inventoribus gratiam.</li>\r\n	<li>Quamquam id quidem licebit iis existimare, qui legerint.</li>\r\n</ul>\r\n\r\n\r\n<pre>Ut bacillum aliud est inflexum et incurvatum de industria,\r\naliud ita natum, sic ferarum natura non est illa quidem\r\ndepravata mala disciplina, sed natura sua.\r\n\r\nObscura, inquit, quaedam esse confiteor, nec tamen ab illis\r\nita dicuntur de industria, sed inest in rebus ipsis\r\nobscuritas.\r\n</pre>\r\n\r\n\r\n<ol>\r\n	<li>Summum a vobis bonum voluptas dicitur.</li>\r\n	<li>Negat enim summo bono afferre incrementum diem.</li>\r\n	<li>Eiuro, inquit adridens, iniquum, hac quidem de re;</li>\r\n	<li>Quamquam te quidem video minime esse deterritum.</li>\r\n</ol>\r\n\r\n\r\n', 3, 2, 1, 2, 3, 0, '2021-04-28 00:38:58', '2021-04-28 00:38:58', '2021-05-28 00:38:58', 3, NULL),
(22, 1, 'Quamquam te quidem video minime esse deterritum.', 'California', '566.77', 2, 3, '02b2a0800bea5eba02468920ffcf7a9f1619563190.jpg|9decbde481a08e51b65f689e2f5f48c71619563190.jpg|953fe3ff827831a0bf7c0457e8fa09861619563190.jpg|953fe3ff827831a0bf7c0457e8fa09861619563190.jpg', '', '<h1>Et ais, si una littera commota sit, fore tota ut labet disciplina.</h1>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. An quod ita callida est, ut optime possit architectari voluptates? Nihilo beatiorem esse Metellum quam Regulum. Duo Reges: constructio interrete. <i>Illi enim inter se dissentiunt.</i> <b>Quo tandem modo?</b> <a href=\"http://loripsum.net/\" target=\"_blank\">Audeo dicere, inquit.</a> Tum Quintus: Est plane, Piso, ut dicis, inquit. <code>Non igitur bene.</code> </p>\r\n\r\n<blockquote cite=\"http://loripsum.net\">\r\n	Huc et illuc, Torquate, vos versetis licet, nihil in hac praeclara epistula scriptum ab Epicuro congruens et conveniens decretis eius reperietis.\r\n</blockquote>\r\n\r\n\r\n<h2>An hoc usque quaque, aliter in vita?</h2>\r\n\r\n<p>Fortemne possumus dicere eundem illum Torquatum? Quorum sine causa fieri nihil putandum est. Quod quidem nobis non saepe contingit. Istam voluptatem, inquit, Epicurus ignorat? </p>\r\n\r\n<dl>\r\n	<dt><dfn>Haec dicuntur inconstantissime.</dfn></dt>\r\n	<dd>Superiores tres erant, quae esse possent, quarum est una sola defensa, eaque vehementer.</dd>\r\n	<dt><dfn>Moriatur, inquit.</dfn></dt>\r\n	<dd>Paupertas si malum est, mendicus beatus esse nemo potest, quamvis sit sapiens.</dd>\r\n</dl>\r\n\r\n\r\n<h3>Mihi, inquam, qui te id ipsum rogavi?</h3>\r\n\r\n<p>Respondent extrema primis, media utrisque, omnia omnibus. Utinam quidem dicerent alium alio beatiorem! Iam ruinas videres. Quid vero? <mark>Quid Zeno?</mark> </p>\r\n\r\n<ul>\r\n	<li>Illud quaero, quid ei, qui in voluptate summum bonum ponat, consentaneum sit dicere.</li>\r\n	<li>Quod idem cum vestri faciant, non satis magnam tribuunt inventoribus gratiam.</li>\r\n	<li>Quamquam id quidem licebit iis existimare, qui legerint.</li>\r\n</ul>\r\n\r\n\r\n<pre>Ut bacillum aliud est inflexum et incurvatum de industria,\r\naliud ita natum, sic ferarum natura non est illa quidem\r\ndepravata mala disciplina, sed natura sua.\r\n\r\nObscura, inquit, quaedam esse confiteor, nec tamen ab illis\r\nita dicuntur de industria, sed inest in rebus ipsis\r\nobscuritas.\r\n</pre>\r\n\r\n\r\n<ol>\r\n	<li>Summum a vobis bonum voluptas dicitur.</li>\r\n	<li>Negat enim summo bono afferre incrementum diem.</li>\r\n	<li>Eiuro, inquit adridens, iniquum, hac quidem de re;</li>\r\n	<li>Quamquam te quidem video minime esse deterritum.</li>\r\n</ol>\r\n\r\n\r\n', 3, 3, 12, 2, 1, 0, '2021-04-28 00:39:50', '2021-04-28 00:39:50', '2021-05-28 00:39:50', 3, NULL),
(23, 1, 'Scripsit enim et multise21', 'Phoenix', '1233.23', 2, 2, '02b2a0800bea5eba02468920ffcf7a9f1619563071.jpg|9decbde481a08e51b65f689e2f5f48c71619563071.jpg|953fe3ff827831a0bf7c0457e8fa09861619563071.jpg|kupatilo 11619563071.jpg', '', '<h1>Vitiosum est enim in dividendo partem in genere numerare.</h1>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Est, ut dicis, inquit; <a href=\"http://loripsum.net/\" target=\"_blank\">Ego vero isti, inquam, permitto.</a> <i>Putabam equidem satis, inquit, me dixisse.</i> Sed in rebus apertissimis nimium longi sumus. </p>\r\n\r\n<ul>\r\n	<li>Hi curatione adhibita levantur in dies, valet alter plus cotidie, alter videt.</li>\r\n	<li>Omnes enim iucundum motum, quo sensus hilaretur.</li>\r\n	<li>Hoc est dicere: Non reprehenderem asotos, si non essent asoti.</li>\r\n</ul>\r\n\r\n\r\n<ol>\r\n	<li>Quod si ita est, sequitur id ipsum, quod te velle video, omnes semper beatos esse sapientes.</li>\r\n	<li>Sed haec nihil sane ad rem;</li>\r\n	<li>At quanta conantur! Mundum hunc omnem oppidum esse nostrum! Incendi igitur eos, qui audiunt, vides.</li>\r\n	<li>Hoc loco discipulos quaerere videtur, ut, qui asoti esse velint, philosophi ante fiant.</li>\r\n	<li>Indicant pueri, in quibus ut in speculis natura cernitur.</li>\r\n	<li>Si alia sentit, inquam, alia loquitur, numquam intellegam quid sentiat;</li>\r\n</ol>\r\n\r\n\r\n<pre>Haec ego non possum dicere non esse hominis quamvis et belli\r\net humani, sapientis vero nullo modo, physici praesertim,\r\nquem se ille esse vult, putare ullum esse cuiusquam diem\r\nnatalem.\r\n\r\nLicet hic rursus ea commemores, quae optimis verbis ab\r\nEpicuro de laude amicitiae dicta sunt.\r\n</pre>\r\n\r\n\r\n<p>Duo Reges: constructio interrete. Eademne, quae restincta siti? <b>Restatis igitur vos;</b> Facillimum id quidem est, inquam. Et quod est munus, quod opus sapientiae? <a href=\"http://loripsum.net/\" target=\"_blank\">Prioris generis est docilitas, memoria;</a> </p>\r\n\r\n<blockquote cite=\"http://loripsum.net\">\r\n	Scripsit enim et multis saepe verbis et breviter arteque in eo libro, quem modo nominavi, mortem nihil ad nos pertinere.\r\n</blockquote>\r\n\r\n\r\n<h2>Ut id aliis narrare gestiant?</h2>\r\n\r\n<p>Non potes, nisi retexueris illa. Id mihi magnum videtur. Id est enim, de quo quaerimus. Aperiendum est igitur, quid sit voluptas; <a href=\"http://loripsum.net/\" target=\"_blank\">Nam Pyrrho, Aristo, Erillus iam diu abiecti.</a> </p>\r\n\r\n<dl>\r\n	<dt><dfn>Perge porro;</dfn></dt>\r\n	<dd>Hoc ipsum elegantius poni meliusque potuit.</dd>\r\n	<dt><dfn>At coluit ipse amicitias.</dfn></dt>\r\n	<dd>Idem iste, inquam, de voluptate quid sentit?</dd>\r\n	<dt><dfn>Ut pulsi recurrant?</dfn></dt>\r\n	<dd>Cum ageremus, inquit, vitae beatum et eundem supremum diem, scribebamus haec.</dd>\r\n</dl>\r\n\r\n\r\n', 2, 4, 111, 1, 3, 1, '2021-04-28 00:37:51', '2021-04-28 00:37:51', '2021-05-28 00:37:51', 3, NULL);
INSERT INTO `ads` (`id`, `active`, `title`, `location`, `price`, `price_type_id`, `currency_id`, `images`, `youtube_link`, `description`, `condition_id`, `sub_category_id`, `amount`, `sending_id`, `payment_id`, `free_delivery`, `created_at`, `updated_at`, `expires_at`, `user_id`, `slug`) VALUES
(24, 1, 'A asdA  ltis saepe verbis  2 ', 'Chicago', '233.33', 3, 1, '02b2a0800bea5eba02468920ffcf7a9f1619563138.jpg|9decbde481a08e51b65f689e2f5f48c71619563138.jpg|953fe3ff827831a0bf7c0457e8fa09861619563138.jpg|12671798_818011141677953_8612666938672366883_o1619563138.jpg|12671798_818011141677953_8612666938672366883_o1619563138.jpg', '', '<h1>Et ais, si una littera commota sit, fore tota ut labet disciplina.</h1>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. An quod ita callida est, ut optime possit architectari voluptates? Nihilo beatiorem esse Metellum quam Regulum. Duo Reges: constructio interrete. <i>Illi enim inter se dissentiunt.</i> <b>Quo tandem modo?</b> <a href=\"http://loripsum.net/\" target=\"_blank\">Audeo dicere, inquit.</a> Tum Quintus: Est plane, Piso, ut dicis, inquit. <code>Non igitur bene.</code> </p>\r\n\r\n<blockquote cite=\"http://loripsum.net\">\r\n	Huc et illuc, Torquate, vos versetis licet, nihil in hac praeclara epistula scriptum ab Epicuro congruens et conveniens decretis eius reperietis.\r\n</blockquote>\r\n\r\n\r\n<h2>An hoc usque quaque, aliter in vita?</h2>\r\n\r\n<p>Fortemne possumus dicere eundem illum Torquatum? Quorum sine causa fieri nihil putandum est. Quod quidem nobis non saepe contingit. Istam voluptatem, inquit, Epicurus ignorat? </p>\r\n\r\n<dl>\r\n	<dt><dfn>Haec dicuntur inconstantissime.</dfn></dt>\r\n	<dd>Superiores tres erant, quae esse possent, quarum est una sola defensa, eaque vehementer.</dd>\r\n	<dt><dfn>Moriatur, inquit.</dfn></dt>\r\n	<dd>Paupertas si malum est, mendicus beatus esse nemo potest, quamvis sit sapiens.</dd>\r\n</dl>\r\n\r\n\r\n<h3>Mihi, inquam, qui te id ipsum rogavi?</h3>\r\n\r\n<p>Respondent extrema primis, media utrisque, omnia omnibus. Utinam quidem dicerent alium alio beatiorem! Iam ruinas videres. Quid vero? <mark>Quid Zeno?</mark> </p>\r\n\r\n<ul>\r\n	<li>Illud quaero, quid ei, qui in voluptate summum bonum ponat, consentaneum sit dicere.</li>\r\n	<li>Quod idem cum vestri faciant, non satis magnam tribuunt inventoribus gratiam.</li>\r\n	<li>Quamquam id quidem licebit iis existimare, qui legerint.</li>\r\n</ul>\r\n\r\n\r\n<pre>Ut bacillum aliud est inflexum et incurvatum de industria,\r\naliud ita natum, sic ferarum natura non est illa quidem\r\ndepravata mala disciplina, sed natura sua.\r\n\r\nObscura, inquit, quaedam esse confiteor, nec tamen ab illis\r\nita dicuntur de industria, sed inest in rebus ipsis\r\nobscuritas.\r\n</pre>\r\n\r\n\r\n<ol>\r\n	<li>Summum a vobis bonum voluptas dicitur.</li>\r\n	<li>Negat enim summo bono afferre incrementum diem.</li>\r\n	<li>Eiuro, inquit adridens, iniquum, hac quidem de re;</li>\r\n	<li>Quamquam te quidem video minime esse deterritum.</li>\r\n</ol>\r\n\r\n\r\n', 2, 5, 44, 1, 1, 0, '2021-04-28 00:38:58', '2021-04-28 00:38:58', '2021-05-28 00:38:58', 3, NULL),
(25, 1, 'A asdA  ltis saepe verbis  2 ', 'Chicago', '233.33', 3, 1, '02b2a0800bea5eba02468920ffcf7a9f1619563138.jpg|9decbde481a08e51b65f689e2f5f48c71619563138.jpg|953fe3ff827831a0bf7c0457e8fa09861619563138.jpg|12671798_818011141677953_8612666938672366883_o1619563138.jpg|12671798_818011141677953_8612666938672366883_o1619563138.jpg', '', '<h1>Et ais, si una littera commota sit, fore tota ut labet disciplina.</h1>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. An quod ita callida est, ut optime possit architectari voluptates? Nihilo beatiorem esse Metellum quam Regulum. Duo Reges: constructio interrete. <i>Illi enim inter se dissentiunt.</i> <b>Quo tandem modo?</b> <a href=\"http://loripsum.net/\" target=\"_blank\">Audeo dicere, inquit.</a> Tum Quintus: Est plane, Piso, ut dicis, inquit. <code>Non igitur bene.</code> </p>\r\n\r\n<blockquote cite=\"http://loripsum.net\">\r\n	Huc et illuc, Torquate, vos versetis licet, nihil in hac praeclara epistula scriptum ab Epicuro congruens et conveniens decretis eius reperietis.\r\n</blockquote>\r\n\r\n\r\n<h2>An hoc usque quaque, aliter in vita?</h2>\r\n\r\n<p>Fortemne possumus dicere eundem illum Torquatum? Quorum sine causa fieri nihil putandum est. Quod quidem nobis non saepe contingit. Istam voluptatem, inquit, Epicurus ignorat? </p>\r\n\r\n<dl>\r\n	<dt><dfn>Haec dicuntur inconstantissime.</dfn></dt>\r\n	<dd>Superiores tres erant, quae esse possent, quarum est una sola defensa, eaque vehementer.</dd>\r\n	<dt><dfn>Moriatur, inquit.</dfn></dt>\r\n	<dd>Paupertas si malum est, mendicus beatus esse nemo potest, quamvis sit sapiens.</dd>\r\n</dl>\r\n\r\n\r\n<h3>Mihi, inquam, qui te id ipsum rogavi?</h3>\r\n\r\n<p>Respondent extrema primis, media utrisque, omnia omnibus. Utinam quidem dicerent alium alio beatiorem! Iam ruinas videres. Quid vero? <mark>Quid Zeno?</mark> </p>\r\n\r\n<ul>\r\n	<li>Illud quaero, quid ei, qui in voluptate summum bonum ponat, consentaneum sit dicere.</li>\r\n	<li>Quod idem cum vestri faciant, non satis magnam tribuunt inventoribus gratiam.</li>\r\n	<li>Quamquam id quidem licebit iis existimare, qui legerint.</li>\r\n</ul>\r\n\r\n\r\n<pre>Ut bacillum aliud est inflexum et incurvatum de industria,\r\naliud ita natum, sic ferarum natura non est illa quidem\r\ndepravata mala disciplina, sed natura sua.\r\n\r\nObscura, inquit, quaedam esse confiteor, nec tamen ab illis\r\nita dicuntur de industria, sed inest in rebus ipsis\r\nobscuritas.\r\n</pre>\r\n\r\n\r\n<ol>\r\n	<li>Summum a vobis bonum voluptas dicitur.</li>\r\n	<li>Negat enim summo bono afferre incrementum diem.</li>\r\n	<li>Eiuro, inquit adridens, iniquum, hac quidem de re;</li>\r\n	<li>Quamquam te quidem video minime esse deterritum.</li>\r\n</ol>\r\n\r\n\r\n', 2, 5, 44, 1, 1, 0, '2021-04-28 00:38:58', '2021-04-28 00:38:58', '2021-05-28 00:38:58', 3, NULL),
(26, 1, 'Quamquam te quidem video minime esse deterritum.', 'California', '566.77', 2, 3, '02b2a0800bea5eba02468920ffcf7a9f1619563190.jpg|9decbde481a08e51b65f689e2f5f48c71619563190.jpg|953fe3ff827831a0bf7c0457e8fa09861619563190.jpg|953fe3ff827831a0bf7c0457e8fa09861619563190.jpg', '', '<h1>Et ais, si una littera commota sit, fore tota ut labet disciplina.</h1>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. An quod ita callida est, ut optime possit architectari voluptates? Nihilo beatiorem esse Metellum quam Regulum. Duo Reges: constructio interrete. <i>Illi enim inter se dissentiunt.</i> <b>Quo tandem modo?</b> <a href=\"http://loripsum.net/\" target=\"_blank\">Audeo dicere, inquit.</a> Tum Quintus: Est plane, Piso, ut dicis, inquit. <code>Non igitur bene.</code> </p>\r\n\r\n<blockquote cite=\"http://loripsum.net\">\r\n	Huc et illuc, Torquate, vos versetis licet, nihil in hac praeclara epistula scriptum ab Epicuro congruens et conveniens decretis eius reperietis.\r\n</blockquote>\r\n\r\n\r\n<h2>An hoc usque quaque, aliter in vita?</h2>\r\n\r\n<p>Fortemne possumus dicere eundem illum Torquatum? Quorum sine causa fieri nihil putandum est. Quod quidem nobis non saepe contingit. Istam voluptatem, inquit, Epicurus ignorat? </p>\r\n\r\n<dl>\r\n	<dt><dfn>Haec dicuntur inconstantissime.</dfn></dt>\r\n	<dd>Superiores tres erant, quae esse possent, quarum est una sola defensa, eaque vehementer.</dd>\r\n	<dt><dfn>Moriatur, inquit.</dfn></dt>\r\n	<dd>Paupertas si malum est, mendicus beatus esse nemo potest, quamvis sit sapiens.</dd>\r\n</dl>\r\n\r\n\r\n<h3>Mihi, inquam, qui te id ipsum rogavi?</h3>\r\n\r\n<p>Respondent extrema primis, media utrisque, omnia omnibus. Utinam quidem dicerent alium alio beatiorem! Iam ruinas videres. Quid vero? <mark>Quid Zeno?</mark> </p>\r\n\r\n<ul>\r\n	<li>Illud quaero, quid ei, qui in voluptate summum bonum ponat, consentaneum sit dicere.</li>\r\n	<li>Quod idem cum vestri faciant, non satis magnam tribuunt inventoribus gratiam.</li>\r\n	<li>Quamquam id quidem licebit iis existimare, qui legerint.</li>\r\n</ul>\r\n\r\n\r\n<pre>Ut bacillum aliud est inflexum et incurvatum de industria,\r\naliud ita natum, sic ferarum natura non est illa quidem\r\ndepravata mala disciplina, sed natura sua.\r\n\r\nObscura, inquit, quaedam esse confiteor, nec tamen ab illis\r\nita dicuntur de industria, sed inest in rebus ipsis\r\nobscuritas.\r\n</pre>\r\n\r\n\r\n<ol>\r\n	<li>Summum a vobis bonum voluptas dicitur.</li>\r\n	<li>Negat enim summo bono afferre incrementum diem.</li>\r\n	<li>Eiuro, inquit adridens, iniquum, hac quidem de re;</li>\r\n	<li>Quamquam te quidem video minime esse deterritum.</li>\r\n</ol>\r\n\r\n\r\n', 3, 2, 12, 2, 1, 0, '2021-04-28 00:39:50', '2021-04-28 00:39:50', '2021-05-28 00:39:50', 3, NULL),
(27, 1, 'Quamquam te quidem video minime esse deterritum.', 'California', '566.77', 2, 3, '02b2a0800bea5eba02468920ffcf7a9f1619563190.jpg|9decbde481a08e51b65f689e2f5f48c71619563190.jpg|953fe3ff827831a0bf7c0457e8fa09861619563190.jpg|953fe3ff827831a0bf7c0457e8fa09861619563190.jpg', '', '<h1>Et ais, si una littera commota sit, fore tota ut labet disciplina.</h1>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. An quod ita callida est, ut optime possit architectari voluptates? Nihilo beatiorem esse Metellum quam Regulum. Duo Reges: constructio interrete. <i>Illi enim inter se dissentiunt.</i> <b>Quo tandem modo?</b> <a href=\"http://loripsum.net/\" target=\"_blank\">Audeo dicere, inquit.</a> Tum Quintus: Est plane, Piso, ut dicis, inquit. <code>Non igitur bene.</code> </p>\r\n\r\n<blockquote cite=\"http://loripsum.net\">\r\n	Huc et illuc, Torquate, vos versetis licet, nihil in hac praeclara epistula scriptum ab Epicuro congruens et conveniens decretis eius reperietis.\r\n</blockquote>\r\n\r\n\r\n<h2>An hoc usque quaque, aliter in vita?</h2>\r\n\r\n<p>Fortemne possumus dicere eundem illum Torquatum? Quorum sine causa fieri nihil putandum est. Quod quidem nobis non saepe contingit. Istam voluptatem, inquit, Epicurus ignorat? </p>\r\n\r\n<dl>\r\n	<dt><dfn>Haec dicuntur inconstantissime.</dfn></dt>\r\n	<dd>Superiores tres erant, quae esse possent, quarum est una sola defensa, eaque vehementer.</dd>\r\n	<dt><dfn>Moriatur, inquit.</dfn></dt>\r\n	<dd>Paupertas si malum est, mendicus beatus esse nemo potest, quamvis sit sapiens.</dd>\r\n</dl>\r\n\r\n\r\n<h3>Mihi, inquam, qui te id ipsum rogavi?</h3>\r\n\r\n<p>Respondent extrema primis, media utrisque, omnia omnibus. Utinam quidem dicerent alium alio beatiorem! Iam ruinas videres. Quid vero? <mark>Quid Zeno?</mark> </p>\r\n\r\n<ul>\r\n	<li>Illud quaero, quid ei, qui in voluptate summum bonum ponat, consentaneum sit dicere.</li>\r\n	<li>Quod idem cum vestri faciant, non satis magnam tribuunt inventoribus gratiam.</li>\r\n	<li>Quamquam id quidem licebit iis existimare, qui legerint.</li>\r\n</ul>\r\n\r\n\r\n<pre>Ut bacillum aliud est inflexum et incurvatum de industria,\r\naliud ita natum, sic ferarum natura non est illa quidem\r\ndepravata mala disciplina, sed natura sua.\r\n\r\nObscura, inquit, quaedam esse confiteor, nec tamen ab illis\r\nita dicuntur de industria, sed inest in rebus ipsis\r\nobscuritas.\r\n</pre>\r\n\r\n\r\n<ol>\r\n	<li>Summum a vobis bonum voluptas dicitur.</li>\r\n	<li>Negat enim summo bono afferre incrementum diem.</li>\r\n	<li>Eiuro, inquit adridens, iniquum, hac quidem de re;</li>\r\n	<li>Quamquam te quidem video minime esse deterritum.</li>\r\n</ol>\r\n\r\n\r\n', 3, 3, 12, 2, 1, 0, '2021-04-28 00:39:50', '2021-04-28 00:39:50', '2021-05-28 00:39:50', 3, NULL),
(28, 1, 'Scripsit enim et multis saepe verbis ', 'Phoenix', '1233.23', 1, 1, '02b2a0800bea5eba02468920ffcf7a9f1619563071.jpg|9decbde481a08e51b65f689e2f5f48c71619563071.jpg|953fe3ff827831a0bf7c0457e8fa09861619563071.jpg|kupatilo 11619563071.jpg', '', '<h1>Vitiosum est enim in dividendo partem in genere numerare.</h1>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Est, ut dicis, inquit; <a href=\"http://loripsum.net/\" target=\"_blank\">Ego vero isti, inquam, permitto.</a> <i>Putabam equidem satis, inquit, me dixisse.</i> Sed in rebus apertissimis nimium longi sumus. </p>\r\n\r\n<ul>\r\n	<li>Hi curatione adhibita levantur in dies, valet alter plus cotidie, alter videt.</li>\r\n	<li>Omnes enim iucundum motum, quo sensus hilaretur.</li>\r\n	<li>Hoc est dicere: Non reprehenderem asotos, si non essent asoti.</li>\r\n</ul>\r\n\r\n\r\n<ol>\r\n	<li>Quod si ita est, sequitur id ipsum, quod te velle video, omnes semper beatos esse sapientes.</li>\r\n	<li>Sed haec nihil sane ad rem;</li>\r\n	<li>At quanta conantur! Mundum hunc omnem oppidum esse nostrum! Incendi igitur eos, qui audiunt, vides.</li>\r\n	<li>Hoc loco discipulos quaerere videtur, ut, qui asoti esse velint, philosophi ante fiant.</li>\r\n	<li>Indicant pueri, in quibus ut in speculis natura cernitur.</li>\r\n	<li>Si alia sentit, inquam, alia loquitur, numquam intellegam quid sentiat;</li>\r\n</ol>\r\n\r\n\r\n<pre>Haec ego non possum dicere non esse hominis quamvis et belli\r\net humani, sapientis vero nullo modo, physici praesertim,\r\nquem se ille esse vult, putare ullum esse cuiusquam diem\r\nnatalem.\r\n\r\nLicet hic rursus ea commemores, quae optimis verbis ab\r\nEpicuro de laude amicitiae dicta sunt.\r\n</pre>\r\n\r\n\r\n<p>Duo Reges: constructio interrete. Eademne, quae restincta siti? <b>Restatis igitur vos;</b> Facillimum id quidem est, inquam. Et quod est munus, quod opus sapientiae? <a href=\"http://loripsum.net/\" target=\"_blank\">Prioris generis est docilitas, memoria;</a> </p>\r\n\r\n<blockquote cite=\"http://loripsum.net\">\r\n	Scripsit enim et multis saepe verbis et breviter arteque in eo libro, quem modo nominavi, mortem nihil ad nos pertinere.\r\n</blockquote>\r\n\r\n\r\n<h2>Ut id aliis narrare gestiant?</h2>\r\n\r\n<p>Non potes, nisi retexueris illa. Id mihi magnum videtur. Id est enim, de quo quaerimus. Aperiendum est igitur, quid sit voluptas; <a href=\"http://loripsum.net/\" target=\"_blank\">Nam Pyrrho, Aristo, Erillus iam diu abiecti.</a> </p>\r\n\r\n<dl>\r\n	<dt><dfn>Perge porro;</dfn></dt>\r\n	<dd>Hoc ipsum elegantius poni meliusque potuit.</dd>\r\n	<dt><dfn>At coluit ipse amicitias.</dfn></dt>\r\n	<dd>Idem iste, inquam, de voluptate quid sentit?</dd>\r\n	<dt><dfn>Ut pulsi recurrant?</dfn></dt>\r\n	<dd>Cum ageremus, inquit, vitae beatum et eundem supremum diem, scribebamus haec.</dd>\r\n</dl>\r\n\r\n\r\n', 1, 2, 12, 2, 1, 1, '2021-04-28 00:37:51', '2021-04-28 00:37:51', '2021-05-28 00:37:51', 3, NULL),
(29, 1, 'A asdA  ltis saepe verbis  2 ', 'Other', '233.33', 1, 3, '02b2a0800bea5eba02468920ffcf7a9f1619563138.jpg|9decbde481a08e51b65f689e2f5f48c71619563138.jpg|953fe3ff827831a0bf7c0457e8fa09861619563138.jpg|12671798_818011141677953_8612666938672366883_o1619563138.jpg|12671798_818011141677953_8612666938672366883_o1619563138.jpg', '', '<h1>Et ais, si una littera commota sit, fore tota ut labet disciplina.</h1>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. An quod ita callida est, ut optime possit architectari voluptates? Nihilo beatiorem esse Metellum quam Regulum. Duo Reges: constructio interrete. <i>Illi enim inter se dissentiunt.</i> <b>Quo tandem modo?</b> <a href=\"http://loripsum.net/\" target=\"_blank\">Audeo dicere, inquit.</a> Tum Quintus: Est plane, Piso, ut dicis, inquit. <code>Non igitur bene.</code> </p>\r\n\r\n<blockquote cite=\"http://loripsum.net\">\r\n	Huc et illuc, Torquate, vos versetis licet, nihil in hac praeclara epistula scriptum ab Epicuro congruens et conveniens decretis eius reperietis.\r\n</blockquote>\r\n\r\n\r\n<h2>An hoc usque quaque, aliter in vita?</h2>\r\n\r\n<p>Fortemne possumus dicere eundem illum Torquatum? Quorum sine causa fieri nihil putandum est. Quod quidem nobis non saepe contingit. Istam voluptatem, inquit, Epicurus ignorat? </p>\r\n\r\n<dl>\r\n	<dt><dfn>Haec dicuntur inconstantissime.</dfn></dt>\r\n	<dd>Superiores tres erant, quae esse possent, quarum est una sola defensa, eaque vehementer.</dd>\r\n	<dt><dfn>Moriatur, inquit.</dfn></dt>\r\n	<dd>Paupertas si malum est, mendicus beatus esse nemo potest, quamvis sit sapiens.</dd>\r\n</dl>\r\n\r\n\r\n<h3>Mihi, inquam, qui te id ipsum rogavi?</h3>\r\n\r\n<p>Respondent extrema primis, media utrisque, omnia omnibus. Utinam quidem dicerent alium alio beatiorem! Iam ruinas videres. Quid vero? <mark>Quid Zeno?</mark> </p>\r\n\r\n<ul>\r\n	<li>Illud quaero, quid ei, qui in voluptate summum bonum ponat, consentaneum sit dicere.</li>\r\n	<li>Quod idem cum vestri faciant, non satis magnam tribuunt inventoribus gratiam.</li>\r\n	<li>Quamquam id quidem licebit iis existimare, qui legerint.</li>\r\n</ul>\r\n\r\n\r\n<pre>Ut bacillum aliud est inflexum et incurvatum de industria,\r\naliud ita natum, sic ferarum natura non est illa quidem\r\ndepravata mala disciplina, sed natura sua.\r\n\r\nObscura, inquit, quaedam esse confiteor, nec tamen ab illis\r\nita dicuntur de industria, sed inest in rebus ipsis\r\nobscuritas.\r\n</pre>\r\n\r\n\r\n<ol>\r\n	<li>Summum a vobis bonum voluptas dicitur.</li>\r\n	<li>Negat enim summo bono afferre incrementum diem.</li>\r\n	<li>Eiuro, inquit adridens, iniquum, hac quidem de re;</li>\r\n	<li>Quamquam te quidem video minime esse deterritum.</li>\r\n</ol>\r\n\r\n\r\n', 3, 2, 1, 2, 3, 0, '2021-04-28 00:38:58', '2021-04-28 00:38:58', '2021-05-28 00:38:58', 3, NULL),
(31, 1, 'Scripsit enim et multise21', 'Other', '1233.23', 2, 2, '02b2a0800bea5eba02468920ffcf7a9f1619563071.jpg|9decbde481a08e51b65f689e2f5f48c71619563071.jpg|953fe3ff827831a0bf7c0457e8fa09861619563071.jpg|kupatilo 11619563071.jpg', '', '<h1>Vitiosum est enim in dividendo partem in genere numerare.</h1>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Est, ut dicis, inquit; <a href=\"http://loripsum.net/\" target=\"_blank\">Ego vero isti, inquam, permitto.</a> <i>Putabam equidem satis, inquit, me dixisse.</i> Sed in rebus apertissimis nimium longi sumus. </p>\r\n\r\n<ul>\r\n	<li>Hi curatione adhibita levantur in dies, valet alter plus cotidie, alter videt.</li>\r\n	<li>Omnes enim iucundum motum, quo sensus hilaretur.</li>\r\n	<li>Hoc est dicere: Non reprehenderem asotos, si non essent asoti.</li>\r\n</ul>\r\n\r\n\r\n<ol>\r\n	<li>Quod si ita est, sequitur id ipsum, quod te velle video, omnes semper beatos esse sapientes.</li>\r\n	<li>Sed haec nihil sane ad rem;</li>\r\n	<li>At quanta conantur! Mundum hunc omnem oppidum esse nostrum! Incendi igitur eos, qui audiunt, vides.</li>\r\n	<li>Hoc loco discipulos quaerere videtur, ut, qui asoti esse velint, philosophi ante fiant.</li>\r\n	<li>Indicant pueri, in quibus ut in speculis natura cernitur.</li>\r\n	<li>Si alia sentit, inquam, alia loquitur, numquam intellegam quid sentiat;</li>\r\n</ol>\r\n\r\n\r\n<pre>Haec ego non possum dicere non esse hominis quamvis et belli\r\net humani, sapientis vero nullo modo, physici praesertim,\r\nquem se ille esse vult, putare ullum esse cuiusquam diem\r\nnatalem.\r\n\r\nLicet hic rursus ea commemores, quae optimis verbis ab\r\nEpicuro de laude amicitiae dicta sunt.\r\n</pre>\r\n\r\n\r\n<p>Duo Reges: constructio interrete. Eademne, quae restincta siti? <b>Restatis igitur vos;</b> Facillimum id quidem est, inquam. Et quod est munus, quod opus sapientiae? <a href=\"http://loripsum.net/\" target=\"_blank\">Prioris generis est docilitas, memoria;</a> </p>\r\n\r\n<blockquote cite=\"http://loripsum.net\">\r\n	Scripsit enim et multis saepe verbis et breviter arteque in eo libro, quem modo nominavi, mortem nihil ad nos pertinere.\r\n</blockquote>\r\n\r\n\r\n<h2>Ut id aliis narrare gestiant?</h2>\r\n\r\n<p>Non potes, nisi retexueris illa. Id mihi magnum videtur. Id est enim, de quo quaerimus. Aperiendum est igitur, quid sit voluptas; <a href=\"http://loripsum.net/\" target=\"_blank\">Nam Pyrrho, Aristo, Erillus iam diu abiecti.</a> </p>\r\n\r\n<dl>\r\n	<dt><dfn>Perge porro;</dfn></dt>\r\n	<dd>Hoc ipsum elegantius poni meliusque potuit.</dd>\r\n	<dt><dfn>At coluit ipse amicitias.</dfn></dt>\r\n	<dd>Idem iste, inquam, de voluptate quid sentit?</dd>\r\n	<dt><dfn>Ut pulsi recurrant?</dfn></dt>\r\n	<dd>Cum ageremus, inquit, vitae beatum et eundem supremum diem, scribebamus haec.</dd>\r\n</dl>\r\n\r\n\r\n', 2, 4, 111, 1, 3, 1, '2021-04-28 00:37:51', '2021-04-28 00:37:51', '2021-05-28 00:37:51', 3, NULL),
(32, 1, 'A asdA  ltis saepe verbis  2 ', 'Chicago', '233.33', 3, 1, '02b2a0800bea5eba02468920ffcf7a9f1619563138.jpg|9decbde481a08e51b65f689e2f5f48c71619563138.jpg|953fe3ff827831a0bf7c0457e8fa09861619563138.jpg|12671798_818011141677953_8612666938672366883_o1619563138.jpg|12671798_818011141677953_8612666938672366883_o1619563138.jpg', '', '<h1>Et ais, si una littera commota sit, fore tota ut labet disciplina.</h1>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. An quod ita callida est, ut optime possit architectari voluptates? Nihilo beatiorem esse Metellum quam Regulum. Duo Reges: constructio interrete. <i>Illi enim inter se dissentiunt.</i> <b>Quo tandem modo?</b> <a href=\"http://loripsum.net/\" target=\"_blank\">Audeo dicere, inquit.</a> Tum Quintus: Est plane, Piso, ut dicis, inquit. <code>Non igitur bene.</code> </p>\r\n\r\n<blockquote cite=\"http://loripsum.net\">\r\n	Huc et illuc, Torquate, vos versetis licet, nihil in hac praeclara epistula scriptum ab Epicuro congruens et conveniens decretis eius reperietis.\r\n</blockquote>\r\n\r\n\r\n<h2>An hoc usque quaque, aliter in vita?</h2>\r\n\r\n<p>Fortemne possumus dicere eundem illum Torquatum? Quorum sine causa fieri nihil putandum est. Quod quidem nobis non saepe contingit. Istam voluptatem, inquit, Epicurus ignorat? </p>\r\n\r\n<dl>\r\n	<dt><dfn>Haec dicuntur inconstantissime.</dfn></dt>\r\n	<dd>Superiores tres erant, quae esse possent, quarum est una sola defensa, eaque vehementer.</dd>\r\n	<dt><dfn>Moriatur, inquit.</dfn></dt>\r\n	<dd>Paupertas si malum est, mendicus beatus esse nemo potest, quamvis sit sapiens.</dd>\r\n</dl>\r\n\r\n\r\n<h3>Mihi, inquam, qui te id ipsum rogavi?</h3>\r\n\r\n<p>Respondent extrema primis, media utrisque, omnia omnibus. Utinam quidem dicerent alium alio beatiorem! Iam ruinas videres. Quid vero? <mark>Quid Zeno?</mark> </p>\r\n\r\n<ul>\r\n	<li>Illud quaero, quid ei, qui in voluptate summum bonum ponat, consentaneum sit dicere.</li>\r\n	<li>Quod idem cum vestri faciant, non satis magnam tribuunt inventoribus gratiam.</li>\r\n	<li>Quamquam id quidem licebit iis existimare, qui legerint.</li>\r\n</ul>\r\n\r\n\r\n<pre>Ut bacillum aliud est inflexum et incurvatum de industria,\r\naliud ita natum, sic ferarum natura non est illa quidem\r\ndepravata mala disciplina, sed natura sua.\r\n\r\nObscura, inquit, quaedam esse confiteor, nec tamen ab illis\r\nita dicuntur de industria, sed inest in rebus ipsis\r\nobscuritas.\r\n</pre>\r\n\r\n\r\n<ol>\r\n	<li>Summum a vobis bonum voluptas dicitur.</li>\r\n	<li>Negat enim summo bono afferre incrementum diem.</li>\r\n	<li>Eiuro, inquit adridens, iniquum, hac quidem de re;</li>\r\n	<li>Quamquam te quidem video minime esse deterritum.</li>\r\n</ol>\r\n\r\n\r\n', 2, 5, 44, 1, 1, 0, '2021-04-28 00:38:58', '2021-04-28 00:38:58', '2021-05-28 00:38:58', 3, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `title` varchar(211) NOT NULL,
  `slug` varchar(211) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `slug`) VALUES
(1, 'Category 1', 'category-1'),
(2, 'Category 2', 'category-2'),
(3, 'Category 3', 'çategory-3');

-- --------------------------------------------------------

--
-- Table structure for table `conditions`
--

CREATE TABLE `conditions` (
  `id` int(11) NOT NULL,
  `title` varchar(211) NOT NULL,
  `skug` varchar(211) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `conditions`
--

INSERT INTO `conditions` (`id`, `title`, `skug`) VALUES
(1, 'New', 'new'),
(2, 'Unused', 'Unused'),
(3, 'Used', 'used'),
(4, 'Out of order', 'out-of-order'),
(5, 'Collectors item', 'collectors-item');

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` int(11) NOT NULL,
  `title` varchar(211) NOT NULL,
  `slug` varchar(211) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `title`, `slug`) VALUES
(1, 'Euro', 'EUR'),
(2, 'Australian dollar', 'AUD'),
(3, 'Serbian dinar', 'RSD');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `ad_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `ad_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 9, 3, '2022-03-27 15:19:53', '2022-03-27 15:19:53'),
(2, 9, 3, '2022-03-27 15:20:51', '2022-03-27 15:20:51'),
(3, 13, 3, '2022-03-29 13:06:35', '2022-03-29 13:06:35'),
(4, 10, 3, '2022-06-11 21:34:25', '2022-06-11 21:34:25');

-- --------------------------------------------------------

--
-- Table structure for table `payment_methods`
--

CREATE TABLE `payment_methods` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(211) NOT NULL,
  `slug` varchar(211) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment_methods`
--

INSERT INTO `payment_methods` (`id`, `title`, `slug`) VALUES
(1, 'Cash on delivery', 'cash-on-delivery'),
(2, 'Before sending', 'Before-sending'),
(3, 'Personally', 'personally');

-- --------------------------------------------------------

--
-- Table structure for table `price_types`
--

CREATE TABLE `price_types` (
  `id` int(11) NOT NULL,
  `title` varchar(211) NOT NULL,
  `slug` varchar(211) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `price_types`
--

INSERT INTO `price_types` (`id`, `title`, `slug`) VALUES
(1, 'Agreement\n', 'Agreement\n'),
(2, 'Contact', 'contact'),
(3, 'Call in', 'call-in'),
(4, 'Free', 'Free');

-- --------------------------------------------------------

--
-- Table structure for table `sending_methods`
--

CREATE TABLE `sending_methods` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(211) NOT NULL,
  `slug` varchar(211) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sending_methods`
--

INSERT INTO `sending_methods` (`id`, `title`, `slug`) VALUES
(1, 'Sending 1', 'sending-1'),
(2, 'Sending 2', 'sending-2'),
(3, 'Sending method 3', 'sending-method-3');

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(211) NOT NULL,
  `category_id` int(11) UNSIGNED NOT NULL,
  `slug` varchar(211) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `title`, `category_id`, `slug`) VALUES
(1, 'Sub category 1', 1, 'sub-category-1'),
(2, 'Sub category 2', 2, 'sub-category-2'),
(3, 'Sub category 3', 3, 'sub-category-3'),
(4, 'Sub category 4', 1, 'sub-category-4'),
(5, 'Sub category 5', 2, 'sub-category-5');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(211) NOT NULL,
  `last_name` varchar(211) NOT NULL,
  `state` varchar(211) NOT NULL,
  `city` varchar(211) NOT NULL,
  `postal_code` varchar(211) NOT NULL,
  `address` varchar(211) NOT NULL,
  `email` varchar(211) NOT NULL,
  `phone_number` varchar(211) NOT NULL,
  `password` varchar(211) NOT NULL,
  `banned` int(211) NOT NULL DEFAULT 0,
  `active` int(11) NOT NULL DEFAULT 1,
  `token` varchar(211) DEFAULT NULL,
  `is_admin` int(11) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `state`, `city`, `postal_code`, `address`, `email`, `phone_number`, `password`, `banned`, `active`, `token`, `is_admin`, `created_at`) VALUES
(3, 'Milan', 'Janković', 'Serbia', 'Niš', '18000', 'Branka Miljkovića 8', 'milanj31@gmail.com', '0629659932', '$2y$10$4f3Y8OBRsvkpQfOualKKSeUNKnm4W6ENvX3P5tPj6YQz4Ox3rOVDG', 0, 1, NULL, 0, '2021-04-06 22:56:11');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `ad_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ads`
--
ALTER TABLE `ads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `conditions`
--
ALTER TABLE `conditions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_methods`
--
ALTER TABLE `payment_methods`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `price_types`
--
ALTER TABLE `price_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sending_methods`
--
ALTER TABLE `sending_methods`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ads`
--
ALTER TABLE `ads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `conditions`
--
ALTER TABLE `conditions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `payment_methods`
--
ALTER TABLE `payment_methods`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `price_types`
--
ALTER TABLE `price_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sending_methods`
--
ALTER TABLE `sending_methods`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

CREATE TABLE IF NOT EXISTS `queue_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `time` char(26) DEFAULT NULL,
  `callid` varchar(32) NOT NULL DEFAULT '',
  `queuename` varchar(32) NOT NULL DEFAULT '',
  `agent` varchar(32) NOT NULL DEFAULT '',
  `event` varchar(32) NOT NULL DEFAULT '',
  `data` varchar(100) NOT NULL DEFAULT '',
  `data1` varchar(100) NOT NULL DEFAULT '',
  `data2` varchar(100) NOT NULL DEFAULT '',
  `data3` varchar(100) NOT NULL DEFAULT '',
  `data4` varchar(100) NOT NULL DEFAULT '',
  `data5` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `event` (`event`),
  KEY `ib1` (`agent`,`queuename`),
  KEY `callid_idx` (`callid`)
) DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `queue_log_history` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `time` char(26) DEFAULT NULL,
  `callid` varchar(32) NOT NULL DEFAULT '',
  `queuename` varchar(32) NOT NULL DEFAULT '',
  `agent` varchar(32) NOT NULL DEFAULT '',
  `event` varchar(32) NOT NULL DEFAULT '',
  `data` varchar(100) NOT NULL DEFAULT '',
  `data1` varchar(100) NOT NULL DEFAULT '',
  `data2` varchar(100) NOT NULL DEFAULT '',
  `data3` varchar(100) NOT NULL DEFAULT '',
  `data4` varchar(100) NOT NULL DEFAULT '',
  `data5` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `event` (`event`),
  KEY `ib1` (`agent`,`queuename`),
  KEY `callid_idx` (`callid`)
) DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS zone;
CREATE TABLE zone (
  prefisso varchar(6) NOT NULL default '0',
  comune varchar(30) NOT NULL default '0',
  siglaprov varchar(4) NOT NULL default '0',
  provincia varchar(30) NOT NULL default '0',
  regione varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO zone VALUES ('001242','Bahamas','','Bahamas','Bahamas'),('001246','Barbados','','Barbados','Barbados'),('001264','Anguilla','','Anguilla','Anguilla'),('001268','Antigua e Barbuda','','Antigua e Barbuda','Antigua e Barbuda'),('001284','Isole Vergini Britanniche','','Isole Vergini Britanniche','Isole Vergini Britanniche'),('001345','Isole Cayman','','Isole Cayman','Isole Cayman'),('001441','Bermuda','','Bermuda','Bermuda'),('001473','Grenada','','Grenada','Grenada'),('001649','Isole Turks e Caicos','','Isole Turks e Caicos','Isole Turks e Caicos'),('001664','Montserrat','','Montserrat','Montserrat'),('001721','Sint Maarten','','Sint Maarten','Sint Maarten'),('001758','Santa Lucia','','Santa Lucia','Santa Lucia'),('001767','Dominica','','Dominica','Dominica'),('001784','Saint Vincent e le Grenadine','','Saint Vincent e le Grenadine','Saint Vincent e le Grenadine'),('001809','Repubblica Dominicana','','Repubblica Dominicana','Repubblica Dominicana'),('001829','Repubblica Dominicana','','Repubblica Dominicana','Repubblica Dominicana'),('001849','Repubblica Dominicana','','Repubblica Dominicana','Repubblica Dominicana'),('001868','Trinidad e Tobago','','Trinidad e Tobago','Trinidad e Tobago'),('001869','Saint Kitts e Nevis','','Saint Kitts e Nevis','Saint Kitts e Nevis'),('001876','Giamaica','','Giamaica','Giamaica'),('0020','Egitto','','Egitto','Egitto'),('00210','Marocco','','Marocco','Marocco'),('00212','Marocco','','Marocco','Marocco'),('00211','Sudan del Sud','','Sudan del Sud','Sudan del Sud'),('00213','Algeria','','Algeria','Algeria'),('00214','Algeria','','Algeria','Algeria'),('00215','Algeria','','Algeria','Algeria'),('00216','Tunisia','','Tunisia','Tunisia'),('00217','Tunisia','','Tunisia','Tunisia'),('00218','Libia','','Libia','Libia'),('00219','Libia','','Libia','Libia'),('00220','Gambia','','Gambia','Gambia'),('00221','Senegal','','Senegal','Senegal'),('00222','Mauritania','','Mauritania','Mauritania'),('00223','Mali','','Mali','Mali'),('00224','Guinea','','Guinea','Guinea'),('00225','Costa Avorio','','Costa Avorio','Costa Avorio'),('00226','Burkina Faso','','Burkina Faso','Burkina Faso'),('00227','Niger','','Niger','Niger'),('00228','Togo','','Togo','Togo'),('00229','Benin','','Benin','Benin'),('00230','Mauritius','','Mauritius','Mauritius'),('00231','Liberia','','Liberia','Liberia'),('00232','Sierra Leone','','Sierra Leone','Sierra Leone'),('00233','Ghana','','Ghana','Ghana'),('00234','Nigeria','','Nigeria','Nigeria'),('00235','Ciad','','Ciad','Ciad'),('00236','Repubblica Centrafricana','','Repubblica Centrafricana','Repubblica Centrafricana'),('00237','Camerun','','Camerun','Camerun'),('00238','Capo Verde','','Capo Verde','Capo Verde'),('00239','Sao Tome e Principe','','Sao Tome e Principe','Sao Tome e Principe'),('00240','Guinea Equatoriale','','Guinea Equatoriale','Guinea Equatoriale'),('00241','Gabon','','Gabon','Gabon'),('00242','Repubblica del Congo','','Repubblica del Congo','Repubblica del Congo'),('00243','Repubblica Democratica del Congo','','Repubblica Democratica del Congo','Repubblica Democratica del Congo'),('00244','Angola','','Angola','Angola'),('00245','Guinea-Bissau','','Guinea-Bissau','Guinea-Bissau'),('00246','Diego Garcia','','Diego Garcia','Diego Garcia'),('00247','Isola Ascensione','','Isola Ascensione','Isola Ascensione'),('00248','Seychelles','','Seychelles','Seychelles'),('00249','Sudan','','Sudan','Sudan'),('00250','Ruanda','','Ruanda','Ruanda'),('00251','Etiopia','','Etiopia','Etiopia'),('00252','Somalia','','Somalia','Somalia'),('00253','Gibuti','','Gibuti','Gibuti'),('00254','Kenia','','Kenia','Kenia'),('00255','Tanzania','','Tanzania','Tanzania'),('00256','Uganda','','Uganda','Uganda'),('00257','Burundi','','Burundi','Burundi'),('00258','Mozambico','','Mozambico','Mozambico'),('00260','Zambia','','Zambia','Zambia'),('00261','Madagascar','','Madagascar','Madagascar'),('00263','Zimbabwe','','Zimbabwe','Zimbabwe'),('00264','Namibia','','Namibia','Namibia'),('00265','Malawi','','Malawi','Malawi'),('00266','Lesotho','','Lesotho','Lesotho'),('00267','Botswana','','Botswana','Botswana'),('00268','Swaziland','','Swaziland','Swaziland'),('00269','Comore e Mayotte','','Comore e Mayotte','Comore e Mayotte'),('0027','Sudafrica','','Sudafrica','Sudafrica'),('00290','Sant Elena','','Sant Elena','Sant Elena'),('00291','Eritrea','','Eritrea','Eritrea'),('00297','Aruba','','Aruba','Aruba'),('00299','Groenlandia','','Groenlandia','Groenlandia'),('0030','Grecia','','Grecia','Grecia'),('0031','Paesi Bassi','','Paesi Bassi','Paesi Bassi'),('0032','Belgio','','Belgio','Belgio'),('0033','Francia','','Francia','Francia'),('0034','Spagna','','Spagna','Spagna'),('00350','Gibilterra','','Gibilterra','Gibilterra'),('00351','Portogallo','','Portogallo','Portogallo'),('00352','Lussemburgo','','Lussemburgo','Lussemburgo'),('00353','Irlanda','','Irlanda','Irlanda'),('00354','Islanda','','Islanda','Islanda'),('00355','Albania','','Albania','Albania'),('00356','Malta','','Malta','Malta'),('00357','Cipro','','Cipro','Cipro'),('00358','Finlandia','','Finlandia','Finlandia'),('00359','Bulgaria','','Bulgaria','Bulgaria'),('0036','Ungheria','','Ungheria','Ungheria'),('00370','Lituania','','Lituania','Lituania'),('00371','Lettonia','','Lettonia','Lettonia'),('00372','Estonia','','Estonia','Estonia'),('00373','Moldavia','','Moldavia','Moldavia'),('00374','Armenia','','Armenia','Armenia'),('00375','Bielorussia','','Bielorussia','Bielorussia'),('00376','Andorra','','Andorra','Andorra'),('00377','Monaco','','Monaco','Monaco'),('00378','San Marino','','San Marino','San Marino'),('00380','Ucraina','','Ucraina','Ucraina'),('00381','Serbia','','Serbia','Serbia'),('00382','Montenegro','','Montenegro','Montenegro'),('00385','Croazia','','Croazia','Croazia'),('00386','Slovenia','','Slovenia','Slovenia'),('00387','Bosnia ed Erzegovina','','Bosnia ed Erzegovina','Bosnia ed Erzegovina'),('00389','Macedonia','','Macedonia','Macedonia'),('0040','Romania','','Romania','Romania'),('0041','Svizzera','','Svizzera','Svizzera'),('00420','Repubblica Ceca','','Repubblica Ceca','Repubblica Ceca'),('00421','Slovacchia','','Slovacchia','Slovacchia'),('00423','Liechtenstein','','Liechtenstein','Liechtenstein'),('0043','Austria','','Austria','Austria'),('0044','Regno Unito','','Regno Unito','Regno Unito'),('0045','Danimarca','','Danimarca','Danimarca'),('0046','Svezia','','Svezia','Svezia'),('0047','Norvegia','','Norvegia','Norvegia'),('0048','Polonia','','Polonia','Polonia'),('0049','Germania','','Germania','Germania'),('00500','Isole Falkland','','Isole Falkland','Isole Falkland'),('00501','Belize','','Belize','Belize'),('00502','Guatemala','','Guatemala','Guatemala'),('00503','El Salvador','','El Salvador','El Salvador'),('00504','Honduras','','Honduras','Honduras'),('00505','Nicaragua','','Nicaragua','Nicaragua'),('00506','Costa Rica','','Costa Rica','Costa Rica'),('00507','Panama','','Panama','Panama'),('00508','Saint Pierre','','Saint Pierre','Saint Pierre'),('00509','Haiti','','Haiti','Haiti'),('0051','Peru','','Peru','Peru'),('0052','Messico','','Messico','Messico'),('0053','Cuba','','Cuba','Cuba'),('0054','Argentina','','Argentina','Argentina'),('0055','Brasile','','Brasile','Brasile'),('0056','Cile','','Cile','Cile'),('0057','Colombia','','Colombia','Colombia'),('0058','Venezuela','','Venezuela','Venezuela'),('00590','Guadalupa','','Guadalupa','Guadalupa'),('00591','Bolivia','','Bolivia','Bolivia'),('00592','Guyana','','Guyana','Guyana'),('00593','Ecuador','','Ecuador','Ecuador'),('00594','Guyana Francese','','Guyana Francese','Guyana Francese'),('00595','Paraguay','','Paraguay','Paraguay'),('00596','Martinica','','Martinica','Martinica'),('00597','Suriname','','Suriname','Suriname'),('00598','Uruguay','','Uruguay','Uruguay'),('0060','Malesia','','Malesia','Malesia'),('0061','Australia','','Australia','Australia'),('0062','Indonesia','','Indonesia','Indonesia'),('0063','Filippine','','Filippine','Filippine'),('0064','Nuova Zelanda','','Nuova Zelanda','Nuova Zelanda'),('0065','Singapore','','Singapore','Singapore'),('0066','Thailandia','','Thailandia','Thailandia'),('00673','Brunei','','Brunei','Brunei'),('00674','Nauru','','Nauru','Nauru'),('00675','Papua Nuova Guinea','','Papua Nuova Guinea','Papua Nuova Guinea'),('00676','Tonga','','Tonga','Tonga'),('00677','Isole Salomone','','Isole Salomone','Isole Salomone'),('00678','Vanuatu','','Vanuatu','Vanuatu'),('00679','Figi','','Figi','Figi'),('00680','Palau','','Palau','Palau'),('00681','Wallis e Futuna','','Wallis e Futuna','Wallis e Futuna'),('00682','Isole Cook','','Isole Cook','Isole Cook'),('00683','Niue','','Niue','Niue'),('00685','Samoa','','Samoa','Samoa'),('00686','Kiribati','','Kiribati','Kiribati'),('00687','Nuova Caledonia','','Nuova Caledonia','Nuova Caledonia'),('00688','Tuvalu','','Tuvalu','Tuvalu'),('00689','Polinesia Francese','','Polinesia Francese','Polinesia Francese'),('00690','Tokelau','','Tokelau','Tokelau'),('00691','Stati Federati di Micronesia','','Stati Federati di Micronesia','Stati Federati di Micronesia'),('00692','Isole Marshall','','Isole Marshall','Isole Marshall'),('007','Russia','','Russia','Russia'),('0081','Giappone','','Giappone','Giappone'),('0082','Corea del Sud','','Corea del Sud','Corea del Sud'),('0084','Vietnam','','Vietnam','Vietnam'),('00850','Corea del Nord','','Corea del Nord','Corea del Nord'),('00852','Hong Kong','','Hong Kong','Hong Kong'),('00853','Macao','','Macao','Macao'),('00855','Cambogia','','Cambogia','Cambogia'),('00856','Laos','','Laos','Laos'),('0086','Cina','','Cina','Cina'),('00880','Bangladesh','','Bangladesh','Bangladesh'),('00886','Taiwan','','Taiwan','Taiwan'),('0090','Turchia','','Turchia','Turchia'),('0091','India','','India','India'),('0092','Pakistan','','Pakistan','Pakistan'),('0093','Afghanistan','','Afghanistan','Afghanistan'),('0094','Sri Lanka','','Sri Lanka','Sri Lanka'),('0095','Myanmar','','Myanmar','Myanmar'),('00960','Maldive','','Maldive','Maldive'),('00961','Libano','','Libano','Libano'),('00962','Giordania','','Giordania','Giordania'),('00963','Siria','','Siria','Siria'),('00964','Iraq','','Iraq','Iraq'),('00965','Kuwait','','Kuwait','Kuwait'),('00966','Arabia Saudita','','Arabia Saudita','Arabia Saudita'),('00967','Yemen','','Yemen','Yemen'),('00968','Oman','','Oman','Oman'),('00970','Palestina','','Palestina','Palestina'),('00971','Emirati Arabi Uniti','','Emirati Arabi Uniti','Emirati Arabi Uniti'),('00972','Israele','','Israele','Israele'),('00973','Bahrain','','Bahrain','Bahrain'),('00974','Qatar','','Qatar','Qatar'),('00975','Bhutan','','Bhutan','Bhutan'),('00976','Mongolia','','Mongolia','Mongolia'),('00977','Nepal','','Nepal','Nepal'),('0098','Iran','','Iran','Iran'),('00992','Tagikistan','','Tagikistan','Tagikistan'),('00993','Turkmenistan','','Turkmenistan','Turkmenistan'),('00994','Azerbaigian','','Azerbaigian','Azerbaigian'),('00995','Georgia','','Georgia','Georgia'),('00996','Kirghizistan','','Kirghizistan','Kirghizistan'),('00998','Uzbekistan','','Uzbekistan','Uzbekistan'),('001','USA e Canada','','USA e Canada','USA e Canada'),('0144','Acqui Terme','AL','Alessandria','Piemonte'),('0426','Adria','RO','Rovigo','Veneto'),('0922','Agrigento','AG','Agrigento','Sicilia'),('0173','Alba','CN','Cuneo','Piemonte'),('0182','Albenga','SV','Savona','Liguria'),('0924','Alcamo','TP','Trapani','Sicilia'),('0131','Alessandria','AL','Alessandria','Piemonte'),('071','Ancona','AN','Ancona','Marche'),('0165','Aosta','AO','Aosta','Valle d\'Aosta'),('0575','Arezzo','AR','Arezzo','Toscana'),('0322','Arona','NO','Novara','Piemonte'),('0736','Ascoli Piceno','AP','Ascoli Piceno','Marche'),('0141','Asti','AT','Asti','Piemonte'),('0825','Avellino','AV','Avellino','Campania'),('0863','Avezzano','AQ','L\'Aquila','Abruzzo'),('080','Bari','BA','Bari','Puglia'),('0424','Bassano del Grappa','VI','Vicenza','Veneto'),('0828','Battipaglia','SA','Salerno','Campania'),('0323','Baveno','VB','Verbania','Piemonte'),('0437','Belluno','BL','Belluno','Veneto'),('0824','Benevento','BN','Benevento','Campania'),('035','Bergamo','BG','Bergamo','Lombardia'),('015','Biella','BI','Biella','Piemonte'),('051','Bologna','BO','Bologna','Emilia Romagna'),('0471','Bolzano','BZ','Bolzano','Trentino Alto Adige'),('0163','Borgosesia','VC','Vercelli','Piemonte'),('0364','Breno','BS','Brescia','Lombardia'),('030','Brescia','BS','Brescia','Lombardia'),('0472','Bressanone','BZ','Bolzano','Trentino Alto Adige'),('0831','Brindisi','BR','Brindisi','Puglia'),('0474','Brunico','BZ','Bolzano','Trentino Alto Adige'),('0331','Busto Arsizio','VA','Varese','Lombardia'),('070','Cagliari','CA','Cagliari','Sardegna'),('0933','Caltagirone','CT','Catania','Sicilia'),('0934','Caltanissetta','CL','Caltanissetta','Sicilia'),('0737','Camerino','MC','Macerata','Marche'),('0874','Campobasso','CB','Campobasso','Molise'),('0142','Casale Monferrato','AL','Alessandria','Piemonte'),('0375','Casalmaggiore','CR','Cremona','Lombardia'),('0823','Caserta','CE','Caserta','Campania'),('0776','Cassino','FR','Frosinone','Lazio'),('0981','Castrovillari','CS','Cosenza','Calabria'),('095','Catania','CT','Catania','Sicilia'),('0961','Catanzaro','CZ','Catanzaro','Calabria'),('0462','Cavalese','TN','Trento','Trentino Alto Adige'),('0921','CefalÃ¹','PA','Palermo','Sicilia'),('0885','Cerignola','FG','Foggia','Puglia'),('0431','Cervignano del Friuli','UD','Udine','Friuli Venezia Giulia'),('0547','Cesena','FC','Forlì Cesena','Emilia Romagna'),('0578','Chianciano Terme','SI','Siena','Toscana'),('0343','Chiavenna','SO','Sondrio','Lombardia'),('0871','Chieti','CH','Chieti','Abruzzo'),('0766','Civitavecchia','RM','Roma','Lazio'),('0463','Cles','TN','Trento','Trentino Alto Adige'),('0346','Clusone','BG','Bergamo','Lombardia'),('0377','Codogno','LO','Lodi','Lombardia'),('0533','Comacchio','FE','Ferrara','Emilia Romagna'),('031','Como','CO','Como','Lombardia'),('0438','Conegliano','TV','Treviso','Veneto'),('0436','Cortina dAmpezzo','BL','Belluno','Veneto'),('0984','Cosenza','CS','Cosenza','Calabria'),('0373','Crema','CR','Cremona','Lombardia'),('0372','Cremona','CR','Cremona','Lombardia'),('0962','Crotone','KR','Crotone','Calabria'),('0171','Cuneo','CN','Cuneo','Piemonte'),('0324','Domodossola','VB','Verbania','Piemonte'),('0571','Empoli','FI','Firenze','Toscana'),('0935','Enna','EN','Enna','Sicilia'),('0429','Este','PD','Padova','Veneto'),('0732','Fabriano','AN','Ancona','Marche'),('0546','Faenza','RA','Ravenna','Emilia Romagna'),('0439','Feltre','BL','Belluno','Veneto'),('0532','Ferrara','FE','Ferrara','Emilia Romagna'),('0524','Fidenza','PR','Parma','Emilia Romagna'),('055','Firenze','FI','Firenze','Toscana'),('0881','Foggia','FG','Foggia','Puglia'),('0742','Foligno','PG','Perugia','Umbria'),('0566','Follonica','GR','Grosseto','Toscana'),('0543','Forlì','FC','Forlì Cesena','Emilia Romagna'),('0771','Formia','LT','Latina','Lazio'),('0525','Fornovo di Taro','PR','Parma','Emilia Romagna'),('0775','Frosinone','FR','Frosinone','Lazio'),('0833','Gallipoli','LE','Lecce','Puglia'),('010','Genova','GE','Genova','Liguria'),('0481','Gorizia','GO','Gorizia','Friuli Venezia Giulia'),('0564','Grosseto','GR','Grosseto','Toscana'),('0781','Iglesias','CI','Carbonia Iglesias','Sardegna'),('0542','Imola','BO','Bologna','Emilia Romagna'),('0183','Imperia','IM','Imperia','Liguria'),('0865','Isernia','IS','Isernia','Molise'),('0125','Ivrea','TO','Torino','Piemonte'),('0731','Jesi','AN','Ancona','Marche'),('0862','Aquila','AQ','L\'Aquila','Abruzzo'),('0187','La Spezia','SP','La Spezia','Liguria'),('0973','Lagonegro','PZ','Potenza','Basilicata'),('0968','Lamezia Terme','CZ','Catanzaro','Calabria'),('0872','Lanciano','CH','Chieti','Abruzzo'),('0782','Lanusei','OG','Ogliastra','Sardegna'),('0123','Lanzo Torinese','TO','Torino','Piemonte'),('0773','Latina','LT','Latina','Lazio'),('0832','Lecce','LE','Lecce','Puglia'),('0341','Lecco','LC','Lecco','Lombardia'),('0442','Legnago','VR','Verona','Veneto'),('0586','Livorno','LI','Livorno','Toscana'),('0964','Locri','RC','Reggio Calabria','Calabria'),('0371','Lodi','LO','Lodi','Lombardia'),('0583','Lucca','LU','Lucca','Toscana'),('0545','Lugo','RA','Ravenna','Emilia Romagna'),('0733','Macerata','MC','Macerata','Marche'),('0785','Macomer','NU','Nuoro','Sardegna'),('0836','Maglie','LE','Lecce','Puglia'),('0884','Manfredonia','FG','Foggia','Puglia'),('0376','Mantova','MN','Mantova','Lombardia'),('0585','Massa','MS','Massa Carrara','Toscana'),('0835','Matera','MT','Matera','Basilicata'),('0972','Melfi','PZ','Potenza','Basilicata'),('0344','Menaggio','CO','Como','Lombardia'),('0473','Merano','BZ','Bolzano','Trentino Alto Adige'),('090','Messina','ME','Messina','Sicilia'),('02','Milano','MI','Milano','Lombardia'),('0535','Mirandola','MO','Modena','Emilia Romagna'),('059','Modena','MO','Modena','Emilia Romagna'),('0174','Mondovì','CN','Cuneo','Piemonte'),('0423','Montebelluna','TV','Treviso','Veneto'),('0572','Montecatini Terme','PT','Pistoia','Toscana'),('0384','Mortara','PV','Pavia','Lombardia'),('0976','Muro Lucano','PZ','Potenza','Basilicata'),('081','Napoli','NA','Napoli','Campania'),('0321','Novara','NO','Novara','Piemonte'),('0143','Novi Ligure','AL','Alessandria','Piemonte'),('0784','Nuoro','NU','Nuoro','Sardegna'),('0789','Olbia','OT','Olbia Tempio','Sardegna'),('0783','Oristano','OR','Oristano','Sardegna'),('0763','Orvieto','TR','Terni','Umbria'),('0386','Ostiglia','MN','Mantova','Lombardia'),('049','Padova','PD','Padova','Veneto'),('091','Palermo','PA','Palermo','Sicilia'),('0966','Palmi','RC','Reggio Calabria','Calabria'),('0982','Paola','CS','Cosenza','Calabria'),('0521','Parma','PR','Parma','Emilia Romagna'),('0941','Patti','ME','Messina','Sicilia'),('0382','Pavia','PV','Pavia','Lombardia'),('075','Perugia','PG','Perugia','Umbria'),('0721','Pesaro','PU','Pesaro Urbino','Marche'),('085','Pescara','PE','Pescara','Abruzzo'),('0523','Piacenza','PC','Piacenza','Emilia Romagna'),('0435','Pieve di Cadore','BL','Belluno','Veneto'),('0121','Pinerolo','TO','Torino','Piemonte'),('0565','Piombino','LI','Livorno','Toscana'),('050','Pisa','PI','Pisa','Toscana'),('0573','Pistoia','PT','Pistoia','Toscana'),('0765','Poggio Mirteto','RI','Rieti','Lazio'),('0587','Pontedera','PI','Pisa','Toscana'),('0434','Pordenone','PN','Pordenone','Friuli Venezia Giulia'),('0534','Porretta Terme','BO','Bologna','Emilia Romagna'),('0971','Potenza','PZ','Potenza','Basilicata'),('0574','Prato','PO','Prato','Toscana'),('0932','Ragusa','RG','Ragusa','Sicilia'),('0185','Rapallo','GE','Genova','Liguria'),('0544','Ravenna','RA','Ravenna','Emilia Romagna'),('0965','Reggio di Calabria','RC','Reggio Calabria','Calabria'),('0522','Reggio Emilia','RE','Reggio Emilia','Emilia Romagna'),('0746','Rieti','RI','Rieti','Lazio'),('0541','Rimini','RN','Rimini','Emilia Romagna'),('0124','Rivarolo Canavese','TO','Torino','Piemonte'),('06','Roma','RM','Roma','Lazio'),('0983','Rossano','CS','Cosenza','Calabria'),('0464','Rovereto','TN','Trento','Trentino Alto Adige'),('0425','Rovigo','RO','Rovigo','Veneto'),('0827','S.Angelo dei Lombardi','AV','Avellino','Campania'),('0735','S.Benedetto del Tronto','AP','Ascoli Piceno','Marche'),('0421','S.Donà di Piave','VE','Venezia','Veneto'),('0345','S.Pellegrino Terme','BG','Bergamo','Lombardia'),('0975','Sala Consilina','SA','Salerno','Campania'),('089','Salerno','SA','Salerno','Campania'),('0365','Salò','BS','Brescia','Lombardia'),('0175','Saluzzo','CN','Cuneo','Piemonte'),('0184','San Remo','IM','Imperia','Liguria'),('0882','San Severo','FG','Foggia','Puglia'),('079','Sassari','SS','Sassari','Sardegna'),('0536','Sassuolo','MO','Modena','Emilia Romagna'),('0172','Savigliano','CN','Cuneo','Piemonte'),('019','Savona','SV','Savona','Liguria'),('0985','Scalea','CS','Cosenza','Calabria'),('0445','Schio','VI','Vicenza','Veneto'),('0925','Sciacca','AG','Agrigento','Sicilia'),('0577','Siena','SI','Siena','Toscana'),('0931','Siracusa','SR','Siracusa','Sicilia'),('0342','Sondrio','SO','Sondrio','Lombardia'),('0374','Soresina','CR','Cremona','Lombardia'),('0967','Soverato','CZ','Catanzaro','Calabria'),('0427','Spilimbergo','PN','Pordenone','Friuli Venezia Giulia'),('0743','Spoleto','PG','Perugia','Umbria'),('0166','St.Vincent','AO','Aosta','Valle d\'Aosta'),('0385','Stradella','PV','Pavia','Lombardia'),('0864','Sulmona','AQ','L\'Aquila','Abruzzo'),('0122','Susa','TO','Torino','Piemonte'),('0942','Taormina','ME','Messina','Sicilia'),('099','Taranto','TA','Taranto','Puglia'),('0428','Tarvisio','UD','Udine','Friuli Venezia Giulia'),('0861','Teramo','TE','Teramo','Abruzzo'),('0875','Termoli','CB','Campobasso','Molise'),('0744','Terni','TR','Terni','Umbria'),('0465','Tione di Trento','TN','Trento','Trentino Alto Adige'),('0774','Tivoli','RM','Roma','Lazio'),('0433','Tolmezzo','UD','Udine','Friuli Venezia Giulia'),('011','Torino','TO','Torino','Piemonte'),('0923','Trapani','TP','Trapani','Sicilia'),('0461','Trento','TN','Trento','Trentino Alto Adige'),('0363','Treviglio','BG','Bergamo','Lombardia'),('0422','Treviso','TV','Treviso','Veneto'),('040','Trieste','TS','Trieste','Friuli Venezia Giulia'),('0432','Udine','UD','Udine','Friuli Venezia Giulia'),('0722','Urbino','PU','Pesaro Urbino','Marche'),('0974','Vallo della Lucania','SA','Salerno','Campania'),('0332','Varese','VA','Varese','Lombardia'),('0873','Vasto','CH','Chieti','Abruzzo'),('041','Venezia (Mestre)','VE','Venezia','Veneto'),('0161','Vercelli','VC','Vercelli','Piemonte'),('045','Verona','VR','Verona','Veneto'),('0584','Viareggio','LU','Lucca','Toscana'),('0963','Vibo Valentia','VV','Vibo Valentia','Calabria'),('0444','Vicenza','VI','Vicenza','Veneto'),('0381','Vigevano','PV','Pavia','Lombardia'),('0761','Viterbo','VT','Viterbo','Lazio'),('0383','Voghera','PV','Pavia','Lombardia'),('0588','Volterra','PI','Pisa','Toscana'),('3','Cellulari','','Cellulari','Cellulari');

CREATE TABLE IF NOT EXISTS report_queue (
    id int(11) unsigned NOT NULL,
    timestamp_out bigint(20),
    timestamp_in varchar(32) NOT NULL,
    qname varchar(32) NOT NULL,
    action varchar(32) NOT NULL,
    position bigint(21) unsigned NOT NULL DEFAULT 0,
    duration bigint(21) unsigned NOT NULL DEFAULT 0,
    hold bigint(21) unsigned NOT NULL DEFAULT 0,
    agent varchar(32) NOT NULL,
    cid varchar(100),
    qdescr varchar(35) NOT NULL,
    data4 bigint(21) unsigned NOT NULL DEFAULT 0,
    agents varchar(100) NOT NULL DEFAULT "",
    UNIQUE KEY `uid` (`id`,`timestamp_in`,`action`,`agent`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS report_queue_agents (
    id int(11) unsigned NOT NULL,
    timestamp_out bigint(20),
    timestamp_in varchar(32) NOT NULL,
    qname varchar(32) NOT NULL,
    action varchar(32) NOT NULL,
    position bigint(21) unsigned NOT NULL DEFAULT 0,
    duration bigint(21) unsigned NOT NULL DEFAULT 0,
    hold bigint(21) unsigned NOT NULL DEFAULT 0,
    agent varchar(32) NOT NULL,
    qdescr varchar(35) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS report_queue_callers (
    id int(11) unsigned NOT NULL,
    timestamp_out bigint(20),
    timestamp_in varchar(32) NOT NULL,
    qname varchar(32) NOT NULL,
    cid varchar(100),
    action varchar(32) NOT NULL,
    position bigint(21) unsigned NOT NULL DEFAULT 0,
    qdescr varchar(35) NOT NULL,
    prefisso varchar(6) DEFAULT 0,
    comune varchar(30) DEFAULT 0,
    siglaprov varchar(4) DEFAULT 0,
    provincia varchar(30) DEFAULT 0,
    regione varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS agentsessions (
    qname varchar(32) NOT NULL,
    agent varchar(32) NOT NULL,
    action varchar(5) NOT NULL,
    timestamp_in bigint(20),
    reason varchar(100) NOT NULL,
    timestamp_out bigint(20),
    qdescr varchar(35) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE if not exists ivr_choice (
  uniqueid varchar(32) NOT NULL default '0',
  timestamp_in varchar(32) NOT NULL default '0',
  cid_name varchar(80) NOT NULL default '0',
  cid_num varchar(80) NOT NULL default '0',
  ivr_id varchar(30) NOT NULL,
  ivr_name varchar(60) NOT NULL,
  choice varchar(10) NOT NULL,
  INDEX UNIQUEID_INDEX (uniqueid)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `queue_failed` (
  `cid` varchar(100) NOT NULL DEFAULT '',
  `name` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `company` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `action` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `time` INT(11) NOT NULL DEFAULT 0,
  `direction` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `qname` varchar(32) NOT NULL DEFAULT '',
  `event` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `cost_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `channelid` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `destination` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cost` FLOAT NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

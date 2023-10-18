import 'package:kaio/Culture/carouselpage.dart';
import 'package:kaio/MainScreens/Culture.dart';

List<carouselContainer> cultureCarousel = [
  carouselContainer(
    imagePath: 'assets/images/Culture/Main/language.png',
    NextPage: CarouselPage(
        imagePath: 'assets/images/Culture/Main/language.png',
        listname: 'Language'),
  ),
  carouselContainer(
      imagePath: 'assets/images/Culture/Main/religion.png',
      NextPage: CarouselPage(
          imagePath: 'assets/images/Culture/Main/religion.png',
          listname: 'Religion')),
  carouselContainer(
      imagePath: 'assets/images/Culture/Main/artscrafts.png',
      NextPage: CarouselPage(
          imagePath: 'assets/images/Culture/Main/artscrafts.png',
          listname: 'Arts & Craft')),
  carouselContainer(
      imagePath: 'assets/images/Culture/Main/customs.png',
      NextPage: CarouselPage(
          imagePath: 'assets/images/Culture/Main/customs.png',
          listname: 'Customs')),
  carouselContainer(
      imagePath: 'assets/images/Culture/Main/festivals.png',
      NextPage: CarouselPage(
          imagePath: 'assets/images/Culture/Main/festivals.png',
          listname: 'Festivals')),
  carouselContainer(
      imagePath: 'assets/images/Culture/Main/food.png',
      NextPage: CarouselPage(
          imagePath: 'assets/images/Culture/Main/food.png',
          listname: 'Food')),
  carouselContainer(
      imagePath: 'assets/images/Culture/Main/musicdance.png',
      NextPage: CarouselPage(
          imagePath: 'assets/images/Culture/Main/musicdance.png',
          listname: 'Music & Dance')),
];

List<Culturecard> language = [
  Culturecard(
    heading: 'Kashmiri ',
    description:
        'Kashmiri is the most widely spoken language in J&K with about 9 million speakers. Kashmiri is also the only Dardic language to be designated as an official language by the Indian Constitution, as one of the 22 scheduled languages. In the Chenab valley, Kashmiri is also the most spoken language.\nKashmiri has a strong Persian influence, particularly in vocabulary, despite being one of the most conservative Indo-Aryan languages.\nDardic languages include Kashmiri, Shina, and Khowar, which are spoken in J&K. In Kashmir, the Chenab Valley, and the Neelum Valley, Kashmiri is spoken. Gilgit, Kohistan, Gurez, and Drass all speak Shina. In Chitral, this is known as Khowar, and in Pakistan, it is known as GB.',
    imagePath: 'assets/images/Culture/Main/pages/kashmiri.webp',
  ),
  Culturecard(
      heading: 'Pahari',
      description:
          'Pahari languages are spoken throughout J&K, are the most diverse set of languages. Pahari languageS is a collective designation given to these languages by outsiders because speakers of these languages typically live in mountainous locations.\nDepending on the dialect, these languages are known by a number of names locally. However, the word Pahari is now widely used. Pahari languages spoken in J&K should not be confused with Pahari languages spoken in Uttarakhand (India), Nepal, and sections of Himachal Pradesh, as tHey are distinct.\nBhaderwahi, Padri, Ponchi, Mirpuri, Parmi, or Pahari are some of the distinct Pahari languages (Karnah). Depending on the distance, various Pahari languages show a strong impact of Kashmiri in certain locations and a strong influence of Punjabi in others. It is one of the most influential languages of Kashmir.\nPahari, Dogri, Hindko, Potwari, Seraiki, and Standard Punjabi are all related but not identical languages. In most regions of AJK, as well as in the Pir Panjal region of J&K, Pahari languages are spoken by the majority.\nPahari is also spoken in several isolated regions throughout Kashmir’s valley, such as Karnah and Uri. They are also spoken in several regions of Chenab Valley.',
      imagePath:
          'assets/images/Culture/Main/pages/pahari.png'),
  Culturecard(
      heading: 'Urdu',
      description:
          'Urdu is widely spoken and understood throughout the Kashmir valley, as well as in Pakistan-controlled Kashmir. In 1889, J&K declared Urdu to be a state and official language. For about three centuries before Urdu, Kashmir’s official language was Persian. All government records in Kashmir, including land, revenue, courts, and even FIRs, are written in Urdu.',
      imagePath: 'assets/images/Culture/Main/pages/urdu.gif'),
  Culturecard(
      heading: 'Gojri',
      description:
          'Gojri is spoken in isolated communities in J&K. Gujjars and Bakerwals are the main speakers. Remember that while many Gujjars identify with and follow Gojri culture, they do not all speak Gojri. Instead, they speak local prevalent languages.\nRajasthani languages are connected to Gojri, a western Indo-Aryan language. It has more in common with its surrounding Indo-Aryan languages, such as Hindko, Pahari, and Dogri, because it is spoken in locations where other languages are spoken.\nDue to the fact that these languages are already linked to it. As a result, a sprachbund is established. Gojri, on the other hand, has a lot in common with Rajasthani languages.\nGojri is spoken in both AJK and J&K, but its speakers do not constitute a majority in any bigger area. It is widely spoken in the Pir Panjal region, with enclaves in the Kashmir valley.',
      imagePath: 'assets/images/Culture/Main/pages/gojri.jpg')
];


List<Culturecard> religion= [
  Culturecard(
      heading: 'Islam',
      description:
          'The predominant religion of Kashmir valley is Islam. Muslims constitute more than 90% of the total population of Jammu and Kashmir. Even in Jammu, Kargil and some other districts, Islam forms a substantial part of the population. The Muslims are broadly divided into two sects - the Sunnis and the Shias.',
      imagePath: 'assets/images/Culture/Main/pages/islam.jpg'),
  Culturecard(
      heading: 'Hinduism',
      description:
          'Hinduism is the second most dominant faith in Kashmir. The majority of Hindus consist of Kashmiri Pandits and Gujjars. Majority of the Kashmiri Pandits migrated from the Kashmir valley because of the constant terror threat and are now present in a minority. On the other hand, many Gujjars converted to Islam.',
      imagePath: 'assets/images/Culture/Main/pages/hinduism.png'),
  Culturecard(
      heading: 'Buddhism',
      description:
          'The Buddhist population is mainly found in the Ladakh region of Kashmir, where it predominates. In the main Kashmir valley, however, Buddhists are present in a negligible numbers.',
      imagePath: 'assets/images/Culture/Main/pages/buddhism.webp'),
  Culturecard(
      heading: 'Sikhism',
      description:
          'Sikhs have a long and unbroken history in the valley of Kashmir, dating back to the time of Guru Nanak Sahib\'s travels to the region. On Their udasis (journeys of spiritual quest), Guru Sahib stayed in Kashmir before travelling on to Ladakh.The population of sikhs in the state is (1.9%).',
      imagePath: 'assets/images/Culture/Main/pages/sikhism.jpg'),
];
List<Culturecard> food= [
  Culturecard(
    heading: 'Staple Food',
    description:
        'Kashmiris have developed the art of cooking to a very high degree of sophistication and evolved a cuisine quite distinct from that of any part of the world. Rice is their staple food and has been so since ancient times. The equivalent for the phrase "bread and butter" in Kashmiri is haakh-batta (greens and rice). Meat along with rice, some vegetables and salad are prepared on special occasions like Eid.A typical everyday Kashmiri meal — lunch and dinner — consists of a generous serving of rice (about 250 gms), mutton (100 gms) and vegetables (about 100gms, mostly greens) cooked in oil, and yoghurt (50 to 250 gms).\nKashmiris consume meat voraciously. Kashmiri cuisine is of two distinct types — wazwan is the food of the Muslims, and the Pandits have their traditional batta.They share a love for lamb; the love a Kashmiri has for meat is unparalleled.',
    imagePath: 'assets/images/Culture/Main/pages/staple.jpg',
  ),
  Culturecard(
    heading: 'Wazwan',
    description:
        'The Kashmiri Muslim tradition has a multi-course Kashmiri meal called Wazwan that is considered by the community as an essential and fundamental aspect of their very essence and culture.\nThe different courses of the dish are prepared by and under the supervision of the head chef called a vasta waza who is assisted by a team of chefs called wazas. The term Wazwan is derived from two words, ‘waz’ meaning cook or cooking and ‘wan’ meaning shop in Kashmiri language. Some of the items are cooked overnight with great precision. This multi-course dish is usually prepared during special occasions of the Kashmiris like the marriage ceremony. The art of preparing the Wazwan, which is considered with pride, has been passed on hereditarily and is hardly shared to anyone outside blood relations. Thus some wazas have made their names with their rich lineage of such service and remains greatly in demand during occasions.\nWazwan is served in traem or a large copper platter with each platter serving a group of four guests. While the name of Allah is taken by the Kashmiri Muslims prior to consuming the meal, the Kashmiri Brahmins take the name of Lord Rudra. The ritual of Tash-t-naer that is washing of hands of the guests takes place with the attendants taking around a jug and a basin. The traem heaped with rice that is quartered with four sheek kababs also including two tabak maaz, barbecued lamb ribs prepared with milk, butter and ground spices; four methi kormas, prepared out of chicken or mutton seasoned with combination of spices including dried methi (fenugreek) leaves; one zafran kokur, a preparation of chicken with saffron sauce; one safed kokur, a preparation of chicken with white sauce; and a few other courses is served to the guests. Accompaniments of the meal which are served in small earthen pots include chutneys or dips and saffron garnished yogurt. Thereafter the junior cook or the waza serves around twenty more courses.',
    imagePath: 'assets/images/Culture/Main/pages/wazwan.jpg',
  ),
  Culturecard(
    heading: 'Traditional Breads',
    description:
        'The valley is noted for offering a variety of traditional bakery items and the love of the populace for baker’s bread will lead one to find at least one traditional bakery shop referred as Kaandar or Kandur in every colony or locality of Kashmir. Different kinds of breads for different seasons are available in the bakery shops that have golden brown crusts and are topped with sesame and poppy seeds. Two such breads that are flaky and crisp and topped with sesame and poppy seeds are tsochvoru and tsot that are small in size and round in shape. Other popular ones include kulcha, small, round, dry, hard and crumbly breads that are embellished with a peanut in the upper middle part; lavasa or lawaas, a large, thin, unleavened flat bread made with maida which can be either crispy or soft; sheermal or krippe, a dry crumbly bread generally served with kehwa; and roth, a huge bread of around 1 m in length and 2 ½ m in width which is more like a Kashmiri dry fruit cake among others. A Kashmiri bakerkhani that is a spiced, thick, roundish flat-bread having almost a biscuit like texture that is crisp with a hard crust, layered and sprinkled with sesame seeds finds a special place in Kashmiri food. Generally the Kashmiris eat it hot as a breakfast item.',
    imagePath: 'assets/images/Culture/Main/pages/breads.jpg',
  ),
  Culturecard(
    heading: 'Different Types of Tea  ',
    description:
        'Kashmiris drink two types of tea namely Noon Chai, or Sheer Chai and Kahwah. The former is the most popular beverage of the Kashmiris who drink tea heavily. This noon chai where ‘noon’ means salt in Kashmiri language is made of black tea, salt, milk and bicarbonate of soda. The tea gets its unique pink colour from the distinct style of its preparation and of course due to the use of soda. While the Kashmiri Muslims call it ‘Namkeen Chai’ or ‘Noon Chai’, the Kashmiri Pandits generally call it the ‘Sheer Chai’. It is usually consumed in Kashmiri households along with breads during breakfast.\nKahwah is a green tea prepared with different spices, walnuts or almonds and saffron. Different households prepare this tea differently thus marking more than twenty varieties of Kahwah. It has become a custom to serve this tea at religious places, festivals and at marriages. Some Kashmiri Pundits belonging to small villages of the region refer this tea as ‘Maugal Chai’ while the Kashmiri Pundits and Muslims living in cities call it ‘Kahwah’ or ‘Qahwah’.',
    imagePath: 'assets/images/Culture/Main/pages/tea.webp',
  ),
];
List<Culturecard> customs = [
  Culturecard(
    heading: 'Kashmiri Muslim Wedding  ',
    description:
        'The people of Kashmir describe their beautiful land as ‘Paradise on Earth’ and indeed as the plane flies over the snow capped Himalayas, one is inclined to agree. In the capital Srinagar, visitors will find shikaras gliding over lotus covered lakes, aging houseboats, floating flower and vegetable markets; traditional handicrafts and friendly people.\nUsually families decide who will be their son or daughter’s marriage partner however, nowadays, young couples do meet and make a love match though their families still must approve it. Once the couple’s families have come to an agreement an engagement is announced. The groom’s family often gives jewelry to the bride and sometimes rings and flowers are exchanged as well. The groom’s parents traditionally buy the bridal trousseau for the Kashmiri bride, complete with clothes and jewellery to be worn on the wedding day.\nThe commencement of the wedding celebrations will be the henna or ‘mehendi’ sent to the bride’s home from the groom’s family. The girls apply mehendi on the bride\'s hands and feet. She then puts on all her bridal jewelry and vividly coloured and sequined sari or lehenga.\nThe nikah or marriage contract may have been completed earlier or at the time just before the main wedding day and the bride’s ‘mehr’ or dowry is decided upon.\nOn the main wedding day the groom is taken to the bride’s house in a procession called the ‘baraat’ he is wearing a ‘sherwani kurta’ with ‘churidar pyjama’ topped off with a special turban.\nTraditionally, the bride will wear a heavily decorated red or bright coloured ‘lehenga’ and a dupatta over her head. The over garment is embroidered in gold and complemented with lots of gold jewelry.\nThe ladies in the family sing traditional wedding songs and the groom is showered with coins, sweets and almonds and he is presented with a garland.\nWeddings in Kashmir are always accompanied by amazing feasts, of multiple dishes, called ‘vazvan’ food -prepared by special chefs. It will be cooked in huge cauldrons with many dishes of mutton, chicken and varieties of biryani. It is preferable that you arrive hungry and not be a vegetarian!!\nThe wedding celebration will be held in one or two huge tents erected near the bride’s home these will accommodate hundreds of guests, as all the community are invited. Men and women eat separately. The close relatives of the groom can enter where the bride is seated to give her gifts. Often there are special wedding performers called ‘hijra’ who dance and sing traditional songs - these men are dressed in sequined gowns.\nThe bride will get ready to leave with her new husband when the groom asks permission to take her to his home. The women will sing and drum and there will be tears shed as she departs for her new life. At her new home she is greeted by her mother-in-law who symbolically lifts her veil in recognition of her new status as a married woman and presents her with a piece of jewelry.\nThe following day the groom’s family hold a feast called the ‘walima’ day where they invite their family, friends and people from their community.\nOn the fourth day the bride’s family invite the groom’s family for dinner and then finally on the seventh day the groom’s family invites the bride’s family for dinner and then she is allowed to come and stay with her own family for a few days. Families and feasting – that’s what it is all about.',
    imagePath: 'assets/images/Culture/Main/pages/wedding.webp',
  ),
  Culturecard(
    heading: 'Izband',
    description:
        'Izband or Harmala in English and Harmal in Hindi popularly known as Wild Rue is a small shrub which is widespread in the subtropical regions of India, abundant in Kashmir and Ladakh. Harmala Seeds or Izband have been used since ancient times in the cultural and religious rites worldwide. According to folklore Izband smoke wards off the evil eye.Traditionally Izband seeds are placed on red hot charcoal and in Kangri, wherein they explode with small popping noise releasing a fragrant smoke. This tradition is still followed in Kashmir and in some other parts of the world believing to ward off the evil. Izband is used in every special occasion in Kashmir, be it a wedding, a happy festive gathering or a housewarming party, the fragrance of the smoke fills the ambience to kill off all the evil that there might be.',
    imagePath: 'assets/images/Culture/Main/pages/izband.webp',
  ),
];
List<Culturecard> musicdance= [
  Culturecard(
    heading: 'Rouf',
    description:
        'Rouf dance form is one of the popular traditional dance forms which are practiced by the Kashmiri people. From the ancient period, this dance form is an important part of Kashmir. In Kashmir’s capital city, this dance is pronounced as Row, but in the villages of the Kashmir, it is known as a Ruf. This envisaging dance form is typically performed in all the festive and other occasions, especially Eid and Ramadan days. The songs played during the dance are usually in a question-answer format. It is performed by a group of women facing each other.',
    imagePath: 'assets/images/Culture/Main/pages/rouf.jpg',
  ),
  Culturecard(
    heading: 'Hikat Dance',
    description:
        'The Hikat dance of Kashmir is one of the most popular folk dances of the state of Kashmir and is usually performed by the young girls of the Kashmir valley. There are several folk dance forms which are prevalent among the different communities in the state of Kashmir. The Hikat dance is one of the major folk dances in the state of Kashmir which is highly appreciated and acclaimed nationally and internationally.',
    imagePath: 'assets/images/Culture/Main/pages/hikat.jpg',
  ),
  Culturecard(
    heading: 'Bhand Pather',
    description:
        'Bhands are typically the folk entertainers or dancers of Kashmir and Bhand Pather is a traditional folk theatre of Kashmir which is customarily performed in social and cultural ceremonies. It depicts social traditions and evils while bringing out the satire in them. It is a mighty amalgamation of dance and plays.Bhand Jashan is performed by a group of 10 to 15 artists in their traditional style accompanied by light music for the entertainment of people.',
    imagePath: 'assets/images/Culture/Main/pages/bhandpather.jpg',
  ),
  Culturecard(
    heading: 'Bacha Nagma',
    description:
        'Bacha Nagma dance form is also known as a Bacha Gyavaun which means melodious adolescent voice. This dance form is very famous in the Kashmiri People and it is also a very important cultural event in wedding ceremonies and also other culture base celebrations. Bachha Nagma dance is performed only by men and boys, they dress up like girls. Their dance attire make the similarity with the cloths, which are used in the Kathak dance form.',
    imagePath: 'assets/images/Culture/Main/pages/bachanagma.jpg',
  ),
  Culturecard(
    heading: 'Ladishah',
    description:
        'This dance form of Kashmir is very popular and Ladishah has a very essential position in the tradition of Kashmir music. Ladishah dance is a maliciously form of singing. These songs, shows the current situation of the political and social conditions which are very humorous.',
    imagePath: 'assets/images/Culture/Main/pages/ladishah.jpg',
  ),
  Culturecard(
    heading: 'Chakri',
    description:
        'This music form is one of the popular forms of the Kashmiri folk music which is practiced in Jammu and Kashmir. Chakri music is created by using the musical instruments like rubab, harmonium, nout and sarangi.',
    imagePath: 'assets/images/Culture/Main/pages/chakri.jpg',
  ),
  Culturecard(
    heading: 'Classical Music',
    description:
        'The music which is performed by the Hindu Kashmiri is majorly dominated by India’s classical music. To create this classical music, they use musical instruments like Sitar. The very popular Sangeet Ratnakara which was written by the Sarangadeva was a Kashmiri artist. If you will see the earlier Kashmiri text, you will find the presence of the Kashmiri musical instrument and music such as Rajatarangini and Nimata Purana by the Kalhana.',
    imagePath: 'assets/images/Culture/Main/pages/classical.jpg',
  ),
  Culturecard(
    heading: 'Sufiana Kalam',
    description:
        'This is a classical music form of Kashmir. This music uses, its own made ragas. To create this classical music, the artists use Kashmir’s famous instrument which has hundreds of string known as Santoor, also the wasool, sitar, Kashmiri saz, tabala etc.',
    imagePath: 'assets/images/Culture/Main/pages/sufiana.jpg',
  ),
];


  
List<Culturecard> artscrafts= [
  Culturecard(
    heading: 'Paper Mache',
    description:
        'The Papier mache articles are made layer by layer in a mould and in polished and painted with every layer until the desired shape of the article is achieved. Papier-mache is easier to carry. Gold leaf is used in papier mache to make patterns of leafs or other items and the prices of papier-mache is again dependent mainly on the amount of gold leaf used.\nPrices can range from 10 Rs to several hundred depending on the complexity of the design. It can be made into bowls, cups, containers, jewellery boxes, lamps, tables, letter holders, coasters etc. The production takes places in different stages like molding is done in one place and then it is shifted to other place where painting and polishing is done and then to the place where designing is done. This helps in making the process seamless and easy to handle. In order to see how it is done one can easily visit the Papier-mache industry which area located in villages in Kashmir.',
    imagePath: 'assets/images/Culture/Main/pages/papermache.jpg',
  ),
  Culturecard(
    heading: 'Carpet Weaving',
    description:
        'Carpet weaving is one of the most expensive and renowned art in Kashmiri handicrafts. The art came from the Samarkand in central Asia and then later on artisans from Iran modified the art of carpet weaving. The person who initially introduced the skill of carpet weaving to Kashmir was Zain-ul-abidn.\nMany of the artisans and craftsmen who Tamerlane had collected from different parts of Asia went with the young prince to Kashmir after the death of the Tamerlane. During the period of influence of the Mughal emperor Jahangir Carpet industry was given a new direction when a Persian knot style of weaving, was introduced by the Kashmiri craftsmen from Persia.',
    imagePath: 'assets/images/Culture/Main/pages/carpetweaving.jpg',
  ),
  Culturecard(
    heading: 'Basket Weaving',
    description:
        'Basket weaving is done mainly by willow rushes which are found in abundance in marshes and lakes in Kashmir. All the objects made from willow are expensive and can range from shopping baskets and lampshade to tables and chairs. To increase the life of the final products should be chiseled properly and should also be made in contact with water frequently where the temperature is higher than in other areas so that they don\'t break easily. Baskets made from willow rush finds its use in different areas such as they can be used as picnic baskets, glass holders for holding teas, lampshades, work baskets and they can even serve as packing case which can hold the material when sent through road unattended. Hazratbal in Srinagar is the main centre for Basket weaving.',
    imagePath: 'assets/images/Culture/Main/pages/basketweaving.avif',
  ),
  Culturecard(
    heading: 'Namdas',
    description:
        'Namdas are the beautiful floor coverings which are made of woolen and cotton fibers which are given the shape manually and are cheap as compared to other products. The price of namdas depends actually on the percentage of wool used those with higher percentage are sold at a high price as compared to those with low wool percentage in them. Chain stitch embroidery in woolen and cotton thread is worked on these rugs. Emporiums in Srinagar houses a large variety of Namdas.',
    imagePath: 'assets/images/Culture/Main/pages/namda.jpg',
  ),
  Culturecard(
    heading: 'Shawls',
    description:
        'Kashmiri shawlas are known for their quality all over the world. There are generally three types of fibers used in the making of the shawl shahtoosh, pashmina and wool and for the decoration they are embroidered in Sozni and Motifs type embroidery. Pure pashmina is really expensive which in turn makes shawls expensive but if mixed the cost can be controlled. Pashmina is generally spun from the hair of ibex. Shahtoosh is known for the lightness and warmth but is now among the banned items.',
    imagePath: 'assets/images/Culture/Main/pages/shawlweaving.jpg',
  ),
  Culturecard(
    heading: 'Wood Carvings',
    description:
        'Another interesting part of Kashmiri handicraft is the Wood carving. Complex wood carvings done on houseboats are one such example of the wood carving. It is not very expensive in nature but one can always find ivory incorporated in the design.',
    imagePath: 'assets/images/Culture/Main/pages/woodcarving.jpg',
  ),
  Culturecard(
    heading: 'Pherans',
    description:
        'It is a kind of garment that is a part of Kashmiri way of life and it is worn between a coat and a cloak. It is loose so that it can easily absorb the heat from the burning coals to keep the person warm who is wearing it much like keeping a hot water bottle near to your body. In Men\'s wear Pheran is made of tweed or coarse wool whereas women\'s Pherans are more stylized as compared to men and made of raffles and embroidered at throat cuffs and edges which make them look beautiful. The price is generally dependent of the thickness of the raffel.',
    imagePath: 'assets/images/Culture/Main/pages/pheran.jpg',
  ),
  Culturecard(
    heading: 'Chain Stitch and Crewel Furnishings',
    description:
        'Crewel Work is admired all over the world because of the high quality embroidery.\nHook is used in place of needle for the chain stitching be it wool or cotton. With hook work it takes half time as it cover larger area than needle work and is known as \'Ari\'.\nCotton fabric is pre shrink by manufacturer on which embroidery takes place. Tiny stitches cover up most of the area and the figures or motifs used are made with vibrant colours to stand out. The background is in single color made up of coin sized concentric circles which imparts a different look. The key lies in background fabric should not be easily visible.\nCrewel is basically similar to chain stitch. It is the same as that in chain stitch in which stitching is done on white background but the only difference is the motifs and flowers are not embroidered upon the entire surface and in crewel work wool is used and not much of the colors are used as in chain stitch vibrant colors are used. They are superb household furnishings and can be washed through hand or machine.',
    imagePath: 'assets/images/Culture/Main/pages/chainstitch.jpg',
  ),
  Culturecard(
    heading: 'Copper and Silverware',
    description:
        'Copper wares can be easily found in the parts of old city these are generally found hanging on the walls and also cover up most of the part of floor and even ceilings. Samovars, bowl, plates and trays are engraved by craftsmen in these shops.\nThe designs that include floral geometric or leaf are engraved or embossed on copper and sometimes on silver and then oxidized. It makes them appear that they are coming out of the back ground. This is known as \'Naqashi\'. The amount of naqashi done and the weight are the two important factors for price determination.',
    imagePath: 'assets/images/Culture/Main/pages/copper.webp',
  ),
];


List<Culturecard> festivals= [
  Culturecard(
    heading: 'Shikara Festival',
    description:
        'The lifeline and identity of the Dal Lake in Kashmir, Shikara needs to be celebrated once in a year. To promote tourism, Kashmir\'s government began this festival in 2016. During the festival, Shikaras are painted and dressed beautifully. Shikaras participate in Shikara Race, Dragon Boat Race and Canoe Polo Match. Other cultural programs are also organised which will give you a glimpse of the culture of Kashmir. It takes place in the months of July or August.',
    imagePath: 'assets/images/Culture/Main/pages/shikarafestival.jpg',
  ),
  Culturecard(
    heading: 'Gurez Festival',
    description:
        'Around 123 km from the capital of Kashmir, Gurez is the placid valley in the Himalayas at an elevated height of about 8,000 feet. The picturesque valley has a plethora of scenic views as it lies on the ancient Silk Route. Neelum River flows amidst the Gurez valley and is a perfect destination for river rafting activity. People of Gurez play host to the annual festival in which they showcase their handicrafts, cuisines, and culture.\nEveryone assembles for the fest which also involves fun activities like river rafting, trekking, zorbing, cycling, etc. Many competitions such as painting and drawing also take place which witnesses huge participation.  Many musical programs displaying Kashmiri culture are also a pleasure to attend. Gurez Festival is celebrated at the time of July or August in the scintillating valley of Gurez.',
    imagePath: 'assets/images/Culture/Main/pages/gurezfestival.jpg',
  ),
  Culturecard(
    heading: 'Tulip Festival',
    description:
        'With hundreds of Tulip Gardens in all of Kashmir, the state flourishes with Tulips during the spring season. With the largest Tulip Garden in Asia in its bounty, Srinagar plays host to the great Tulip Festival every year. The festival boasts of the variety of Tulips garnered here. During the springs, the sight of the tulips in any of these gardens is a sight to behold, undoubtedly a mesmerizing and breathtaking sight, especially for a non-Kashmiri. Tulip Festival takes place at the Indira Gandhi Memorial Tulip Garden in Srinagar, Kashmir. The festival features a showcase of local handicrafts, luscious cuisine, cultural programs and of course, Tulips!',
    imagePath: 'assets/images/Culture/Main/pages/tulipfestival.jpg',
  ),
  Culturecard(
    heading: 'Eid ul Azha and Eid ul Fitr',
    description:
        'The two most important festivals of Muslims are celebrated in Kashmir in the full-fledged extravaganza. Kashmir being the Muslim majority region, Muslim festivities witness a huge participation. Although Eid is a festival celebrated throughout the world and in the rest of India too, with great buzz, Kashmir\'s magic makes Eid here a delight to celebrate.',
    imagePath: 'assets/images/Culture/Main/pages/eid.jpg',
  ),
  Culturecard(
    heading: ' Urs',
    description:
        'The Urs or Ziarats is an important festival in Kashmir which witnesses participation from Muslims, Hindus and Sikhs. It is a huge inter-communal celebration and is celebrated many times in a year. Basically, this festival is celebrated on the death anniversaries of eminent Muslim saints like Meesha Sahib, Batamol Sahib and Bahauddin. Often a bad weather is faced on the day of Urs celebrations, despite which a huge celebration is marked by people from all religions.',
    imagePath: 'assets/images/Culture/Main/pages/urs.jpg',
  ),

];

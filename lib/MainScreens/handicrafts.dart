// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, unused_import, non_constant_identifier_names, prefer_typing_uninitialized_variables, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables, must_be_immutable, use_key_in_widget_constructors, avoid_unnecessary_containers

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:kaio/Cuisines/FlipCarousel.dart';
import 'package:kaio/Handicrafts/Hc_papermachie.dart';
import 'package:kaio/Cuisines/recipe.dart';
import 'package:kaio/MainScreens/literature.dart';
import 'package:kaio/widgets/Recipe.dart';
import 'package:kaio/widgets/craft.dart';
import 'package:kaio/widgets/selection.dart';
import '../constants.dart';
import '../main.dart';

class Handicraft extends StatefulWidget {
  Handicraft({super.key});

  @override
  State<Handicraft> createState() => _HandicraftState();
}

class _HandicraftState extends State<Handicraft> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Column(children: [
      Container(
        margin: EdgeInsets.all(20),
        child: TextField(
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.search),
            hintText: 'Search',
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
                borderSide: BorderSide(color: Color(0xff85586F), width: 2)),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
                borderSide: BorderSide(color: Color(0xff85586F), width: 2)),
          ),
        ),
      ),
      CarouselSlider(
        items: [
          HandicraftCard(
            imagePath: 'assets/Carpet.png',
            widgetName: CarpetPage(),
          ),
          HandicraftCard(
            imagePath: 'assets/PaperMache.png',
            widgetName: PaperMachePage(),
          ),
          HandicraftCard(
            imagePath: 'assets/Shawl.png',
            widgetName: ShawlPage(),
          ),
          HandicraftCard(
            imagePath: 'assets/tilla.png',
            widgetName: CarpetPage(),
          ),
          HandicraftCard(
            imagePath: 'assets/Copper.png',
            widgetName: CarpetPage(),
          ),
          HandicraftCard(
            imagePath: 'assets/Wood.png',
            widgetName: CarpetPage(),
          ),
        ],
        options: CarouselOptions(
          height: 160.0,
          enlargeCenterPage: true,
          enlargeFactor: 0.5,
          aspectRatio: 16 / 9,
          enableInfiniteScroll: true,
          viewportFraction: 0.5,
        ),
      ),
      SizedBox(
        height: 20,
      ),
      DefaultTabController(
        length: 5,
        child: Expanded(
          child: Column(
            children: [
              Container(
                height: 45,
                decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(25.0)),
                child: TabBar(
                  isScrollable: true,
                  indicator: BoxDecoration(
                      color: Color(0xff85586F),
                      borderRadius: BorderRadius.circular(25.0)),
                  tabs: [
                    Tab(text: 'Paper-Mache'),
                    Tab(text: 'Carpets, Rugs and Mats'),
                    Tab(text: 'Embroidery Work'),
                    Tab(text: 'Copper Work'),
                    Tab(text: 'Wood Carving'),
                  ],
                  labelColor: Colors.black,
                ),
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    PaperMac(),
                    CRM(),
                    Embroidery(),
                    CopperWork(),
                    WoodCarving()
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ])));
  }
}

class PaperMac extends StatelessWidget {
  const PaperMac({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          CraftCard(imagePath: 'assets/FlowerVase.png'),
          CraftCard(imagePath: 'assets/TableLamp.png'),
          CraftCard(imagePath: 'assets/Clutch.png'),
          CraftCard(imagePath: 'assets/FruitBowl.png')
        ],
      ),
    );
  }
}

class CRM extends StatelessWidget {
  const CRM({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          CraftCard(imagePath: 'assets/Carpet1.png'),
          CraftCard(imagePath: 'assets/Carpet2.png'),
          CraftCard(imagePath: 'assets/Carpet3.png'),
          CraftCard(imagePath: 'assets/Carpet4.png')
        ],
      ),
    );
  }
}

class Embroidery extends StatelessWidget {
  const Embroidery({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Text(
            'Emboidery Work',
            style: kHeading,
          ),
          // CraftCard(name: Paper_machie(),),
          // CraftCard(name: Paper_machie(),),
          // CraftCard(name: Paper_machie(),),
        ],
      ),
    );
  }
}

class CopperWork extends StatelessWidget {
  const CopperWork({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          CraftCard(imagePath: 'assets/Samavar.png'),
          CraftCard(imagePath: 'assets/Izbandsoz.png'),
          CraftCard(imagePath: 'assets/Tramisarposh.png'),
          CraftCard(imagePath: 'assets/Dryfruitbowl.png'),
        ],
      ),
    );
  }
}

class WoodCarving extends StatelessWidget {
  const WoodCarving({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          CraftCard(
            imagePath: 'assets/AyatUlKursi.png',
          ),
          // CraftCard(name: Paper_machie(),),
          // CraftCard(name: Paper_machie(),),
        ],
      ),
    );
  }
}

class HandicraftCard extends StatelessWidget {
  String imagePath = '';
  var widgetName;
  HandicraftCard({required this.imagePath, required this.widgetName});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => widgetName));
      },
      child: Card(
        child: Container(
            height: devH * 0.3,
            width: devW * 0.9,
            decoration: BoxDecoration(border: Border.all(color: Colors.black)),
            child: Image(fit: BoxFit.fill, image: AssetImage(imagePath))),
      ),
    );
  }
}

//********CARPET PAGE********//

class CarpetPage extends StatelessWidget {
  const CarpetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Center(
                child: Text(
              'Carpets Of Kashmir',
              style: kHeading,
            )),
            Container(
              margin: EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Text(
                    'Kashmiri carpets are among the most exquisite and renowned handcrafted carpets in the world. These carpets are hand-knotted and woven in the picturesque region of Kashmir, located in the northern part of the Indian subcontinent. The art of carpet weaving in Kashmir has a long and illustrious history that dates back centuries. Known for their intricate designs, superior craftsmanship, and the use of premium materials, Kashmiri carpets have earned a special place in the realm of luxury home decor.',
                    style: kSelText,
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Image(image: AssetImage('assets/Carpet.png'))
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'History',
                    style: kHeading,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'The origins of Kashmiri carpets trace back to ancient times, with historical records suggesting that carpet weaving in the region began during the reign of Zain-ul-Abidin (Budshah) in the 15th century. However, the art form is believed to have been introduced even earlier, during the period of Hazrat Mir Syed Ali Hamdani, a Sufi mystic who brought skilled artisans from Persia to Kashmir via the silk route. This migration of artisans played a pivotal role in establishing Kashmir as a hub for exquisite carpet weaving.\n Over the centuries, the craft of carpet making in Kashmir flourished, and the weavers developed unique styles and motifs that reflected the region\'s cultural heritage. Kashmiri carpets gained recognition and acclaim worldwide, becoming highly sought-after luxury items in the global market.',
                    style: kSelText,
                    textAlign: TextAlign.justify,
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'The  Process of Carpet Making',
                    style: kHeading,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'The creation of a Kashmiri carpet is a painstaking and time-consuming process, involving multiple skilled artisans. The process can be broken down into three main steps: Designing, Dyeing, and Weaving.',
                    style: kSelText,
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Designing a Carpet (Talim)',
                    style: kSubHeading,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'The process begins with designing the carpet. Talented designers finalize the patterns, motifs, and color combinations that will be used in the carpet. The intricate details are carefully planned, and the final layout is determined. The weavers follow a written code known as "Talim", which acts as a blueprint for creating the carpet.',
                    style: kSelText,
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Image(image: AssetImage('assets/Talim.png')),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Dyeing',
                    style: kSubHeading,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Once the design is established, the yarn is sent for dyeing. The selection of high-quality dyes is crucial, as it determines the vibrancy and longevity of the colors in the carpet. Azo-free, chrome, and eco-friendly dyes are preferred to ensure environmental sustainability. After dyeing, the yarn is left to dry under the sunlight, enhancing the natural beauty of the colors.',
                    style: kSelText,
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Image(image: AssetImage('assets/Yarn.png')),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Weaving',
                    style: kSubHeading,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'The most critical phase of carpet making is the weaving process, where skilled weavers bring the design to life. The process can take several months to years, depending on the size and complexity of the carpet. Here\'s an overview of the weaving process:',
                    style: kSelText,
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Image(image: AssetImage('assets/Weave.png')),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    '- The weaver sets up a loom and prepares a strong foundation of vertical threads known as "warp" and horizontal threads called "weft." The warp runs vertically through the loom, while the weft runs horizontally.\n - Weaving usually starts from the bottom of the loom, with several wefts passed through the warps to create a sturdy base.\n - The dyed yarn is then meticulously knotted around consecutive sets of adjacent warps, forming rows of knots. As more rows are tied, the knots become the pile of the carpet, creating its unique texture. \n - Between each row of knots, additional shots of weft are passed to secure the knots firmly in place.\n - To ensure a tight and even finish, the wefts are beaten down using a comb-like instrument known as the "comb beater." \n - Upon completing the weaving, the warp ends from the fringes, which may be weft-faced, tasseled, or otherwise treated.',
                    style: kSelText,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Image(image: AssetImage('assets/Weave1.png')),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'The craftsmanship and dedication involved in creating a Kashmiri carpet result in a masterpiece that is cherished by homeowners and collectors alike. These carpets adorn living rooms, bedrooms, foyers, and coffee tables, adding elegance and luxury to any space.',
                    style: kSelText,
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Image(image: AssetImage('assets/kaleen.png')),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'In conclusion, Kashmiri carpets represent the epitome of artistry and tradition. Their history, deeply rooted in the rich culture of Kashmir, continues to captivate people worldwide. From the design stage to the final weaving, each step is meticulously executed, resulting in a true masterpiece that stands as a testament to the skill and creativity of Kashmiri artisans.',
                    style: kSelText,
                    textAlign: TextAlign.justify,
                  )
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}

//////////////////PAPERMACHEPAGE////////////////////////////////
class PaperMachePage extends StatelessWidget {
  const PaperMachePage({super.key});

  @override
  Widget build(BuildContext context) {
    devH = MediaQuery.of(context).size.height;
    devW = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Text('Paper Mache',style: kHeading,),
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Text('‘Paper mache’ is a French term which when translated literally means ‘chewed paper’. This art is said to have originated in China hundreds of years ago.',
                  style: kSelText,
                  textAlign: TextAlign.justify,),
                  SizedBox(height: 20,),
                  Image(image: AssetImage('assets/PaperMache.png')),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('History',style: kHeading,),
                  SizedBox(
                  height: 10,
                ),
                  Text('The origin of the paper mache crafts in Kashmir dates back to as early as the 15th century.  And the credit for bringing this art form to Kashmir is believed to go to the eighth ruler of Kashmir, Zain-ul-Abidin. He came across this art during his time as a Kashmiri prince in Samarkand, Central Asia. That was when he was intrigued by paper mache handicraft.When he returned to Kashmir, he brought many craftsmen along with him to the valley to train his subjects on the same. Yet another legend suggests that this art was introduced in Kashmir by a poet and Sufi saint called Mir Sayyid Ali Hamdani. He came to Kashmir from Iran in the mid 14th century. He brought along with him 700 artisans from Iran. These artisans are thought to have taught the local Kashmiris various art forms; and paper mache craft was one of them.No matter what the story of its origin, this art was made highly popular during the Mughal rule. The art was originally known by its Iranian name Kar-i-Qalamdani in Kashmir. The word ‘Qalamdani’ is basically pen case. Initially, this art was only restricted to making pen cases.But, through the years, the art of paper mache has tremendously grown in the valley with numerous items available these days.',
                  style: kSelText,
                  textAlign: TextAlign.justify,)
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('How are Kashmir Paper Mache Crafts Made?',
                  style: kHeading,),
                  SizedBox(
                  height: 10,
                ),
                  Text('The artisans involved in this profession are supremely skilled and practice the art for years and years. This art has also traditionally existed as a family profession in Kashmir. And like many other Kashmiri handicrafts, the trick and technique behind it gets passed on from one generation to another.Even though the idea behind this handicraft might sound relatively simple, it is a very time-consuming process and requires a lot of precision. It basically involves two main steps- Sakthsazi (making of the actual item) and Naqashi (the painting and decoration part).Now, let’s take a look at the making of paper mache handicrafts in detail.',
                  style: kSelText,
                  textAlign: TextAlign.justify,),
                  SizedBox(
                  height: 5,
                ),
                  Text('Sakhtsazi',
                  style: kSubHeading,),
                  SizedBox(
                  height: 10,
                ),
                Image(image: AssetImage('assets/Sakthsazi.png')),
                 SizedBox(
                  height: 20,
                ),
                  Text('The sakthsazi is the one involved with making the object with the pulp of paper. First of all, the waste paper is soaked in water for several days. Then, a mixture of the soaked waste paper, cloth and the straw of a rice plant is pounded manually in a stone mortar. This is pounded until the mixture becomes very fine and forms a pulp. Then, a rice based glue called ‘Atij’ is combined with this pulp mixture.This complete mixture is then applied onto the desired mould and then left to dry for a few days. After it has dried out, the artwork is very carefully separated from the mould. The artwork is basically cut in two halves to separate it from the mould and the halves are carefully joined with the help of glue. The resultant object that is obtained is known as ‘Kalib’. Then, for the next step, the kalib is handed over to the women. This process is referred to as ‘Pishlawun’. As the next step, the women smoothen out the surface of the artwork with either a stone, baked clay or a wooden file.After the object is nicely smoothened out, it is coated with a light layer of paint/ lacquer. It is coated again with a second coat of lacquer mixed with some chalk powder and water. This is again left to dry out for some time.After the sakthsazi’s work is done, the artwork/ object is handed over to the Naqash.',
                  style: kSelText,
                  textAlign: TextAlign.justify,),
                   SizedBox(
                  height: 20,
                ),
                  Text('Naqashi',
                  style: kSubHeading,),
                  SizedBox(
                  height: 10,
                ),
                 Image(image: AssetImage('assets/Naqashi.png')),
                SizedBox(
                  height: 20,
                ),
                  Text('When the object reaches the Naqash, it is first covered with thin sheets of butter paper. The butter paper is pasted so that it acts as a barrier between the main object and the paintwork so that the object doesn’t crack. After covering with butter paper, a thin coat of paint is applied all over the artwork. This is actually the step where the object is transformed into the beautiful piece of paper mache handicraft that we know. This work is also very intricate and usually takes about 3 days to a week. The designs are first drawn free hand on the object and then they are painted. The designer uses various different motifs like flowers, fruits, birds, creepers etc.Mostly metallic paints are used for an illuminated effect. After the motifs are painted, often gold or silver is used to highlight them. Mostly the colors that are used for painting are all organic and either nature or vegetable-based. When the whole painting procedure is completed, the final step involves covering the artwork with a layer of varnish for an added shine.This is the whole procedure that goes into making paper mache crafts. It is an extensive process that requires a lot of patience and attention to detail. But, the whole process is worth it as the end result is absolutely stunning.Even though these handicrafts are made using paper, the extensive process that goes into making them is what makes these handicrafts extremely durable. Each of these individually created items has a unique story to tell. The Kashmir paper mache crafts are largely pursued by the Shia sect of the Kashmiri Muslims.',
                  style: kSelText,
                  textAlign: TextAlign.justify,)
                ],
              ),
            )
          ],
        )
      )),
    );
  }
}

//********SHAWL PAGE********//

class ShawlPage extends StatelessWidget {
  const ShawlPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Center(
                child: Text(
              'Shawls Of Kashmir',
              style: kHeading,
            )),
            Container(
              margin: EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Text(
                    'Kashmiri shawls are exquisite and timeless pieces of craftsmanship that hold a special place in the world of luxury textiles. Woven in the picturesque valley of Kashmir, located in the northern part of the Indian subcontinent, these shawls are renowned for their unparalleled softness, warmth, and intricate designs. The art of making Kashmiri shawls is deeply rooted in the cultural heritage of the region and reflects the craftsmanship and creativity of skilled artisans.',
                    style: kSelText,
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Image(image: AssetImage('assets/Shawl.png'))
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'History',
                    style: kHeading,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'The history of Kashmiri shawls dates back over several centuries, with references to their existence found in ancient scriptures and historical accounts. The origins of the Kashmiri shawl can be traced to the time of the Mughal emperors, particularly during the reign of Emperor Akbar in the 16th century. It was during this period that the craft of weaving luxurious shawls from fine wool and Pashmina (the soft undercoat of Changthangi goats) flourished under royal patronage.\n Kashmiri shawls soon gained popularity beyond the borders of India and were highly sought after in distant lands. Their intricate designs, quality of wool, and skilled craftsmanship made them treasured possessions among the nobility and affluent traders in Europe and Central Asia. \n Over the years, the art of making Kashmiri shawls evolved, incorporating various influences and design motifs, including floral patterns, paisleys, and intricate geometric designs. Today, Kashmiri shawls continue to be celebrated as symbols of elegance and luxury, with their timeless appeal captivating fashion enthusiasts and connoisseurs worldwide.',
                    style: kSelText,
                    textAlign: TextAlign.justify,
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'The  Process of Shawl Making',
                    style: kHeading,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'The creation of a Kashmiri shawl involves a meticulous and labor-intensive process that requires the expertise of highly skilled artisans. The process can be divided into several key steps:',
                    style: kSelText,
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Collecting the Wool',
                    style: kSubHeading,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Kashmiri shawls are made from different types of wool, such as fine Merino wool and Pashmina. Pashmina wool, derived from the undercoat of Changthangi goats found in the high-altitude regions of the Himalayas, is highly prized for its exceptional softness and warmth.',
                    style: kSelText,
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Image(image: AssetImage('assets/ShawlRaw.jpeg')),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Hand-Spinning the Fibers',
                    style: kSubHeading,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'After the wool is collected, it undergoes the hand-spinning process. Skilled artisans carefully spin the fibers into fine threads using traditional spinning wheels. This hand-spinning ensures that the fibers are aligned uniformly, contributing to the shawl\'s fine texture.',
                    style: kSelText,
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Image(image: AssetImage('assets/ShawlSpin.jpeg')),
                  SizedBox(
                    height: 20,
                  ),
                  Image(image: AssetImage('assets/ShawlThread.png')),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Dyeing the Threads',
                    style: kSubHeading,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'The spun threads are then dyed using natural and eco-friendly dyes to achieve a wide range of vibrant colors. The process of natural dyeing is an art in itself, as artisans extract colors from various plant sources and minerals, preserving the richness and authenticity of the colors.',
                    style: kSelText,
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Image(image: AssetImage('assets/ShawlDye.jpeg')),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Embellishments and Finishing',
                    style: kSubHeading,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'In some cases, the shawls may undergo additional embellishments such as embroidery or beadwork to enhance their beauty further. Artisans add delicate designs using fine needlework, adding an extra layer of elegance to the finished shawl.',
                    style: kSelText,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Image(image: AssetImage('assets/ShawlWeave.jpg')),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Washing and Blocking',
                    style: kSubHeading,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Once the weaving and embellishments are complete, the shawl undergoes washing and blocking processes to achieve its final softness and texture. This step ensures that the shawl is perfectly shaped and ready for use.',
                    style: kSelText,
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Image(image: AssetImage('assets/ShawlWash.png')),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'The entire process of making a Kashmiri shawl is a true labor of love and craftsmanship. Each step is carried out with utmost care, preserving the traditional techniques that have been passed down through generations. The result is a masterpiece of art and luxury, a Kashmiri shawl that stands as a testament to the rich cultural heritage and skill of the artisans of Kashmir.',
                    style: kSelText,
                    textAlign: TextAlign.justify,
                  )
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}

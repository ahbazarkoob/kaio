// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, unused_import, non_constant_identifier_names, prefer_typing_uninitialized_variables, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables, must_be_immutable, use_key_in_widget_constructors, avoid_unnecessary_containers

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:kaio/MainScreens/literature.dart';
import 'package:kaio/data/handicrafts.dart';
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
           appBar: AppBar(
          title: Text(
            'Kaio',
            style: kSubHeading,
          ),
          backgroundColor: Theme.of(context).primaryColor,
        ),
            body: Container(
              decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [ Colors.white,
                Theme.of(context).scaffoldBackgroundColor,], 
            ),),
              child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CarouselSlider(
                      items: handicraftCarousel,
                      options: CarouselOptions(
              height: 160.0,
              enlargeCenterPage: true,
              enlargeFactor: 0.5,
              aspectRatio: 16 / 9,
              enableInfiniteScroll: true,
              viewportFraction: 0.5,
                      ),
                    ),
                  ),
                  DefaultTabController(
                    length: 5,
                    child: Expanded(
                      child: Column(
              children: [
                Theme(
                        data: myTheme,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 5,left: 5),
                          child: TabBar(
                            isScrollable: true,
                            indicator: BoxDecoration(
                                color: Theme.of(context).primaryColor,
                                borderRadius: BorderRadius.circular(30.0)),
                      tabs: [
                        Tab(text: 'Paper-Mache'),
                        Tab(text: 'Carpets, Rugs and Mats'),
                        Tab(text: 'Embroidery Work'),
                        Tab(text: 'Copper Work'),
                        Tab(text: 'Wood Carving'),
                      ],
                      
                    ),
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
                ]),
            )));
  }
}

class PaperMac extends StatelessWidget {
  const PaperMac({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: papermac
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
        children: crm
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
        children: embroidery
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
        children: copperWork
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
        children: woodcarving
      ),
    );
  }
}
///////////////////////////////////////////////////////////////////////////
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
            decoration: BoxDecoration(border: Border.all(color: Theme.of(context).primaryColor,)),
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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                  child: Text(
                'Carpets Of Kashmir',
                style: kHeading,
              )),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                margin: EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 8.0),
                      child: Text(
                        'Kashmiri carpets are among the most exquisite and renowned handcrafted carpets in the world. These carpets are hand-knotted and woven in the picturesque region of Kashmir, located in the northern part of the Indian subcontinent. The art of carpet weaving in Kashmir has a long and illustrious history that dates back centuries. Known for their intricate designs, superior craftsmanship, and the use of premium materials, Kashmiri carpets have earned a special place in the realm of luxury home decor.',
                        style: kNormalText,
                        textAlign: TextAlign.justify,
                      ),
                    ),
                    Image(image: AssetImage('assets/images/Handicrafts/Carousel/Carpet/Carpet.png'))
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom:8.0, left: 8.0),
                    child: Text(
                      'History',
                      style: kHeading,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:8.0,top: 8.0,right: 8.0),
                    child: Text(
                      'The origins of Kashmiri carpets trace back to ancient times, with historical records suggesting that carpet weaving in the region began during the reign of Zain-ul-Abidin (Budshah) in the 15th century. However, the art form is believed to have been introduced even earlier, during the period of Hazrat Mir Syed Ali Hamdani, a Sufi mystic who brought skilled artisans from Persia to Kashmir via the silk route. This migration of artisans played a pivotal role in establishing Kashmir as a hub for exquisite carpet weaving.\n Over the centuries, the craft of carpet making in Kashmir flourished, and the weavers developed unique styles and motifs that reflected the region\'s cultural heritage. Kashmiri carpets gained recognition and acclaim worldwide, becoming highly sought-after luxury items in the global market.',
                      style: kNormalText,
                      textAlign: TextAlign.justify,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                margin: EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom:8.0),
                      child: Text(
                        'The  Process of Carpet Making',
                        style: kHeading,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom:8.0),
                      child: Text(
                        'The creation of a Kashmiri carpet is a painstaking and time-consuming process, involving multiple skilled artisans. The process can be broken down into three main steps: Designing, Dyeing, and Weaving.',
                        style: kNormalText,
                        textAlign: TextAlign.justify,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Text(
                        'Designing a Carpet (Talim)',
                        style: kSubHeading,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Text(
                        'The process begins with designing the carpet. Talented designers finalize the patterns, motifs, and color combinations that will be used in the carpet. The intricate details are carefully planned, and the final layout is determined. The weavers follow a written code known as "Talim", which acts as a blueprint for creating the carpet.',
                        style: kNormalText,
                        textAlign: TextAlign.justify,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 12.0, bottom: 12.0),
                      child: Image(image: AssetImage('assets/images/Handicrafts/Carousel/Carpet/Talim.png')),
                    ),
                    
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Text(
                        'Dyeing',
                        style: kSubHeading,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Text(
                        'Once the design is established, the yarn is sent for dyeing. The selection of high-quality dyes is crucial, as it determines the vibrancy and longevity of the colors in the carpet. Azo-free, chrome, and eco-friendly dyes are preferred to ensure environmental sustainability. After dyeing, the yarn is left to dry under the sunlight, enhancing the natural beauty of the colors.',
                        style: kNormalText,
                        textAlign: TextAlign.justify,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 12.0, bottom: 12.0),
                      child: Image(image: AssetImage('assets/images/Handicrafts/Carousel/Carpet/Yarn.png')),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Text(
                        'Weaving',
                        style: kSubHeading,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Text(
                        'The most critical phase of carpet making is the weaving process, where skilled weavers bring the design to life. The process can take several months to years, depending on the size and complexity of the carpet. Here\'s an overview of the weaving process:',
                        style: kNormalText,
                        textAlign: TextAlign.justify,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 12.0, bottom: 12.0),
                      child: Image(image: AssetImage('assets/images/Handicrafts/Carousel/Carpet/Weave.png')),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Text(
                        '- The weaver sets up a loom and prepares a strong foundation of vertical threads known as "warp" and horizontal threads called "weft." The warp runs vertically through the loom, while the weft runs horizontally.\n - Weaving usually starts from the bottom of the loom, with several wefts passed through the warps to create a sturdy base.\n - The dyed yarn is then meticulously knotted around consecutive sets of adjacent warps, forming rows of knots. As more rows are tied, the knots become the pile of the carpet, creating its unique texture. \n - Between each row of knots, additional shots of weft are passed to secure the knots firmly in place.\n - To ensure a tight and even finish, the wefts are beaten down using a comb-like instrument known as the "comb beater." \n - Upon completing the weaving, the warp ends from the fringes, which may be weft-faced, tasseled, or otherwise treated.',
                        style: kNormalText,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 12.0, bottom: 12.0),
                      child: Image(image: AssetImage('assets/images/Handicrafts/Carousel/Carpet/Weave1.png')),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Text(
                        'The craftsmanship and dedication involved in creating a Kashmiri carpet result in a masterpiece that is cherished by homeowners and collectors alike. These carpets adorn living rooms, bedrooms, foyers, and coffee tables, adding elegance and luxury to any space.',
                        style: kNormalText,
                        textAlign: TextAlign.justify,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 12.0, bottom: 12.0),
                      child: Image(image: AssetImage('assets/images/Handicrafts/Carousel/Carpet/kaleen.png')),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Text(
                        'In conclusion, Kashmiri carpets represent the epitome of artistry and tradition. Their history, deeply rooted in the rich culture of Kashmir, continues to captivate people worldwide. From the design stage to the final weaving, each step is meticulously executed, resulting in a true masterpiece that stands as a testament to the skill and creativity of Kashmiri artisans.',
                        style: kNormalText,
                        textAlign: TextAlign.justify,
                      ),
                    )
                  ],
                ),
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
                  style: kNormalText,
                  textAlign: TextAlign.justify,),
                  SizedBox(height: 20,),
                  Image(image: AssetImage('assets/images/Handicrafts/Carousel/Paper-Mache/PaperMache.png')),
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
                  style: kNormalText,
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
                  style: kNormalText,
                  textAlign: TextAlign.justify,),
                  SizedBox(
                  height: 5,
                ),
                  Text('Sakhtsazi',
                  style: kSubHeading,),
                  SizedBox(
                  height: 10,
                ),
                Image(image: AssetImage('assets/images/Handicrafts/Carousel/Paper-Mache/Sakthsazi.png')),
                 SizedBox(
                  height: 20,
                ),
                  Text('The sakthsazi is the one involved with making the object with the pulp of paper. First of all, the waste paper is soaked in water for several days. Then, a mixture of the soaked waste paper, cloth and the straw of a rice plant is pounded manually in a stone mortar. This is pounded until the mixture becomes very fine and forms a pulp. Then, a rice based glue called ‘Atij’ is combined with this pulp mixture.This complete mixture is then applied onto the desired mould and then left to dry for a few days. After it has dried out, the artwork is very carefully separated from the mould. The artwork is basically cut in two halves to separate it from the mould and the halves are carefully joined with the help of glue. The resultant object that is obtained is known as ‘Kalib’. Then, for the next step, the kalib is handed over to the women. This process is referred to as ‘Pishlawun’. As the next step, the women smoothen out the surface of the artwork with either a stone, baked clay or a wooden file.After the object is nicely smoothened out, it is coated with a light layer of paint/ lacquer. It is coated again with a second coat of lacquer mixed with some chalk powder and water. This is again left to dry out for some time.After the sakthsazi’s work is done, the artwork/ object is handed over to the Naqash.',
                  style: kNormalText,
                  textAlign: TextAlign.justify,),
                   SizedBox(
                  height: 20,
                ),
                  Text('Naqashi',
                  style: kSubHeading,),
                  SizedBox(
                  height: 10,
                ),
                 Image(image: AssetImage('assets/images/Handicrafts/Carousel/Paper-Mache/Naqashi.png')),
                SizedBox(
                  height: 20,
                ),
                  Text('When the object reaches the Naqash, it is first covered with thin sheets of butter paper. The butter paper is pasted so that it acts as a barrier between the main object and the paintwork so that the object doesn’t crack. After covering with butter paper, a thin coat of paint is applied all over the artwork. This is actually the step where the object is transformed into the beautiful piece of paper mache handicraft that we know. This work is also very intricate and usually takes about 3 days to a week. The designs are first drawn free hand on the object and then they are painted. The designer uses various different motifs like flowers, fruits, birds, creepers etc.Mostly metallic paints are used for an illuminated effect. After the motifs are painted, often gold or silver is used to highlight them. Mostly the colors that are used for painting are all organic and either nature or vegetable-based. When the whole painting procedure is completed, the final step involves covering the artwork with a layer of varnish for an added shine.This is the whole procedure that goes into making paper mache crafts. It is an extensive process that requires a lot of patience and attention to detail. But, the whole process is worth it as the end result is absolutely stunning.Even though these handicrafts are made using paper, the extensive process that goes into making them is what makes these handicrafts extremely durable. Each of these individually created items has a unique story to tell. The Kashmir paper mache crafts are largely pursued by the Shia sect of the Kashmiri Muslims.',
                  style: kNormalText,
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
                    style: kNormalText,
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Image(image: AssetImage('assets/images/Handicrafts/Carousel/Shawl/Shawl.png'))
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
                    style: kNormalText,
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
                    style: kNormalText,
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
                    style: kNormalText,
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Image(image: AssetImage('assets/images/Handicrafts/Carousel/Shawl/ShawlRaw.jpeg')),
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
                    style: kNormalText,
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Image(image: AssetImage('assets/images/Handicrafts/Carousel/Shawl/ShawlSpin.jpeg')),
                  SizedBox(
                    height: 20,
                  ),
                  Image(image: AssetImage('assets/images/Handicrafts/Carousel/Shawl/ShawlThread.png')),
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
                    style: kNormalText,
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Image(image: AssetImage('assets/images/Handicrafts/Carousel/Shawl/ShawlDye.jpeg')),
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
                    style: kNormalText,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Image(image: AssetImage('assets/images/Handicrafts/Carousel/Shawl/ShawlWeave.jpg')),
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
                    style: kNormalText,
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Image(image: AssetImage('assets/images/Handicrafts/Carousel/Shawl/ShawlWash.png')),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'The entire process of making a Kashmiri shawl is a true labor of love and craftsmanship. Each step is carried out with utmost care, preserving the traditional techniques that have been passed down through generations. The result is a masterpiece of art and luxury, a Kashmiri shawl that stands as a testament to the rich cultural heritage and skill of the artisans of Kashmir.',
                    style: kNormalText,
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

class CopperPage extends StatelessWidget {
  const CopperPage({super.key});

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
              'The Craft of Copperware- TRAM',
              style: kHeading,
            )),
            Container(
              margin: EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Text(
                    'Kashmiri Copperware is a renowned and exquisite form of metal craft that has been practiced in the Kashmir Valley of India for centuries. The artisans of Kashmir are skilled in the art of handcrafting beautiful copper items, known for their intricate designs, unmatched craftsmanship, and rich cultural heritage. The tradition of crafting copperware in Kashmir has been passed down through generations, and it continues to be an essential part of the region\'s artistic and cultural identity.',
                    style: kNormalText,
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Image(image: AssetImage('assets/images/Handicrafts/Carousel/Copper/Copper.png'))
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
                    'The history of Kashmiri Copperware dates back to ancient times, with evidence of copper artifacts found in archaeological excavations. The craft gained prominence during the Mughal period in the 15th and 16th centuries when the Mughal emperors showed immense appreciation for the fine craftsmanship of the Kashmiri artisans.\n During the Mughal era, the art of copperware witnessed significant refinement, with artisans incorporating delicate floral patterns, intricate engravings, and fine detailing into their creations. The demand for Kashmiri Copperware spread beyond the region\'s boundaries, and it became a prized possession for nobility and royalty across the Indian subcontinent. \n With time, the craft evolved and adapted to changing tastes and preferences, but its essence remained intact. Today, Kashmiri Copperware stands as a symbol of artistic expression and a reflection of the region\'s vibrant cultural heritage.',
                    style: kNormalText,
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
                    'The  Process of Making Kashmiri Copperware',
                    style: kHeading,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Creating Kashmiri Copperware is a meticulous and time-consuming process that involves several intricate steps. The artisans, known as "Kansaras," skillfully execute each stage to produce the exquisite final products. Here is an overview of the traditional process:',
                    style: kNormalText,
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text('1.   Raw Material Selection:', style: kSubHeading,),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Kashmiri shawls are made from different types of wool, such as fine Merino wool and Pashmina. Pashmina wool, derived from the undercoat of Changthangi goats found in the high-altitude regions of the Himalayas, is highly prized for its exceptional softness and warmth.',
                    style: kNormalText,
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Image(image: AssetImage('assets/images/Handicrafts/Carousel/Copper/Rawcopper.jpg')),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    '2.   Sheet Hammering:',
                    style: kSubHeading,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'The selected copper sheets are then heated to make them malleable. The artisans skillfully hammer the heated copper sheets to achieve the desired shape and thickness. This process requires precision and experience to avoid any deformities.',
                    style: kNormalText,
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Center(child: Image(image: AssetImage('assets/images/Handicrafts/Carousel/Copper/CopperHammer.jpg'))),
                  SizedBox(
                    height: 20,
                  ),
                   SizedBox(
                    height: 20,
                  ),
                  Text(
                    '3.   Cutting and Shaping:',
                    style: kSubHeading,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Once the copper sheet has been adequately hammered, the artisans cut it into specific shapes based on the intended design of the final product. Traditional tools like chisels and hammers are used for this purpose.',
                    style: kNormalText,
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Image(image: AssetImage('assets/images/Handicrafts/Carousel/Copper/CopperShape.jpg')),
                  SizedBox(
                    height: 20,
                  ),
                   Text(
                    '4.   Engraving and Embossing:',
                    style: kSubHeading,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'This is the most intricate and artistic stage of the process. The artisans meticulously engrave intricate patterns and motifs onto the surface of the copper using specialized tools. The designs often depict floral patterns, Islamic geometric motifs, and scenes from nature or local culture.',
                    style: kNormalText,
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Image(image: AssetImage('assets/images/Handicrafts/Carousel/Copper/CopperEngrave.jpeg')),
                  SizedBox(
                    height: 20,
                  ),
                 Text(
                    '5.   Annealing and Tempering:',
                    style: kSubHeading,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'To enhance the strength and durability of the copperware, the partially completed item is heated and then cooled slowly in a process known as annealing and tempering. This ensures that the copperware can withstand everyday use and maintain its shape.',
                    style: kNormalText,
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Image(image: AssetImage('assets/images/Handicrafts/Carousel/Copper/CopperAnneal.jpg')),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    '6.   Buffing and Polishing:',
                    style: kSubHeading,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'After annealing, the copperware is polished to achieve a smooth and lustrous finish. The buffing process enhances the shine of the metal and brings out the intricate engravings.',
                    style: kNormalText,
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Center(child: Image(image: AssetImage('assets/images/Handicrafts/Carousel/Copper/CopperKalai.png'))),
                  SizedBox(
                    height: 20,
                  ), 
                  Text(
                    '7.   Tinning and Lacquering:',
                    style: kSubHeading,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'In some cases, the interior of the copperware is lined with a layer of tin to prevent any reaction with food or beverages. Additionally, to preserve the shine and prevent tarnishing, a coat of lacquer is applied to the exterior.',
                    style: kNormalText,
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    '8.   Final Finishing:',
                    style: kSubHeading,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'The last step involves giving the copperware its final touches, ensuring that it meets the desired quality standards. The finished product is now ready to be admired and cherished by art connoisseurs and enthusiasts alike.',
                    style: kNormalText,
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Image(image: AssetImage('assets/images/Handicrafts/Carousel/Copper/CoppweFinal.jpg')),
                  SizedBox(
                    height: 20,
                  ), 
                  Text('Kashmiri Copperware is not merely a decorative piece; it is an embodiment of the artistic legacy of Kashmir and a testament to the skill and dedication of its artisans. The craft continues to thrive in the modern era, attracting admirers from all around the world who appreciate the beauty and cultural significance of this remarkable art form.',
                  style: kNormalText,
                  textAlign: TextAlign.justify,)
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}


/////////////////////////////////////TILLA WORK///////////////////////

class TillaPage extends StatelessWidget {
  const TillaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Text(
                'Tilla Work',
                style: kHeading,
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: Text(
                'Kashmiri Tilla embroidery, also known as Zari work, is a form of embroidery that has its roots in the Kashmir Valley in India. The technique is unique and distinct from other forms of embroidery due to its intricate use of metallic threads, primarily gold and silver, to create exquisite patterns and designs on various fabrics.',
                style: kNormalText,
                textAlign: TextAlign.justify,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Image(image: AssetImage('assets/images/Handicrafts/Carousel/Tilla/tilla.png')),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'History of Kashmiri Tilla',
                    style: kHeading,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Kashmiri Tilla embroidery has been a significant part of the rich cultural heritage of Kashmir for centuries. Its origins can be traced back to the Mughal era, when it was used to embellish the garments of kings and royalty. Over time, the art form became more popular and accessible, and was incorporated into the traditional dress of the Kashmiri people, including the pheran, the traditional Kashmiri robe.',
                    style: kNormalText,
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Process',
                    style: kHeading,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                      width: devW,
                      height: 300,
                      child: Image(
                        image: AssetImage('assets/images/Handicrafts/Carousel/Tilla/tilla2.jpg'),
                        fit: BoxFit.fill,
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'The process of Tilla Dozi begins with the Naqash or the designer, who draws the design over the trace paper, and perforates this paper with the help of a specialized needle, the process known as “Trombun”. Meanwhile, his assistants prepare the white and blue inks, by mixing sand from the river of Jhelum with some kerosene. The trace paper is placed carefully on the cloth and a paper weight placed over it. It is then that a duster dipped in ink (blue for dark shaded cloth and white for light shaded ones) is passed. The result causes prints of chinar leaves, paisleys and different types of Kashmiri flowers to befall these pieces of plain cloth. This, “Chaamp Traavun” is the second step in casting the beautiful embroidery.This imprinted cloth is then passed onto a Tilla artisan who uses two threads – one of staple and the other of Tilla and embroiders the plain canvas awaiting his strokes. The technique involves threading the Tilla over the fabric using a specialized needle and fastening this embellishment with a camouflaging cotton thread for a perfect and long lasting finesse. The thread of Tilla is altogether a new dimension, where malleable copper is used as an underwire and coated with silver or gold hues to achieve the desired thickness for the embroidery to be done. The Tilla threads hence obtained are of varying types – the Angora, Hiran, Murga and Peacock. Of these, the most commonly used thread is of the Hiran for it does not age, its sheen remaining unaffected across the folds of time. Once embroidered, the apparel or accessories are sent for washing and ironing for the finished piece to reflect elegance. Special care is taken that a hot iron does not come in direct contact with the Tilla, lest its sheen gets damaged by the heat.',
                    style: kNormalText,
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            Image(image: AssetImage('assets/images/Handicrafts/Carousel/Tilla/Tilla1.webp')),
          ],
        ),
      )),
    );
  }
}

///////////////////////WOODCARVINGPAGE////////////////////////////

class WoodCarvingPage extends StatelessWidget {
  const WoodCarvingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Center(
                child: Text(
                  'Wood Carving',
                  style: kHeading,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Kashmiri Wood Carving is an exquisite and ancient form of craftsmanship that has flourished in the picturesque valley of Kashmir, India, for centuries. Renowned for its intricate designs, delicate motifs, and skilled artistry, Kashmiri wood carving has been an integral part of the region\'s cultural heritage. This traditional craft showcases the remarkable talent of Kashmiri artisans who transform blocks of wood into beautiful masterpieces that reflect the rich artistic legacy and creativity of the Kashmiri people.',
                      style: kNormalText,
                      textAlign: TextAlign.justify,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
               Image(image: AssetImage('assets/images/Handicrafts/Carousel/Wood/Wood.png'),),
            
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
                      'The history of wood carving in Kashmir can be traced back to ancient times when skilled artisans carved wooden structures for temples, palaces, and other architectural marvels. The artform gained significant patronage and encouragement during the Mughal era, which lasted from the 15th to the 18th century. The Mughal emperors, particularly Emperor Akbar, admired the intricate woodwork of the region and encouraged the growth of this craft.During the Mughal period, the craft of wood carving reached its zenith, with artisans showcasing their expertise by adorning various structures and artifacts with mesmerizing carvings. Over time, wood carving evolved and integrated with local Kashmiri culture, blending traditional motifs and Islamic designs, which gave the craft a distinct identity of its own.Despite facing challenges and changes throughout history, Kashmiri wood carving has managed to retain its artistic brilliance, and today it stands as a symbol of the region\'s cultural heritage and artistic prowess.',
                      style: kNormalText,
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
                      'The Process of Making Kashmiri Wood Carving',
                      style: kHeading,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Kashmiri wood carving is a painstaking and intricate process that requires immense skill, precision, and patience. The artisans, known as "Kashmiri Karkhanedars," follow a step-by-step approach to transform raw blocks of wood into finely detailed carved pieces. Here is an overview of the traditional process:',
                      style: kNormalText,
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      '1.   Wood Selection:',
                      style: kSubHeading,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'The process begins with selecting the appropriate wood for carving. The artisans often use softwood varieties like walnut, deodar, or chinar for their work. These woods are chosen for their fine grain, which makes carving intricate patterns easier.',
                      style: kNormalText,
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Image(image: AssetImage('assets/images/Handicrafts/Carousel/Wood/woodselection.jpeg')),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      '2.   Design Creation:',
                      style: kSubHeading,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'The next step involves designing the patterns and motifs that will adorn the wooden piece. The designs are usually based on traditional Kashmiri motifs, such as the chinar leaf, floral patterns, birds, and geometric shapes. The artisans meticulously draw the designs on the wood surface as a reference for carving.',
                      style: kNormalText,
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                        child: Image(
                            image: AssetImage('assets/images/Handicrafts/Carousel/Wood/designcreation.jpg'))),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      '3.   Wood Blocking:',
                      style: kSubHeading,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'The wooden block is roughly shaped according to the intended design. The artisan uses traditional tools like chisels, gouges, and mallets to carve out the basic form of the piece.',
                      style: kNormalText,
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Image(image: AssetImage('assets/images/Handicrafts/Carousel/Wood/woodblocking.jpeg')),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      '4.   Intricate Carving:',
                      style: kSubHeading,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'With the basic outline complete, the artisan moves on to the intricate carving stage. This is a highly skilled and time-consuming process, where the artisan carves delicate and detailed patterns into the wood, following the drawn designs.',
                      style: kNormalText,
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Image(image: AssetImage('assets/images/Handicrafts/Carousel/Wood/intricatecarving.jpeg')),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      '5.   Finishing and Polishing:',
                      style: kSubHeading,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Once the carving is complete, the wooden piece undergoes a thorough sanding process to smoothen the surface and refine the details. The artisan uses fine sandpaper and abrasive materials to achieve a flawless finish.',
                      style: kNormalText,
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Image(
                        image: AssetImage('assets/images/Handicrafts/Carousel/Wood/finishingandpolishing.jpeg')),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      '6.   Staining and Varnishing:',
                      style: kSubHeading,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'After sanding, the wood carving is stained to enhance its color and bring out the natural beauty of the wood. Then, a coat of varnish or lacquer is applied to protect the surface and provide a glossy appearance.',
                      style: kNormalText,
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    // Image(image: AssetImage('assets/images/Handicrafts/Carousel/Copper/CopperKalai.png')),
                    // SizedBox(
                    //   height: 20,
                    // ),
                    Text(
                      '7.   Assembling (if applicable):',
                      style: kSubHeading,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      ' In some cases, Kashmiri wood carvings are used to decorate furniture, doors, windows, or other wooden structures. In such cases, the carved components are assembled to create the final product.',
                      style: kNormalText,
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      '8.   Final Inspection:',
                      style: kSubHeading,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'The completed wood carving undergoes a final inspection to ensure the quality and craftsmanship meet the highest standards.',
                      style: kNormalText,
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Image(image: AssetImage('assets/images/Handicrafts/Carousel/Wood/finalproductwood.png')),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Kashmiri wood carving stands as a testament to the artistic excellence and cultural heritage of the region. The dedication of the artisans, combined with the timeless beauty of the craft, continues to captivate art enthusiasts and collectors worldwide, making it a cherished and valued form of art.',
                      style: kNormalText,
                      textAlign: TextAlign.justify,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}


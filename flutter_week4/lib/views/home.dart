part of 'pages.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    IconData button = Icons.favorite_border;
    return Scaffold(
      appBar: AppBar(
        title: Text("Capella"),
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.centerRight,
                end: Alignment.centerLeft,
                colors: [Colors.brown, Colors.white])),
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            Flexible(
                flex: 2,
                child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    child: Image.asset(
                      "assets/images/Capella.jpg",
                      fit: BoxFit.fill,
                    ))),
            Flexible(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      padding: EdgeInsets.all(6),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: SizedBox.fromSize(
                          size: Size.fromRadius(38),
                          child: Image.asset(
                            "assets/images/Capella2.jpg",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(6),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: SizedBox.fromSize(
                          size: Size.fromRadius(38),
                          child: Image.asset(
                            "assets/images/Capella3.jpg",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(6),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: SizedBox.fromSize(
                          size: Size.fromRadius(38),
                          child: Image.asset(
                            "assets/images/Capella4.jpg",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(6),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: SizedBox.fromSize(
                          size: Size.fromRadius(38),
                          child: Image.asset(
                            "assets/images/Capella5.jpg",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ],
                )),
            Flexible(
                flex: 1,
                child: Row(
                  children: <Widget>[
                    Flexible(
                        child: Center(
                            child: new Text(
                      "Welcome to Capella",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ))),
                  ],
                )),
            Flexible(
              flex: 4,
              child: ListView(
                children: <Widget>[
                  Text(
                    "Capella is a designer hotel. What’s the difference between a normal hotel and a designer hotel you may ask? First of all, the designer of this hotel is Bill Bensley, a well-known designer and architect. Bill Bensley’s design aesthetic is unique. There are two things we must commend him on doing. One is that not a single tree was cut. Amazingly, they preserved every tree in the jungle. Not only that, they built on the land without changing its landscape. There are many places to stay in Bali, but seriously none of them feel as magical as Capella Ubud. Bali Resorts can create different experiences and they all can be beautiful, but to create magic is hard to achieve.There are literally thousands of places to stay in Bali. In Ubud, the cultural centre of Bali, there are probably hundreds of luxury hotels. But none of them are like Capella Ubud. Capella Ubud is really something so unique that it can not be compared to any other Ubud Bali resorts. When entering Capella, this Luxury Ubud hotel, you immediately enter a magical dimension. An enchanted place that can not be replicated. Having won Best Resort in Asia in Travel and Leisure, and reader’s choice awards, by Conde Nast Traveller, I needed to check it out for myself. ",
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(top: 100),
        child: FloatingActionButton(
          onPressed: () {
            setState(() {
              button = button == Icons.favorite
                  ? Icons.favorite_border
                  : Icons.favorite;
            });
          },
          tooltip: 'Favorite',
          backgroundColor: Colors.white,
          foregroundColor: Colors.red,
          child: Icon(button),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
    );
  }
}

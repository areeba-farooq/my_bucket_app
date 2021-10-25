
import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';

class onBoardings extends StatefulWidget {
  const onBoardings({Key? key}) : super(key: key);

  @override
  _onBoardingsState createState() => _onBoardingsState();
}

final _controller = PageController(
  initialPage: 0,
);

int _currentPage = 0;

List<Widget> _pages = [
  Column(
    children: [
      Expanded(child: Image.asset('images/bucket.png')),
       const Text('Your Grocering without stress', style: TextStyle(
          fontSize: 22,
          fontFamily: 'HindSiliguri',
          color:  Color(0xFFFF8216),
      ),),
       const Padding(
         padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
         child: Text('Shop from a wide selection of grocery items from top brands, with over 80,000 items on our online supermarket', textAlign: TextAlign.center, style: TextStyle(
          fontSize: 16,
          fontFamily: 'HindSiliguri',
          color: Color(0xFF21B894),
      ),
            ),
       )

    ],
  ),
  Column(
    children: [
      Expanded(child: Image.asset('images/discount.png')),
      const Text('Amazing Discounts & Offers', style: TextStyle(
          fontSize: 22,
          fontFamily: 'HindSiliguri',
          color:  Color(0xFFFF8216)
      ),),
      const Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
        child:  Text('Cheaper prices than your local supermarket, great discounts and cashback offers to top it off', textAlign: TextAlign.center, style: TextStyle(
          fontSize: 16,
          fontFamily: 'HindSiliguri',
          color: Color(0xFF21B894),
        ),
        ),
      )

    ],
  ),
  Column(
    children: [
      Expanded(child: Image.asset('images/doorstep.png')),
      const Text('Speedy Doorstep Delivery', style: TextStyle(
          fontSize: 22,
          fontFamily: 'HindSiliguri',
          color:  Color(0xFFFF8216)
      ),),
      const Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
        child: Text('Guaranteed same day delivery od groceries. You can pay on delivery!', textAlign: TextAlign.center, style: TextStyle(
          fontSize: 16,
          fontFamily: 'HindSiliguri',
          color: Color(0xFF21B894),
        ),
        ),
      ),
       const SizedBox(height: 50,),
      ElevatedButton(
          onPressed: (){},
          child: const Text('GET STARTED', style: TextStyle(
              fontFamily: 'ZenAntique',
              fontSize: 15,
              fontWeight: FontWeight.bold
          ),),
          style: ElevatedButton.styleFrom(
            primary: const Color(0xFFFF8216),
            fixedSize: const Size(150, 50,),
          )
      ),
    ],
  )
];
class _onBoardingsState extends State<onBoardings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView(
                controller: _controller,
                children: _pages,
              onPageChanged: (index){
                 setState(() {
                   _currentPage = index;
                 });
              },
            ),
          ),
          const SizedBox(height: 50,),
          DotsIndicator(
            dotsCount: _pages.length,
            position: _currentPage.toDouble(),
            decorator: DotsDecorator(
              size: const Size.square(9.0),
              activeSize: const Size(18.0, 9.0),
              activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0),),
              activeColor: const Color(0xFFFF8216)
            ),
          ),
          const SizedBox(height: 50,),
        ],
      ),
    );
  }
}


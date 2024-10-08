import 'package:flutter/material.dart';

class TabletView extends StatefulWidget {
  const TabletView({super.key});

  @override
  State<TabletView> createState() => _TabletViewState();
}

class _TabletViewState extends State<TabletView> {

  late PageController _pageController; 
  int totalPage = 4; 

  void _onScroll() {

}
  @override
  void initState() {
    _pageController = PageController(initialPage: 0)..addListener(_onScroll); 
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      body: Stack(
        children:[ PageView(
          controller: _pageController,
          children:  [
            Container(
              decoration: const BoxDecoration(), 
              child:  Column(
                children: [
        // Image
                  Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/icons/track_expenses.jpg'))
                  ),
                  ),
        
                  // title
                  const Text('Smart Spending'), 
                  
                  //sub title.  
                  const Text('Organize expenses and streamline your finances')
                ],
              )
            ), 
        Container(
              decoration: const BoxDecoration(color: Colors.green),
            ), Container(
              decoration: const BoxDecoration(color: Colors.pink),
            ), 
          ],
        ),
     ] )
    );
  }
}
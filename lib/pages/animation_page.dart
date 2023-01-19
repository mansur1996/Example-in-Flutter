import 'package:flutter/material.dart';

class AnimationPage extends StatefulWidget {
  const AnimationPage({Key? key}) : super(key: key);
  static const String id = "animation_page";

  @override
  State<AnimationPage> createState() => _AnimationPageState();
}

class _AnimationPageState extends State<AnimationPage>
    with SingleTickerProviderStateMixin {
  //animFade late Animation<double> _animation;
  //animResize late Animation<Size> _animation;
  //animSlide late Animation<Offset> _animation;
  //animBounce late Animation<double> _animation;
  //animFlip late Animation<double> _animation;
  //animFlip AnimationStatus _status = AnimationStatus.dismissed;

  late Animation<double> _slideAnimation;
  late Animation<double> _opacityAnimation;
  late Animation<double> _rotateAnimation;

  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(duration: const Duration(seconds: 3), vsync: this);
    //animFade _animation = CurvedAnimation(parent: _controller, curve: Curves.easeIn);

    // animResize _animation = Tween<Size>(
    //   begin: Size(400, 400),
    //   end: Size(200, 200)
    // ).animate(
    //   CurvedAnimation(parent: _controller, curve: Curves.bounceIn)
    //       ..addStatusListener((status) {
    //         if(status == AnimationStatus.completed){
    //           _controller.repeat();
    //         }
    //       })
    // );

    // animSlide _animation = Tween<Offset>(
    //     begin: Offset.zero,
    //     end: Offset(1.5, 0.0)
    // ).animate(
    //     CurvedAnimation(parent: _controller, curve: Curves.elasticIn)
    //         ..addStatusListener((status) {
    //           if(status == AnimationStatus.completed){
    //             _controller.repeat();
    //           }
    //         })
    // );

    //animBounce  _animation = Tween<double>(
    //     begin: 200,
    //     end: 0
    // ).animate(
    //     CurvedAnimation(parent: _controller,
    //         curve: const Interval(0,1, curve: Curves.elasticIn))
    //         ..addStatusListener((status) {
    //           if(status == AnimationStatus.completed){
    //             _controller.repeat(reverse: true);
    //           }
    //         })
    // );

    //animFlip _animation = Tween<double>(
    //     begin: 0,
    //     end: 1
    // ).animate(_controller)..addListener(() {
    //   setState(() {
    //
    //   });
    // })..addStatusListener((status) {
    //   _status = status;
    // });

    _rotateAnimation = Tween<double>(begin: 0, end: 1).animate(CurvedAnimation(
        parent: _controller,
        curve: const Interval(0, 0.5, curve: Curves.bounceOut)));

    _slideAnimation = Tween<double>(begin: 100, end: 600).animate(
        CurvedAnimation(
            parent: _controller,
            curve: const Interval(0.5, 1, curve: Curves.fastOutSlowIn)));

    _opacityAnimation = Tween<double>(begin: 1, end: 0).animate(CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.5, 1, curve: Curves.fastOutSlowIn)));

    // _controller.addStatusListener((status) {
    //   if(status == AnimationStatus.completed){
    //    _controller.repeat();
    //   }
    // });
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Animation",
          style: TextStyle(color: Colors.amberAccent, fontSize: 25),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: AnimatedBuilder(
          animation: _slideAnimation,
          builder: (ctx, ch) => Container(
            width: 200,
            height: 200,
            margin: EdgeInsets.only(left: 75, top: _slideAnimation.value),
            child: RotationTransition(
              turns: _rotateAnimation,
              child: Center(
                child: Text(
                  "Mansur",
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color:
                          Color.fromRGBO(0, 0, 128, _opacityAnimation.value)),
                ),
              ),
            ),
          ),
        ),

        //animFlip child: Transform(
        //   alignment: FractionalOffset.center,
        //   transform: Matrix4.identity()
        //   ..setEntry(3, 2, 0.002)
        //   ..rotateX(3.14*_animation.value),
        //   child: Container(
        //      color: Colors.blue,
        //     width: 200,
        //     height: 200,
        //     child: const Icon(Icons.accessibility_new, color: Colors.white,size: 50,),
        //   ),
        // ),

        //animBounce
        // child: AnimatedBuilder(
        //   animation: _animation,
        //   builder: (ctx, ch) => Container(
        //     width: 400,
        //     height: 400,
        //     margin: EdgeInsets.only(top: _animation.value, left: 125),
        //     child: Image.asset("assets/images/ic_image1.jpg"),
        //   ),
        // ),

        //animSlide
        // child: SlideTransition(
        //   position: _animation,
        //   child: Padding (
        //     padding: EdgeInsets.all(8),
        //     child: FlutterLogo(size: 150.0,),
        //   ),
        // ),

        // animResize
        // child: AnimatedBuilder(
        //   animation: _animation,
        //   builder: (ctx, ch) => Container(
        //     height: _animation.value.height,
        //     width: _animation.value.width,
        //     child: Image.asset("assets/images/ic_image1.jpg"),
        //   ),
        // ),

        //animFade
        // child: FadeTransition(
        //   opacity: _animation,
        //   child: SizedBox(
        //     height: 400,
        //     width: 400,
        //     child: Image.asset("assets/images/ic_image1.jpg"),
        //   ),
        // ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.play_arrow),
        onPressed: () {
          _controller.forward();
        },
      ),
    );
  }
}

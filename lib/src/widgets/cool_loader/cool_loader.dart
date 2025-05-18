import 'package:flutter/material.dart';

class CoolLoader extends StatefulWidget {
  const CoolLoader._({
    super.key,
    this.child,
    this.image,
    this.color,
  });

  const CoolLoader.custom({
    Key? key,
    required Widget child,
  }) : this._(key: key, child: child);
  final Widget? child;

  const CoolLoader.image({
    Key? key,
    ImageProvider<Object> image = const AssetImage(
      'assets/shapes/loading_spinner.png',
      package: 'fdevs_fitkit',
    ),
    Color? color,
  }) : this._(key: key, image: image, color: color);
  final ImageProvider<Object>? image;
  final Color? color;

  @override
  State<CoolLoader> createState() => _CoolLoaderState();
}

class _CoolLoaderState extends State<CoolLoader> with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 30),
      vsync: this,
      animationBehavior: AnimationBehavior.preserve,
    )..repeat();
    _animation = Tween<double>(begin: 0, end: -90).animate(_controller);
  }

  @override
  void dispose() {
    /**
    * Dispose the resources used by the CoolLoader.
    *
    * This method is called when the CoolLoader is no longer needed. It is
    * responsible for releasing any resources that were allocated by the
    * CoolLoader, such as animation controllers.
    *
    * After calling this method, the CoolLoader should no longer be used.
    *
    * @return {void} This method does not return a value.
    */
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) {
        return Transform.rotate(
          angle: _animation.value,
          child: widget.child ??
              Image(
                image: widget.image!,
                color: widget.color,
              ),
        );
      },
    );
  }
}

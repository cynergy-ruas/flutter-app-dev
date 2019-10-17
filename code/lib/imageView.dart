import 'package:flutter/material.dart';

/// widget that defines the image view
class ImageView extends StatefulWidget {

  /// defines the width of the image
  final int imageWidth;

  /// defines the height of the image
  final int imageHeight;
  ImageView({@required this.imageWidth, @required this.imageHeight});

  @override
  _ImageViewState createState() => _ImageViewState();
}

class _ImageViewState extends State<ImageView> {

  /// defines the url from where the photos will be taken.
  String _url = 'https://picsum.photos/';

  /// this is a getter method which will get the value
  /// of the [imageWidth] from [ImageView] class.
  /// to access the attributes defined in the [ImageView]
  /// class, the [widget] property of the [State] class, 
  /// which contains the reference to the corresponding 
  /// [StatefulWidget]. the 
  /// [int get imageWidth => widget.imageWidth] syntax
  /// is the same as:
  /// `int imageWidth;
  ///  void getImageWidth() {
  ///    imageWidth = widget.imageWidth;
  /// }`
  /// It is essentially a syntax sugar (shorter way) of writing
  /// a getter method
  int get imageWidth => widget.imageWidth;
  int get imageHeight => widget.imageHeight;

  /// a controller that is used to manipulate the pages that are 
  /// visible in the [PageView] widget.
  PageController _controller;

  @override
  void initState() {
    super.initState();
    /// initializing the [PageController] widget. the [viewportFraction]
    /// attribute specifies the amount of screen space (viewport) 
    /// each page should cover
    _controller = PageController(viewportFraction: 0.8);
  }

  @override
  Widget build(BuildContext context) {
    /// A [PageView] is a widget generates scrollable pages on the screen.
    /// These pages should not be confused with the pages which were used
    /// by [Navigator]s. Those pages should be called routes instead to avoid
    /// confusion. The [PageView.builder] which is a constuctor that takes a
    /// function that returns the widget that is displayed as a widget.
    return PageView.builder(
      /// the [PageController] that will be used by the [PageView] widget
      controller: _controller,
      /// the scroll direction, whether it should be scroll vertically or horizontally
      scrollDirection: Axis.horizontal,
      /// the number of pages. if null or not defined, it will generate infinite number of pages
      itemCount: 5,
      /// the function that builds the page and returns a widget. it takes a 
      /// [BuildContext] and position as arguments.
      itemBuilder: (BuildContext context, int position) {
        return Padding(
          padding: EdgeInsets.all(10),
          /// [Image.network] gets an image from the net and displays it on the screen.
          /// it takes a url which has the image and other parameters. The `fit` parameter
          /// is used to defined how the image will be fitted on the screen.
          child: Image.network(
            /// constructing the image url
            _url + imageWidth.toString() + "/" + imageHeight.toString() + "?image=" + position.toString(),
            fit: BoxFit.contain,
          ),
        );
      },
    );
  }
}
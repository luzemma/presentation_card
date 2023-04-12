import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

class CustomCircleAvatar extends StatelessWidget {
  const CustomCircleAvatar({
    super.key,
    required this.backgroundColor,
    this.svgUrl,
    this.imageUrl,
  }) : assert(
          svgUrl != null || imageUrl != null,
          'svgUrl && imageUrl are null',
        );

  final MaterialColor backgroundColor;
  final String? svgUrl;
  final String? imageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      width: 200,
      height: 200,
      child: CircleAvatar(
        backgroundColor: backgroundColor,
        backgroundImage: _buildBackgroundImage(),
      ),
    );
  }

  ImageProvider<Object> _buildBackgroundImage() {
    if (svgUrl != null) {
      return Svg(svgUrl!, source: SvgSource.network);
    }
    return NetworkImage(imageUrl!);
  }
}

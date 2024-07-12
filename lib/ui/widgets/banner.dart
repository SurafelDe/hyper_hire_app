part of 'index.dart';

class TopBanner extends StatefulWidget {
  const TopBanner({super.key});

  @override
  State<TopBanner> createState() => _TopBannerState();
}

class _TopBannerState extends State<TopBanner> {
  int currentCarouselIndex = 0;

  final List<String> carouselImages = MockData().getBannerImages();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider(
            items: carouselImages
                .map(
                  (e) => CachedNetworkImage(
                    imageUrl: e,
                    fit: BoxFit.fill,
                    width: double.maxFinite,
                  ),
                )
                .toList(),
            options: CarouselOptions(
                height: 221,
                viewportFraction: 1.0,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 8),
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                autoPlayCurve: Curves.easeInOut,
                scrollDirection: Axis.horizontal,
                onPageChanged: (index, reason) {
                  setState(() {
                    currentCarouselIndex = index;
                  });
                })),
        Positioned(
          top: 207,
          left: 0,
          right: 0,
          child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                  carouselImages.length,
                  (index) => Container(
                        margin: const EdgeInsets.all(2.5),
                        height: 4,
                        width: index == currentCarouselIndex ? 9 : 4,
                        decoration: BoxDecoration(
                            color: Colors.white.withOpacity(
                                index == currentCarouselIndex ? 1 : 0.5),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(2))),
                      ))),
        )
      ],
    );
  }
}

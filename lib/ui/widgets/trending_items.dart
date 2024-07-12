part of 'index.dart';

class TrendingItems extends StatefulWidget {
  ScrollController controller;
  TrendingItems({required this.controller, super.key});

  @override
  State<TrendingItems> createState() => _TrendingItemsState();
}

class _TrendingItemsState extends State<TrendingItems> {

  final trendingItems = MockData().getTrendingItems();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          //Header
          Container(
            height: 46,
            margin: const EdgeInsets. only(top: 12, bottom : 14),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                        '제일 핫한 리뷰를 만나보세요',
                        style: TextStyle(
                          fontSize: 12,
                          fontFamily: 'NotoSansKR',
                          color: Color(0xff616161),
                          fontWeight: FontWeight.w400,
                        )),
                    Text(
                      '리뷰️  랭킹⭐ top 3',
                      style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'NotoSansKR',
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),

                    )

                  ],
                ),

                Icon(Icons.arrow_forward_ios, color: Color(0xff1D1D1D),)
              ],
            ),
          ),

          const SizedBox(height: 14,),

          //Items List
          ListView.builder(
            shrinkWrap: true,
            controller: widget.controller,
            itemCount: trendingItems.length,
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) => Container(
              margin: const EdgeInsets.only(bottom: 16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 104,
                    width: 104,
                    decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xffCECECE), width: 1),
                        borderRadius: const BorderRadius.all(Radius.circular(4))
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 6, left: 6),
                              child: Image.asset(getCrownLink(trendingItems[index].rank), height: 15, width: 19,),
                            ),
                          ],
                        ),

                        CachedNetworkImage(
                          imageUrl: trendingItems[index].image,
                          height: 78,
                          width: 78,
                          alignment: Alignment.center,
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(width: 8),
                  Expanded(
                    child: Column(
                      children: [
                        RichText(
                          text: TextSpan(
                            text: trendingItems[index].title,
                            style: const TextStyle(
                                color: Colors.black,
                                fontFamily: 'NotoSansKR',
                                fontWeight: FontWeight.w700,
                                fontSize: 14),
                            children: [
                              TextSpan(
                                  text: trendingItems[index].name,
                                  style: const TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'NotoSansKR',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14
                                  )),
                            ],
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Column(
                            children: trendingItems[index].details
                                .map((detail) => Row(
                              children: [
                                Container(
                                  width: 4,
                                  height: 4,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Expanded(
                                  child: Text(
                                    detail,
                                    style: const TextStyle(
                                        fontFamily: 'NotoSansKR',
                                        color: Colors.black,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ))
                                .toList(),
                          ),
                        ),

                        const SizedBox(width: 6,),

                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Icon(Icons.star, color: Color(0xffFFD233), size: 12,),
                            const SizedBox(width: 3),
                            RichText(
                              text: TextSpan(
                                text: trendingItems[index].rating.toString(),
                                children: [
                                  TextSpan(
                                    text: " (${trendingItems[index].review.toString()})",
                                    style: const TextStyle(
                                        color: Color(0xFFC4C4C4),
                                        fontFamily: 'NotoSansKR',
                                        fontWeight: FontWeight.w700,
                                        fontSize: 10
                                    ),
                                  )
                                ],
                                style: TextStyle(
                                    color: AppColors.yellowColor,
                                    fontFamily: 'NotoSansKR',
                                    fontWeight: FontWeight.w700,
                                    fontSize: 10
                                ),
                              ),
                            ),

                          ],
                        ),

                        const SizedBox(height: 6,),
                        Row(
                          children: trendingItems[index].tags
                              .map((tag) => Row(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(left: 4),
                                padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 6),
                                decoration: BoxDecoration(
                                  color: const Color(0xffF0F0F0),
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                child: Text(
                                  tag,
                                  style: const TextStyle(
                                      color: Color(0xff868686),
                                      fontFamily: 'NotoSansKR',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 11
                                  ),
                                ),
                              ),
                            ],
                          ))
                              .toList(),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),

          const SizedBox(height: 12),

        ],
      ),
    );
  }

  String getCrownLink(int rank) {
    switch (rank) {
      case 1:
        return 'assets/icons/gold_crown.png';
      case 2:
        return 'assets/icons/sliver_crown.png';
      case 3:
        return 'assets/icons/bronze_crown.png';
    }
    return 'assets/icons/gold_crown.png';
  }
}

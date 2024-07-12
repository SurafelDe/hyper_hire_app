part of 'index.dart';

class TopUsers extends StatefulWidget {
  const TopUsers({super.key});

  @override
  State<TopUsers> createState() => _TopUsersState();
}

class _TopUsersState extends State<TopUsers> {
  final topReviewers = MockData().getTopReviewers();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.fromLTRB(16, 18, 0, 28),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
              '골드 계급 사용자들이예요',
              style: TextStyle(
                  color: Color(0xff616161),
                  fontFamily: 'NotoSansKR',
                  fontWeight: FontWeight.w400,
                  fontSize: 12)
          ),
          const SizedBox(height: 3,),
          const Text(
              '베스트 리뷰어 🏆 Top10',
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'NotoSansKR',
                  fontWeight: FontWeight.w500,
                  fontSize: 18)
          ),

          const SizedBox(height: 14,),

          SizedBox(
            height: 114,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: topReviewers.length,
              itemBuilder: (BuildContext context, int index) => GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileScreen(user: topReviewers[index])) );
                },
                child: Container(
                  height: 106,
                  width: 62,
                  margin: const EdgeInsets.only(right: 18),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if(topReviewers[index].isTopReviewer)
                        Container(
                          padding: const EdgeInsets.only(top: 3, left: 3),
                          height: 14,
                          child: topReviewers[index].isTopReviewer ? ImageIcon(const AssetImage('assets/icons/gold_crown.png'), size: 16, color: AppColors.yellowColor,) : Container(),
                        ),


                      Container(
                        height: 62,
                        width: 62,
                        decoration: BoxDecoration(
                          border: topReviewers[index].isTopReviewer ? Border.all(color: AppColors.yellowColor, width: 4): const Border.symmetric(),
                          image: DecorationImage(image: NetworkImage(topReviewers[index].imageUrl), fit: BoxFit.cover),
                          borderRadius: const BorderRadius.all(Radius.circular(31))
                        ),
                      ),
                      const SizedBox(height: 10,),

                      Center(
                        child: Text(
                            topReviewers[index].name,
                          style: const TextStyle(
                              color: Color(0xff616161),
                              fontFamily: 'NotoSansKR',
                              fontWeight: FontWeight.w400,
                              fontSize: 14)
                        ),
                      )

                    ],
                  ),
                ),
              )

            ),
          )
        ],
      ),
    );
  }
}

part of 'index.dart';

class Footer extends StatefulWidget {
  const Footer({super.key});

  @override
  State<Footer> createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFEEEEEE),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
              'LOGO Inc.',
              style: TextStyle(
                  color: AppColors.demiGrayColor,
                  fontFamily: 'NotoSansKR',
                  fontWeight: FontWeight.w500,
                  fontSize: 14)
          ),
          const SizedBox(height: 12,),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '회사 소개',
                  style: TextStyle(
                      color: AppColors.demiGrayColor,
                      fontFamily: 'NotoSansKR',
                      fontWeight: FontWeight.w400,
                      fontSize: 13),
                ),
                Container(
                  height: 9,
                  width: 1,
                  color: const Color(0xFFC8C8C8),
                ),
                Text(
                  '인재 채용',
                  style: TextStyle(
                      color: AppColors.demiGrayColor,
                      fontFamily: 'NotoSansKR',
                      fontWeight: FontWeight.w400,
                      fontSize: 13),
                ),
                Container(
                  height: 9,
                  width: 1,
                  color: const Color(0xFFC8C8C8),
                ),
                Text(
                  '기술 블로그',
                  style: TextStyle(
                      color: AppColors.demiGrayColor,
                      fontFamily: 'NotoSansKR',
                      fontWeight: FontWeight.w400,
                      fontSize: 13),
                ),
                Container(
                  height: 9,
                  width: 1,
                  color: const Color(0xFFC8C8C8),
                ),
                Text(
                  '리뷰 저작권',
                  style: TextStyle(
                      color: AppColors.demiGrayColor,
                      fontFamily: 'NotoSansKR',
                      fontWeight: FontWeight.w400,
                      fontSize: 13),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 6),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Icon(
                      Icons.send, color: Color(0xFFC8C8C8),
                    ),
                    const SizedBox(width: 2,),
                    Text(
                      'review@logo.com',
                      style: TextStyle(
                          color: AppColors.demiGrayColor,
                          fontFamily: 'NotoSansKR',
                          fontWeight: FontWeight.w400,
                          fontSize: 13,
                          letterSpacing: 0.95 ),
                    ),
                    Container(
                      height: 9,
                      width: 1,
                      color: const Color(0xFFC8C8C8),
                    ),
                  ],
                ),
                Container(
                  height: 24,
                  padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 1),
                  decoration: BoxDecoration(
                      border: Border.all(color: AppColors.demiGrayColor, width: 1),
                      borderRadius: const BorderRadius.all(Radius.circular(50))
                  ),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      value: 'KOR',
                      iconSize: 15,
                      iconEnabledColor: AppColors.demiGrayColor,
                      items: [
                        DropdownMenuItem(
                          value: 'KOR',
                          child: Text(
                            'KOR',
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.w400, color: AppColors.demiGrayColor),
                          ),
                        ),
                      ],
                      onChanged: (String? newValue) {},
                    ),
                  ),
                ),

              ],
            ),
          ),

          const Divider(
            color: Color(0xFFC8C8C8),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 14),
            child: Text('@2022-2022 LOGO Lab, Inc. (주)아무개  서울시 강남구',
              style: TextStyle(
                  color: AppColors.demiGrayColor,
                  fontFamily: 'NotoSansKR',
                  fontWeight: FontWeight.w400,
                  fontSize: 10),
            ),
          )
        ],
      ),
    );
  }
}

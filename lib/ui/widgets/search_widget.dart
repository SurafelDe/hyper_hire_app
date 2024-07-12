part of 'index.dart';

class GradientSearchWidget extends StatelessWidget {
  const GradientSearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      child: Container(
        height: 40,
        padding: const EdgeInsets.all(2),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: const LinearGradient(
            colors: [ Color(0xff3C41BF),Color(0xff74FBDE), ],
            begin: Alignment.centerRight,
            end: Alignment.centerLeft,
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(9),
          ),
          child: TextField(
            textAlignVertical: TextAlignVertical.center,
            decoration: InputDecoration(
              isDense: true,
              hintText: '검색어를 입력하세요',
              hintStyle: TextStyle(
                fontFamily: 'NotoSansKR',
                  fontWeight: FontWeight.w400,
                  fontSize: 12, color: AppColors.demiGrayColor),
              border: InputBorder.none,
              contentPadding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 6),
              suffixIcon: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: ImageIcon(const AssetImage('assets/icons/search.png'), color: AppColors.searchColor,)
              ),
            ),
          ),
        ),
      ),
    );
  }
}

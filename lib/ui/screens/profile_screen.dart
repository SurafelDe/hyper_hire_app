import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hyper_hire_app/ui/util/colors.dart';
import '../../model/user.dart';

class ProfileScreen extends StatefulWidget {
  final User user;

  const ProfileScreen({required this.user, super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {

  List<String> tags = [
    "“가격 저렴해요”",
    "“CPU온도 고온”",
    "“서멀작업 가능해요”",
    "“게임 잘 돌아가요”"
  ];

  List<String> images = [
    "https://s3-alpha-sig.figma.com/img/711f/c390/70903f2b92f17fd4b10ea4e94c43c5a8?Expires=1721606400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=We3Ua7JnyNNRLZAdb3Hj-joG3LqoakPN4FVjA9xNc2YMstmaQhU-o2-9bkTKw7bMmLOZYQMLHD6DEEk2UllXAVz7RakvD44CBBXivVD2zm3w4m4b~~ET9LSm-jXDL2mJJ1tuRZvLkCqGLpUYrtdKCKU96wo~p3-0~6mWGhaXAAtOWFMhXyT~0ijs37eB44xW~-YMsZ1fr5uEAdXJEA3d5hEsnWmRWgJmgVbeiTjH8SnIRF3O6NH8QY6SGDZcX7IHTDlbDCvdwmYQuRhm0D7ELchvaJK7sIOeIrY9WGnqaAi1gJexl3ga~J7dq3a4Aty2hJghrkdDoyqPXRAHrDyhvw__",
    "https://s3-alpha-sig.figma.com/img/3e00/e8c5/98023efb3c21e59db47e074e28eb0117?Expires=1721606400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=ZP5h~Dr9NFcjNUJXoGw3VH3mQnA41e-xqfU1Pk4eUpP2Xx-OVkZZzLLgugf81~EPj1ZM3GWMpF9WAwKOa1SUZFQJr50dKjRuAalWqS0Qu7zCTJUGDqIwMFw1MOPd31AbNp6xATUA2oTTAf9Oz0vPneCSs4CZLncVGT5FcI4qPhzRbhjUTu3j353efm26FfuYUkdh-U-udME5~r~zOdON27L2-lCfHWMWc~UpSIDqWgy4NSpupu2lUpqB~8GiTfUtJ2YXkiFpuGPSZezh37x5JabP66fKp2pL56Ckv~E8ACyBUkxkwrCtJVxvuFhfcnjhn3dL3GFrVFmFcSJTbgwdHQ__",
    "https://s3-alpha-sig.figma.com/img/f5f2/ece2/963715ffa8fe9764c0d05975c5f4861c?Expires=1721606400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=ati9c2xUZDJIznKTjl3ZKmmEsEfGMg0zHREHyUp4oVkZuvE-mQyj0i1fi58ypbkSskYIv998~xbuW-Vw0jzaaf-OjWCX-0KhELdM1bxZNCLn3hS~JaBF30UDuHJa4DG-RlYvqk~9dzY9pOx4Y6-RPFiISiKUUdjizzPX1tZ45YD7tVKSv4WWTZtwPnZXc5njPm5v~DdXjRdDJ79kDd1EHj95CaIJ6VWRshizIHJKF9uqQj0yMrcvDwRrJIo0WldJbO5SU~CajPE8fY6d6t0nEtEWSk3CGj4rUzI2CL2V~hKemhPK~IWXPNSuE2IKSw48CxMTPXefrkRUZ6l-JoBPPA__",
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          borderRadius: BorderRadius.circular(100),
          onTap: () {
            Navigator.of(context).pop();
          },
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: ImageIcon(
              AssetImage('assets/icons/back.png'),
              size: 24,
            ),
          ),
        ),
        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 10),
            Text('랭킹 1위',
              style: TextStyle(
                fontFamily: 'NotoSansKR',
                color: AppColors.demiGrayColor,
                fontWeight: FontWeight.w400,
                fontSize: 10,
              ),
            ),
            const Text('베스트 리뷰어',
              style: TextStyle(
                fontFamily: 'NotoSansKR',
                  color: Color(0xff1D1D1D),
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
              ),
            ),
            const SizedBox(height: 8,)
          ],
        ),
        centerTitle: true,
        elevation: 1,
        shadowColor: const Color(0xFFD9D9D9),
        surfaceTintColor: Colors.transparent,
        backgroundColor: Colors.white,
        toolbarHeight: 55,
      ),
      backgroundColor: AppColors.lightGray,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [

            //Profile Section
            Container(
              padding: const EdgeInsets.symmetric(vertical:  24),
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 12),
                    child: CircleAvatar(
                      radius: 60,
                      foregroundImage: NetworkImage(
                        widget.user.imageUrl,
                      ),
                    ),
                  ),

                  Text(
                    widget.user.name,
                    style: const TextStyle(
                      fontFamily: 'NotoSansKR',
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w500
                    ),),

                  if(widget.user.isTopReviewer)
                    Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ImageIcon(
                        const AssetImage(
                          'assets/icons/gold_crown.png',
                        ),
                        color: AppColors.yellowColor,
                        size: 20,
                      ),
                      Text(
                        '골드',
                        style: TextStyle(
                          fontFamily: 'NotoSansKR',
                          fontSize: 14,
                          color: AppColors.yellowColor,
                            fontWeight: FontWeight.w500
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 18,),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
                    decoration: BoxDecoration(
                      color: AppColors.lightGray,
                      borderRadius: const BorderRadius.all(Radius.circular(6))
                    ),
                    child: Text(
                      widget.user.detail,
                      style: TextStyle(
                        fontFamily: 'NotoSansKR',
                        color: AppColors.demiGrayColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w400
                    ),),
                    ),

                ],
              ),
            ),

            Container(
              color: Colors.white,
              margin: const EdgeInsets.symmetric(vertical: 14),

              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RichText(
                          text: const TextSpan(
                            text: '작성한 리뷰',
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'NotoSansKR',
                                fontWeight: FontWeight.w500,
                                fontSize: 16),
                            children: [
                              TextSpan(
                                  text: '총 35개',
                                  style: TextStyle(
                                      color: Color(0xff616161),
                                      fontFamily: 'NotoSansKR',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12
                                  )),
                            ],
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                        Container(
                          height: 24,
                          padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 4),
                          decoration: BoxDecoration(
                              border: Border.all(color: AppColors.demiGrayColor, width: 1),
                              borderRadius: const BorderRadius.all(Radius.circular(50))
                          ),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton<String>(
                              value: '최신순',
                              iconSize: 16,
                              iconEnabledColor: AppColors.demiGrayColor,
                              items: [
                                DropdownMenuItem(
                                  value: '최신순',
                                  child: Text(
                                    '최신순',
                                    style: TextStyle(
                                        fontSize: 12, fontWeight: FontWeight.w400, color: AppColors.demiGrayColor),
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
                  Divider(height: 1, color: AppColors.lightGray,),

                  Padding(
                    padding: const EdgeInsets.fromLTRB(16,20,16,8),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 104,
                              width: 104,
                              padding: const EdgeInsets.fromLTRB(5, 15, 5, 8),
                              decoration: BoxDecoration(
                                  border: Border.all(color: const Color(0xffCECECE), width: 1),
                                  borderRadius: const BorderRadius.all(Radius.circular(4))
                              ),
                              child: CachedNetworkImage(
                                imageUrl: "https://s3-alpha-sig.figma.com/img/d6e3/7990/83ba8a2b7ec818965a1c2eedeb558567?Expires=1721606400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=FnvW5Vp5-pmvtpjEcaVgo38jhJzNF4LVW1btUwGowtrb280ZmFpLT~LPf2kvfINd-PUpr76aw-Li5joThDpzCZ~90hNlFG2Lvo7eoCldm1gjRmf-JyFpk8Z3qW5xoelOeo4vdND9nZaU9YLEZA8jR2CH5uaSz79sfzUpmRwq1xKTFGheW3TpjGBZTOXSxRRAkdGxG8LSQUHBIBH9z25TUCKoAWFSox-N4nQ4Iw7KT1UHgzJqJGAxh2AiDadjEp79H5l3knUEYORY6Z3iTcfkZ7ivMS6doHEqDhVWWiX7jeZRs3EtbSGuJ6Ho3VCiGXBdpm1sQWgMoEK6NoIS3383fQ__",
                                height: 78,
                                width: 78,
                                alignment: Alignment.center,
                              ),
                            ),

                            const SizedBox(width: 14,),

                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 17.5),
                              child: Column(
                                children: [
                                  SizedBox(
                                    width: 187,
                                    child: RichText(
                                      text: const TextSpan(
                                        text: 'AMD 라이젠 5 ',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontFamily: 'NotoSansKR',
                                            fontSize: 14,
                                            fontWeight: FontWeight.w700),
                                        children: [
                                          TextSpan(
                                              text: '5600X 버미어 정품 멀티팩',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontFamily: 'NotoSansKR',
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 14
                                              )),
                                        ],
                                      ),
                                      // overflow: TextOverflow.ellipsis,
                                    ),
                                  ),

                                  Row(
                                    children: [
                                      ...List.generate(5, (index) => Icon(
                                        Icons.star, size: 19, color: index < 4 ? AppColors.yellowColor : AppColors.lightGray,
                                      )),
                                      const SizedBox(width: 8),

                                      const Text(
                                        "4.07",
                                        style: TextStyle(
                                            fontFamily: 'NotoSansKR',
                                            color: Colors.black,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500
                                        ),),
                                    ],
                                  )
                                ],
                              ),
                            )


                          ],
                        ),
                        const SizedBox(height: 8),
                        Divider(height: 1, color: AppColors.lightGray,),

                        const SizedBox(height: 14),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 17,
                                  foregroundImage: NetworkImage(
                                    widget.user.imageUrl,
                                  ),
                                ),
                        
                                const SizedBox(width: 6,),
                        
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      widget.user.name,
                                      style: const TextStyle(
                                          fontFamily: 'NotoSansKR',
                                          color: Colors.black,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500
                                      ),),
                        
                                    Row(
                                      children: [
                                        ...List.generate(5, (index) => Icon(
                                          Icons.star, size: 11, color: index < 4 ? AppColors.yellowColor : AppColors.lightGray,
                                        )),
                                        const SizedBox(width: 8),
                        
                                        Text(
                                          "2022.12.09",
                                          style: TextStyle(
                                              fontFamily: 'NotoSansKR',
                                              color: AppColors.demiGrayColor,
                                              fontSize: 10,
                                              fontWeight: FontWeight.w400
                                          ),),
                                      ],
                                    )
                                  ],
                                ),
                              ],
                            ),
                        
                            Image.asset(
                                'assets/icons/bookmark.png',
                                width: 14,
                                height: 21, color: AppColors.demiGrayColor
                            ),
                        
                          ],
                        ),

                        const SizedBox(height: 26,),

                        SizedBox(
                          height: 15,
                          child: ListView.builder(
                              itemCount: tags.length,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) => Padding(padding: const EdgeInsets.only(right: 20),
                            child: Text(
                                tags[index],
                                style: const TextStyle(
                                    fontFamily: 'NotoSansKR',
                                    color: Color(0xffa0a0a0),
                                    fontSize: 10,
                                    fontWeight: FontWeight.w700
                                )
                            ),)),
                        ),

                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 18),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 7, right: 10),
                                    child: Image.asset(
                                        'assets/icons/thunder.png',
                                        width: 20,
                                        height: 20,
                                        color: const Color(0xff3E3DC5)
                                    ),
                                  ),

                                  const Expanded(
                                    child: Text(
                                        '멀티 작업도 잘 되고 꽤 괜찮습니다. 저희 회사 고객님들에게도 추천 가능한 제품인 듯 합니다.',
                                        style: TextStyle(
                                            fontFamily: 'NotoSansKR',
                                            color: Color(0xff616161),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400
                                        )
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(height: 18,),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 7, right: 10),
                                    child: Image.asset(
                                        'assets/icons/thunder.png',
                                        width: 20,
                                        height: 20,
                                        color: const Color(0xffD7D7D7)
                                    ),
                                  ),

                                  const Expanded(
                                    child: Text(
                                        '3600에서 바꾸니 체감이 살짝 되네요. 버라이어티한 느낌 까지는 아닙니다.',
                                        style: TextStyle(
                                            fontFamily: 'NotoSansKR',
                                            color: Color(0xff616161),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400
                                        )
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left: 37, bottom: 15),
                          child: Row(
                            children: [
                              ...List.generate(
                                images.length, (index) => Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: ClipRRect(borderRadius: BorderRadius.all(Radius.circular(2))
                                  ,
                                  child: CachedNetworkImage(
                                      imageUrl: images[index],
                                      width: 73,
                                      height: 70,
                                      fit: BoxFit.cover
                                  ),
                                ),
                              ),),

                            ],
                          ),
                        ),


                        Divider(height: 1, color: AppColors.lightGray,),

                        const SizedBox(height: 10,),
                        const Row(
                          children: [
                            ImageIcon(AssetImage('assets/icons/chat.png'), size: 12, color: Color(0xffC4C4C4),),
                            SizedBox(width: 2,),
                            Text(
                                '댓글 달기..',
                                style: TextStyle(
                                    fontFamily: 'NotoSansKR',
                                    color: Color(0xff616161),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500
                                )
                            )
                          ],
                        )
                      ],
                    ),
                  ),

                ],
              ),

            )


          ],
        ),
      ),
    );
  }
}

import '../model/item.dart';
import '../model/user.dart';

class MockData {
  List<String> getBannerImages() {
    return [
      "https://s3-alpha-sig.figma.com/img/0b37/2c37/6f5055776aa2c0c8bc93aa3d12bced2b?Expires=1721606400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=WK7NtkURRngi4BBBT3os5V0m6y9nXirH4yWE9LNL5RcpXf7ACovU-D2-Wun315RTYSFTdg4rBYvNPAdgKHLFN7lKVAK1eo1WYMFaCjSH~nA-~fTtdnakvwv4MU1ZNnp54qpKw5fAkKTt8gw6c2T5tgw3RUffm04MT1ReBaKf24znyvQnyMxzN7lxkYX5OERM0Mcbn2J-i~4LCqNOz1~NFuom7EsvcMrOMSDhwjiuhGFplgTztjVOo4puPWAxtQn-wglpg7lZP43nezgtOrXCgTRE4DQB2AC0gK6~wzgNstr1AHQo9L1Ke6Dejt5FAWGx-RUESFfuN0oIoLoTO49vKA__",
      "https://s3-alpha-sig.figma.com/img/65fc/0caf/5e82fb1e667d5d8d1006d43778406bf7?Expires=1721606400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=K6F0CdcD1UgZlcZ~ty2Bi--yeIiZQ4Aj-KHy075OCz4hUhiTMMjmebNPbv-E0D-WNwOCOI3X9WtVqll8JOBnEcaJyqLGGmS2L~NlT-e-bA-IXhYngPt-pvma6apf9adQJ4oJQbou6SMF6hqZ7RMbtGBAgPBatv-S7~aQGkV6t3B~klexxn66revjLMMWkbNrZORyKOnQuDuus2FuhEw98PcX0z2DiAhMPOA0bP~cIhRH58saUKhMdd7IBgUUowYrQoFuf1bFUDFKTeS6UqRvK1VhYyCcSdEJMpTFO9t9AbDGaLPDs41OX2Sj62Qq-Jl~3aRnnjB8tboZw9VMh9ZgSA__",
      "https://s3-alpha-sig.figma.com/img/0fc3/11a5/47b1d21f2261630513420c15ea476a8c?Expires=1721606400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=bNFo24gsLMgkstadIbuSfVZeab-wPeAmLhoJHVBwi1N7QaXThVMplsoRGInQZHmx8I9TMVZTyARqRpE--2UDoHYohBydyN38UmntFnGBekvHzHFijMMpJ2FXCtMaWPYFkKT85-Wg2OfpMjlKmfI0I4mET3nYrS4MjxqSX9sM3ma7VdPJFOlACrJClnYGUyMqffSH43L2VrytXzH9F5cj3hteBowTlVIym16FtSomTYBhZsvn7-RMkGUJas7EUeNWRv178ciqviugNa4Hcf-h6NS0NUEH-rgf2Yv3kpqPk5Q7IBq5YC~5~ORUOk09M9AeyRmVVtZrLR9SWjjgQe9wTw__",
      "https://s3-alpha-sig.figma.com/img/65fc/0caf/5e82fb1e667d5d8d1006d43778406bf7?Expires=1721606400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=K6F0CdcD1UgZlcZ~ty2Bi--yeIiZQ4Aj-KHy075OCz4hUhiTMMjmebNPbv-E0D-WNwOCOI3X9WtVqll8JOBnEcaJyqLGGmS2L~NlT-e-bA-IXhYngPt-pvma6apf9adQJ4oJQbou6SMF6hqZ7RMbtGBAgPBatv-S7~aQGkV6t3B~klexxn66revjLMMWkbNrZORyKOnQuDuus2FuhEw98PcX0z2DiAhMPOA0bP~cIhRH58saUKhMdd7IBgUUowYrQoFuf1bFUDFKTeS6UqRvK1VhYyCcSdEJMpTFO9t9AbDGaLPDs41OX2Sj62Qq-Jl~3aRnnjB8tboZw9VMh9ZgSA__",
    ];
  }

  List<User> getTopReviewers() {
    return [
      User(
        name: 'Name01',
        detail: "조립컴 업체를 운영하며 리뷰를 작성합니다.",
        imageUrl: "https://s3-alpha-sig.figma.com/img/4a78/0a09/11831b5847bc9eca7c85d240d358f2b2?Expires=1721606400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=EPiLpq13v54lIKyUuky7e~eO0ez7zxiRY0xYQOcskeZSrvhGhiyVf67wi10hAnNp23PA1mACVuyh0tBlCDSndswLaRB3Ohryvg5Zdnju6Dqwmz4cKDqYRibLfPR6paO6x-cEutmltFlfNgjVF8oeqF2ORuc3JUf~1FLmiexeEFcDAHctwaykZ8jFn7489pSoqMf9~tseuhXkbdX3xdxgEbj2CIdWHGRCTrROwZe3kPqqWcVQsrf8k6I7plTm5bccqSUw3vmgZnrgol6segq7jdDkA30zfa6OewMJdFuxk~1bnWhGzdpST7jxCi2ZtqcuwhqOHYzHRbm8UUFbk-u8iw__",
        isTopReviewer: true,
      ),
      User(
        name: 'Name02',
        detail: "조립컴 업체를 운영하며 리뷰를 작성합니다.",
        imageUrl: "https://s3-alpha-sig.figma.com/img/9127/2fb3/4543e287173da5513463f8e8515c9aeb?Expires=1721606400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=evWmbkXrhL5NMpDrTeDjGdrTVc2Wdxqp73G-M0Xt5kxfw6hyylv0tIuBUqbbdk4G2L~5Qt6ykfVo8GEwnLaS38Qa0JOa9K1h7Jz9dTlCH6IzHUvn-RRUg75o8aZKwAiuAQfNLlUZZahFGjeXh489z3JRKSGjdK1~uAhDhZwARZVzVtlyNnXTDdNA20aXVBojfBRLnDlvPwRtUJpx9z-vgJWinwwDSvywkf-ArMghCIeFdFnjja7ABZcNcUz~cVN7xyWG3OLSWwqq51r~qgkzzjW4gCfQ~ROCUOd5qo6H32u66bnA3z1XChfN3Qs3KLPd2rHpcwRxPyWHF6-Nz56ESQ__",
        isTopReviewer: false,
      ),
      User(
        name: 'Name03',
        detail: "조립컴 업체를 운영하며 리뷰를 작성합니다.",
        imageUrl: "https://s3-alpha-sig.figma.com/img/8150/a7bc/7f10cc3e5e86af100fbcc2919c172d4c?Expires=1721606400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=Z-hae6LdEQUYcvNf~QijYFHKeWYsWFD~2e6y3wh9a0MZLZnYvm0LMgnLuEWv1~u89Qg9X-eP06wzupvgWbS8KTpA-425SeM8VqXhquAhuz1n4xeQEy9tpuvEUKZJZp9Bt-wrNUYSeFxCU3mp4v0FbJLlIw-ll8yNB9DrXjKZQF0iiQVS9xOeFjSq2fk1u3Fh25FewEr3E29CKECIs~Zw3VYCYT73g-Dvxwxhexw-ZMKR-NHkYNW2I8BNVjC-9mTIoJ-Pv3OHG4ikSXI6B-gxR0giI0FMtWJ5ZtjNLQJb1HL7302aa8Gv3Ob79z3URQqJNiKYEH6X0-taZQenFG0yaw__",
        isTopReviewer: false,
      ),
      User(
        name: 'Name04',
        detail: "조립컴 업체를 운영하며 리뷰를 작성합니다.",
        imageUrl: "https://s3-alpha-sig.figma.com/img/d85c/cf9a/5f4ab616a1bff03831fe9bc4ffe4f3fa?Expires=1721606400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=YKhvUieMv~KTxNpsoshlw4KoP0M8SJnjwDH~wxs0BnkfiVzFndTSEtC5nwAY56wyvCzRidQNbwHuluxM1fa03NQ7kbXuweQXVKIEgMlmEGFTEChn9kJGlfP7KwHM4e~E4KmGWIBMonY~Y3Wf7GVomwHwiRLtlVi1X5pAehdWQcsAoDOQrTUFEKzyhOZ3cmzeV93tWxsAttN6CIgclZlh7CHG1sqfT01uelCD97jrkX78AmV5B5B5e~XHsXeQqHXCBCblMZ1TWpo8kfmyu2BURgadZhZ9anFEoYBq2xZJ1nIl~8x-7SAL~dHEdmQvDaQjygSeCBK2eFAYANgJIAWfQw__",
        isTopReviewer: false,
      ),
      User(
        name: 'Name05',
        detail: "조립컴 업체를 운영하며 리뷰를 작성합니다.",
        imageUrl: "https://s3-alpha-sig.figma.com/img/fb57/9318/c46e5cc41830d95d5532efaf15c017f2?Expires=1721606400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=H3RYpatiw2irKcHQ6lxNnP4qffIYsEKYDHmRRCy0bGiU7h2k1pDOibQ-Hlt0tZoBU-KUvzVHMpNZ7A~KhTw6WkqaMqszyl5yM8U5ci8BHFjyQ90vrUZeIpm~FGw4EESLd~bcrGKSgQenspjucvuzTIFhBsBujHoUVNbTC2ANwcY3d9Rc23fqsjy9WE6~hP7~pefU~LBIVJvuWsVXmF4pSmgmF7KKvza9mm1d3V-IRWkeHFf3pjP9qKFK2w5pley7iMi5wEUEf~go509oMH4sQ1hlT2J0qNiG~nlWH9Xo~FXjq22JJCHg5iv91VR0pHSsn7SrWpZ7SyZMbq0QRf7FFA__",
        isTopReviewer: false,
      ),
      User(
        name: 'Name06',
        detail: "조립컴 업체를 운영하며 리뷰를 작성합니다.",
        imageUrl: "https://s3-alpha-sig.figma.com/img/ff95/93bc/a3e6028da24c9c9b919b9c85abba40a6?Expires=1721606400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=ksxXez3lQ2-jFcHg4SprRx7kthfJpCZekSAuXH-LAeJotUnkOWm4zrXmtiKQo71CIfuFQkIsQWVtQDADt0hqa4TJgeWqZx-asBKhPU0e5BFAhUu1Q9itcUQ4Gw-09yANHY1mQoWBt02LDM6YYaztOPF5RUZIpqNocg7n4JahRABS9QPUjvNiIOQJMHHTcXzZjXztjrZr-iJ14ltzVbJ3hmZjYtu7RJWn9V-Ljk27816e7-C7FnMDTVXZUnDemAOVZhLnXImBVijTCtiVzYaJ5YZnX9TegCW5p-aCH7GdoRGl5nopy2hAMs5BXl9oDHlxuVmbDIkbk1~qhNUz0KhGxA__",
        isTopReviewer: false,
      ),
      User(
        name: 'Name07',
        detail: "조립컴 업체를 운영하며 리뷰를 작성합니다.",
        imageUrl: "https://s3-alpha-sig.figma.com/img/2a28/e5ee/3b7b0552e30013e67ae4f32c5b2f2175?Expires=1721606400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=p0L-KZsm5WD003EJ5KNxOqvZYA3TQ4wngyfIHohxICGEbA063RwdzbcT1PCHRN9cPhcLaVNDEHaOpRY5jBfVPO0uim0i5hbOPGSKpm3Js5fe0q07Ov8P3OIGeZgkNS4WKosXEfdrfnUy4YJgpczIBFwE8ScKjG4jFgOIoMPFHOvdy~xuiSyU4wKNUKXBbu3RIT18eYnfyDHHWsgOK0ucTYp47qLLimD0gOSME-T2oEiU7JkO0ZqnRt-qQAC8Y1IrlY7-r16vGYQpgsiT4T4bnuN0wZIl8ag86fR5JmcMGnC8oSLDezmiYt2KUSBJJxG~YKkdOL8wk9u4FxOHX2j2pQ__",
        isTopReviewer: false,
      ),
      User(
        name: 'Name08',
        detail: "조립컴 업체를 운영하며 리뷰를 작성합니다.",
        imageUrl: "https://s3-alpha-sig.figma.com/img/bbe3/414b/b449b789a0fb4fef9911643447a3f43a?Expires=1721606400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=Iqoyg7qLKNzvIs5YXeNKnXEthr0RYzdecgiPgFHOMyN6HBR694vc1-DiUt274-T~rukAJ78y0LT5SgC7DWwleocfLX0h2hpIX-JUfhDMOWE3CKWgkW~wB4fYHYa3v~jatfLI5Ztk9rYK8ImqncLlixA83S6GVFX50dv-JWhUyOUS1as1cwIOqfdESE9sGXT4H7AcRRvH5Ax12ZEVQ-qrtNtwL55nWvUz~3fRH6B1~gR0D7UyeIU9e7-V6QJlZlEjq8GAVhRhZA4ZzKVO5gVRJFP~k2U8EvfNiuCnDn2LoLLDcv4lBiliP2sUbjNWh4Ad~p4u888U6mw3AnOIPAtxjA__",
        isTopReviewer: false,
      ),
      User(
        name: 'Name09',
        detail: "조립컴 업체를 운영하며 리뷰를 작성합니다.",
        imageUrl: "https://s3-alpha-sig.figma.com/img/6998/57e2/588d24feb6e7b551a4aaf689df1c1e5c?Expires=1721606400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=OqmvN-mmwotipLZAEvqyGFD3AGIwwDsmpyzeIVi~3ZDGmhQf0jPuofvHinLu52F8g7vRKiUN5IgAv8gSpTSeNp4eFZ3P33ASmKXnN7VF~hK4xm2sudqmhiiftyp9nK2B8JkwyRTMtRI4HiQaxS8bQ2R7quWUFeIr9Jh~fpBuClpUH~akP2WgVqXE0R3laYzB2wuUh2g1zU~MRAvqRQ3TRq82iQHu2zcvWtbB8cd71rQE9MknV8ndtXlc49qzjpHmJvxzUNPSsy9M8jTJD0kjFAm7tLhF9OQZFRwXvIMoJwhF-F~B8u~TcLSPjx21YLeFTsDIRTpYUx4Plig73NDwzw__",
        isTopReviewer: false,
      ),
      User(
        name: 'Name10',
        detail: "조립컴 업체를 운영하며 리뷰를 작성합니다.",
        imageUrl: "https://s3-alpha-sig.figma.com/img/6998/57e2/588d24feb6e7b551a4aaf689df1c1e5c?Expires=1721606400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=OqmvN-mmwotipLZAEvqyGFD3AGIwwDsmpyzeIVi~3ZDGmhQf0jPuofvHinLu52F8g7vRKiUN5IgAv8gSpTSeNp4eFZ3P33ASmKXnN7VF~hK4xm2sudqmhiiftyp9nK2B8JkwyRTMtRI4HiQaxS8bQ2R7quWUFeIr9Jh~fpBuClpUH~akP2WgVqXE0R3laYzB2wuUh2g1zU~MRAvqRQ3TRq82iQHu2zcvWtbB8cd71rQE9MknV8ndtXlc49qzjpHmJvxzUNPSsy9M8jTJD0kjFAm7tLhF9OQZFRwXvIMoJwhF-F~B8u~TcLSPjx21YLeFTsDIRTpYUx4Plig73NDwzw__",
        isTopReviewer: false,
      ),
    ];
  }

  List<Item> getTrendingItems() {
    return [
      Item(
        title: "LG전자 ",
        name: "스탠바이미 27ART10AKPL (스탠",
        image: "https://s3-alpha-sig.figma.com/img/549d/d36c/1e36c5aacf4c05f5fce089c3213136bc?Expires=1721606400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=A1yeiCO46Kl6gHNo2ZvPBomfjhx5lemkymBHWoXUY-Xk9jx-rW61lcUBjaQubV3H56E2ukPz7Ffw8LyyiWY9GId9OLzLSoeiVkwVgnyY75Phla5vVaz0NcpyLfmZonq6VHaWx6wSi2lAXUOLH5EFcfv2oTiOh2bwCV6rb~-~STDfNbBX9RzH38ctrewC-7-qTecQTmW-ZckqSYFPjXltC1tg38cKPgNf~~a6BU1QsOeteKDIAKUAilLP76HjzEQyZf8HJZYh6lT3nXUuW34f86eLfd2DthgJa9JSPVyu-kESTSyGvR-aFGOh2abiGtJ1agCtplsdY1Z3L5vYgYvU2g__",
        rank: 1,
        details: [
          "화면을 이동할 수 있고 전환도 편리하다는 점이 제일 마음에 들었어요. 배송도 빠르고 친절하게 받을 수 있어서 좋았습니다.",
          "스탠바이미는 사랑입니다!️",
        ],
        rating: 4.89,
        review: 216,
        tags: [
          "LG전자",
          "편리성",
        ],
      ),
      Item(
        title: "LG전자",
        name: "울트라HD 75UP8300KNA (스탠드)",
        image: "https://s3-alpha-sig.figma.com/img/7fee/f646/0e067717533ca19be4be517765a5e46e?Expires=1721606400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=n6uiQQ98KSxW3RmBYmzncMc683lsRK62FJUMv-5D81tZiRixRxqjlLGGHu2Z8-lnL~RXcsNF7WQCBMLUq9GV9PAwH6FEuxJK5qBEx3mM1XoRl1RwbM0Sy4NMoOR4odJOeRJdSVE2~T3rmCHKEoROCBFzh64U9lR3rn0xFSip0l5JWtzIPSLp-Ya2HwWLvDXbnRT~N5TOQAL-PiIGUfobU4FpAZyHgyHIetdq7u4EloAp43o8ICJgHQqSkQ72XVNuoC4uWZn58b89LonmVJ3RiOFwdu2mDLH4pOz7bSrNF7Ro0e5K38LmLL1RVMDo9NRCrPPYfZ6dHIqEIAHhkb2RgA__",
        rank: 2,
        details: [
          "화면 잘 나오고... 리모컨 기능 좋습니다.",
          "넷플 아마존 등 버튼하나로 바로 접속 되고디스플레이는 액정문제 없어보이고소리는 살짝 약간 감이 있으나 ^^; 시끄러울까봐 그냥 블루투스 헤드폰 구매 예정이라 문제는 없네요. 아주 만족입니다!!",
        ],
        rating: 4.36,
        review: 136,
        tags: [
          "LG전자",
          "고화질",
        ],
      ),
      Item(
        title: '라익미',
        name: "스마트 DS4001L NETRANGE (스탠드)GX30K WIN10 (SSD 256GB)",
        image: "https://s3-alpha-sig.figma.com/img/e8ab/bc87/995c29688a57abfc42ac7aef44c05bdc?Expires=1721606400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=FA9cE87EVDXI-VLJAhzBOxkUePbmSrMhf9QZ93jntNz3YNSUW7ZEwMgTlFyT9N7h9X2LRCII1jj0oiy-hDBA~h6Y~1LJx8wRls-3oVu1nMiCdYe1r6jnmbGePS3fla~MZ~k8lNlFePXkIQ~1bAumZe6sD3LRPUd08Fh9BGip0TgXQb~-2NUAmIshPUgUauGypwbN1ID1pckMiR8M0bbuxZJmsm5KAf3pDfBukvGHBu8Bi0dGrckAL49gKWTW9gRvynSq6ItZCRCxmnCPRUR2r5tz3ZwLG8bMnHpxsXl-mW96E3Z8CiInbMGx6XoKFQuy-016HzyHwakHCSEYbn9taQ__",
        rank: 3,
        details: [
          "반응속도 및 화질이나 여러면에서도 부족함을  느끼기에는 커녕 이정도에 이 정도 성능이면 차고 넘칠만 합니다",
          "중소기업TV 라익미 제품을 사용해보았는데 뛰어난 가성비와 더불어 OTT 서비스에 오픈 브라우저 까지 너무 마음에 들게끔 기능들을 사용 가능했고",
        ],
        rating: 3.98,
        review: 98,
        tags: [
          "라익미",
          "가성비",
        ],
      ),
    ];
  }
}

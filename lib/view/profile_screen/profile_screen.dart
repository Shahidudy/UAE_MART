import 'package:emart_app/common_widget/bg_widget.dart';
import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/view/profile_screen/detail_card.dart';

import '../../consts/lists.dart';
// import 'package:flutter/widgets.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
        child: Scaffold(
      body: SafeArea(
        child: Column(children: [
          //edit button
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: const Align(
              alignment: Alignment.centerRight,
              child: Icon(
                Icons.edit,
                color: whiteColor,
              ),
            ).onTap(() {}),
          ),

          //user detail section
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Image.asset(
                  imgProfile2,
                  width: 70,
                  fit: BoxFit.cover,
                ).box.roundedFull.clip(Clip.antiAlias).make(),
                10.widthBox,
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      "Shameema".text.fontFamily(semibold).white.make(),
                      "shameem@gmail.com".text.white.make(),
                    ],
                  ),
                ),
                OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        side: BorderSide(color: whiteColor)),
                    onPressed: () {},
                    child: "Logout".text.fontFamily(semibold).white.make())
              ],
            ),
          ),
          20.heightBox,
          // three buttons
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            detailsCard(
                title: "My cart",
                count: "00",
                width: context.screenWidth / 3.4),
            detailsCard(
                title: "My WishList",
                count: "288",
                width: context.screenWidth / 3.4),
            detailsCard(
                title: "My Order",
                count: "123",
                width: context.screenWidth / 3.4),
          ]),
          // 5.heightBox,

          //button section
          ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      leading: Image.asset(
                        profileButtonIcon[index],
                        width: 22,
                      ),
                      title: profileButtonList[index]
                          .text
                          .fontFamily(semibold)
                          .color(darkFontGrey)
                          .make(),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return Divider(
                      color: lightGrey,
                    );
                  },
                  itemCount: profileButtonList.length)
              .box
              .white
              .rounded
              .shadowSm
              .margin(const EdgeInsets.all(12))
              .padding(const EdgeInsets.symmetric(horizontal: 16))
              .make()
              .box
              .color(Color.fromARGB(255, 241, 20, 20))
              .make()
        ]),
      ),
    ));
  }
}

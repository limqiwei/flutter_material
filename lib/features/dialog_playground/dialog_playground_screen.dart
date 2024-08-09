import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_material/core/constants/app_colors.dart';
import 'package:flutter_material/core/helper/dialog_util.dart';
import 'package:flutter_material/core/widgets/base_scaffold.dart';
import 'package:flutter_material/core/zcore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DialogPlaygroundScreen extends ConsumerWidget {

  final String title;

  const DialogPlaygroundScreen({
    super.key,
    required this.title,
  });


  @override
  Widget build(BuildContext context, WidgetRef ref) {
    const String longText = """
    Lorem ipsum odor amet, consectetuer adipiscing elit. Senectus dapibus aliquet erat himenaeos lobortis ante. Class massa commodo habitant lorem fames? Pellentesque ultrices laoreet penatibus posuere sodales nisi sodales mauris. Nullam maximus euismod enim natoque dignissim natoque faucibus. Curabitur vestibulum malesuada sodales donec nascetur quis.
    
    Purus senectus leo netus senectus nullam urna etiam luctus. Faucibus arcu mollis nascetur ut scelerisque cras leo phasellus. Donec varius non tristique accumsan natoque; facilisis lobortis facilisi. Tempus eu tincidunt tempor ut cubilia rutrum. Suspendisse metus tellus urna nisi dis platea. Malesuada aptent magnis vel adipiscing praesent lacinia. At curae habitant donec pharetra fames ornare orci ultricies hac. Netus curae himenaeos cubilia himenaeos maecenas, pulvinar nascetur.

    Congue suscipit mattis taciti elit justo suscipit accumsan. Consequat arcu finibus tempor montes dui. Curabitur suspendisse class est et pharetra enim. Lorem integer nisl porttitor in auctor quisque imperdiet ut. Habitant malesuada mus molestie litora vulputate. Cursus ornare at etiam natoque hac. Rutrum tellus quisque ligula luctus litora potenti faucibus at?

    Nisl nisl odio consectetur elementum felis dignissim ut curae orci. Mauris vivamus dolor sem quisque donec ornare posuere egestas risus. Euismod sed ipsum rutrum neque, himenaeos mauris nostra. Congue a cubilia pharetra torquent metus; mi semper. Quam suspendisse egestas varius et velit. Potenti cubilia vehicula orci quisque sodales euismod inceptos tempus. Vitae platea fringilla vel, at neque vulputate.

    Suspendisse odio nibh placerat augue vehicula penatibus curae maecenas lacinia. Fames fusce inceptos nascetur a erat mauris amet hendrerit. Urna pharetra taciti iaculis malesuada sodales, nulla adipiscing justo habitant. Integer natoque adipiscing fermentum odio accumsan libero ante. Fermentum purus egestas ultrices ultrices eros ipsum inceptos risus. Proin ullamcorper sodales laoreet velit eros mattis. Iaculis hendrerit eu potenti leo mi nibh id.

    Parturient platea neque elementum nulla sed ultricies. Platea sem justo class ex himenaeos morbi elit. Primis etiam urna inceptos montes vestibulum risus tellus dictum quisque. Neque at litora class inceptos; dapibus duis ante pulvinar. Phasellus tellus aptent duis auctor lectus donec integer tempor a? Diam dapibus nulla dui integer vitae elementum. Ante sollicitudin morbi iaculis rutrum diam ultricies augue. Bibendum nulla velit nisi platea efficitur curabitur diam imperdiet. Consequat fames himenaeos velit ligula aliquet faucibus.
    """;

    return BaseScaffold(
      title: title,
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: () {
              DialogUtil.info(longText);
            },
            style: ElevatedButton.styleFrom(backgroundColor: AppColors.lightOrange),
            child: Text(ZCore.string.labelShowDialog))
          ],
        ),
      ),
    );
  }
}


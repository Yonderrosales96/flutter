import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomCardTypeTwo extends StatelessWidget {

  final String imageUrl;
  final String? name;

  const CustomCardTypeTwo({
    Key? key,
    required this.imageUrl,
    this.name
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 15,
      shadowColor: AppTheme.primary.withOpacity(0.4),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10)
      ),
      child: Column(
        children: [

          FadeInImage(
              image: NetworkImage(imageUrl),
              placeholder: AssetImage('assets/loading.gif'),
              width: double.infinity,
              height: 230,
              fit: BoxFit.cover,
              fadeInDuration: Duration(milliseconds: 700) ,
          ),
          if (name != null)
            Container(
                alignment: AlignmentDirectional.centerEnd,
                padding: const EdgeInsets.only(right: 20, top: 20, bottom: 10, ),
                child : Text(name!)
            )
        ],
      ),
    );
  }
}

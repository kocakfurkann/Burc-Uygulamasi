import 'package:buc_mobil/burc_detay.dart';
import 'package:buc_mobil/model/burc.dart';
import 'package:flutter/material.dart';

class BurcItem extends StatelessWidget {
  final Burc listelenenBurc;
  const BurcItem({required this.listelenenBurc, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var myTextStyle = Theme.of(context).textTheme;
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: ListTile(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => BurcDetay(secilenBurc: listelenenBurc),
              ),
            );
          },
          leading: Image.asset(
            "images/" + listelenenBurc.burcKucukResim,
          ),
          title: Text(
            listelenenBurc.burcAdi,
            style: myTextStyle.headlineSmall,
          ),
          subtitle: Text(
            listelenenBurc.burcTarihi,
            style: myTextStyle.titleMedium,
          ),
          trailing: const Icon(
            Icons.arrow_forward_ios,
            color: Colors.pink,
          ),
        ),
      ),
    );
  }
}

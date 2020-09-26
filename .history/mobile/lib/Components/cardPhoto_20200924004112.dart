import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:tcc/Modals/photoModal.dart';
import 'package:tcc/Pages/PhotoDetails/photoDetails.dart';

class CardPhoto extends StatefulWidget {
  bool isFavorite = false;

  final Photo photo;

  CardPhoto({this.photo});

  @override
  _CardPhotoState createState() => _CardPhotoState();
}

class _CardPhotoState extends State<CardPhoto> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          color: Colors.white,
          height: 90,
          width: 190,
          child: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PhotoDetails(
                                photo: widget.photo,
                              )));
                },
                child: Image.network(
                  '${widget.photo.img}',
                  fit: BoxFit.cover,
                ),
              )),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 5.0, top: 5, bottom: 5),
          child: Text(
            '${widget.photo.name}',
            style: TextStyle(
                fontFamily: 'Ubuntu',
                fontWeight: FontWeight.w700,
                fontSize: 18),
            textAlign: TextAlign.left,
          ),
        ),
        Container(
          width: 190,
          height: 16,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'Avaliações',
                style: TextStyle(fontFamily: 'Ubuntu', fontSize: 14),
              ),
              RatingBar(
                ignoreGestures: true,
                itemSize: 16,
                initialRating: 5,
                minRating: 1,
                direction: Axis.horizontal,
                itemCount: 5,
                itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
                itemBuilder: (context, _) => Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                onRatingUpdate: (double value) {},
              )
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(),
          width: 200,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Adicionar aos favoritos',
                style: TextStyle(fontFamily: 'Ubuntu', fontSize: 12),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    widget.isFavorite = !widget.isFavorite;
                  });
                },
                icon: Icon(
                  widget.isFavorite ? Icons.favorite : Icons.favorite_border,
                  color: Colors.red,
                  size: 20,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}

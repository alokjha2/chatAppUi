

class User {
  final int id;
  final String name;
  final String imageUrl;
  final bool isOnline;

User({
  required this.id,
  required this.imageUrl,
  required this.name,
  required this.isOnline,
});

}

final User elon = User(
  id: 0,
  name: "Elon musk",
  imageUrl: "assets/elon.png",
  isOnline: true
  );

final User bill = User(
  id: 1,
  name: "bill gates",
  imageUrl: "assets/bill.png",
  isOnline: true
  );


final User mark = User(
  id: 2,
  name: "mark zukerberg",
  imageUrl: "assets/mark.png",
  isOnline: false
  );


final User kevin = User(
  id: 3,
  name: "kevin systrom",
  imageUrl: "assets/kevin.png",
  isOnline: true
  );


final User steve = User(
  id: 4,
  name: "steve jobs",
  imageUrl: "assets/steve.png",
  isOnline: false
);



final User me = User(
  id: 5,
  name: "You",
  imageUrl: "assets/myimage.jpg",
  isOnline: true
  );
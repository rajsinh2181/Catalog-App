class Item{
  final String id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item({required this.id, required this.name, required this.desc, required this.price, required this.color, required this.image});
}
final products =[
  Item(
    id: "001",
    name: "iphone 12 pro",
    desc : "Apple iphone 12",
    price : 122000,
    color : "#FF0000",
    image : "https://d2d22nphq0yz8t.cloudfront.net/88e6cc4b-eaa1-4053-af65-563d88ba8b26/https://media.croma.com/image/upload/v1605271851/Croma%20Assets/Communication/Mobiles/Images/8999510245406.png/mxw_2048,f_auto",
  )
];
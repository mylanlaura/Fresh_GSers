import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Ingredient {
  Ingredient(
      { required this.name,
        required this.describeFood,
        required this.image,
        required this.price,

        required this.stars});
  String image;
  String name;
  String describeFood;
  String price;

  String stars;
}
class combo{
  combo(
      { required this.name,
        required this.describeFood,
        required this.image,
        required this.price,
        required this.ingredient,
        required this.stars});
  String image;
  String name;
  String describeFood;
  String price;
  List<Ingredient> ingredient;
  String stars;
}
List<combo> comboList =[
  combo(
      image: 'https://scontent-sin6-2.xx.fbcdn.net/v/t39.30808-6/237290462_1402946780090425_5537213565657968497_n.jpg?_nc_cat=109&ccb=1-5&_nc_sid=730e14&_nc_ohc=9QpmwX6KLlgAX_ihK4z&_nc_ht=scontent-sin6-2.xx&oh=70bbf32c7bffdac8fcc495cf3205cd54&oe=611D1443',
      name: ('combo 1'),
      price: ('185'),
      describeFood: "Sản phẩm sạch được sản xuất tại.... phù hợp với các loại đồ ăn như là .....",
      stars: '4.5',
      ingredient: [
        Ingredient(
            image: 'https://scontent.fhph1-1.fna.fbcdn.net/v/t39.30808-6/235805432_1402692163449220_1545044887764849048_n.jpg?_nc_cat=100&ccb=1-5&_nc_sid=730e14&_nc_ohc=9ynXgC3pVAkAX9ywnmH&_nc_ht=scontent.fhph1-1.fna&oh=d4719b51a1e9e1bbc9cd9a80ecc2b944&oe=611C59A3',
            name: ('Cà chua'),
            price: '15',
            describeFood: "Sản phẩm sạch được sản xuất tại.... phù hợp với các loại đồ ăn như là .....",
            stars: '4.5'),
        Ingredient(
            image: 'https://scontent.fhph1-2.fna.fbcdn.net/v/t39.30808-6/236074073_1402691836782586_6965905602395817149_n.jpg?_nc_cat=110&ccb=1-5&_nc_sid=730e14&_nc_ohc=IeqlTSrJFvMAX_MPsvC&tn=4-Ki6HBcoxvkssuM&_nc_ht=scontent.fhph1-2.fna&oh=b1d25522887a96579c5e3536c1cfc58b&oe=611D267E',
            name: ('Sườn bò'),
            price: '140',
            describeFood: "Sản phẩm sạch được sản xuất tại.... phù hợp với các loại đồ ăn như là .....",
            stars: '4.5'),
        Ingredient(
            image: 'https://scontent.fhph1-2.fna.fbcdn.net/v/t39.30808-6/236058381_1402691553449281_6342176271392722368_n.jpg?_nc_cat=105&ccb=1-5&_nc_sid=730e14&_nc_ohc=YJeaaavU67QAX_38BFV&_nc_ht=scontent.fhph1-2.fna&oh=547b8d6e0f89b068518fae040b4858bf&oe=611C9838',
            name: ('Rau muống'),
            price: '6',
            describeFood: "Sản phẩm sạch được sản xuất tại.... phù hợp với các loại đồ ăn như là .....",
            stars: '4.5'),
        Ingredient(
            image: 'https://scontent.fhph1-2.fna.fbcdn.net/v/t39.30808-6/238774147_1402691436782626_5947579689845176546_n.jpg?_nc_cat=110&ccb=1-5&_nc_sid=730e14&_nc_ohc=bRh4kYyIrY4AX8aMGzu&_nc_ht=scontent.fhph1-2.fna&oh=a2d3e44af49dfce2e68abe416ba7e7d5&oe=611BE2B8',
            name: ('Thịt chân giò'),
            price: ('160'),
            describeFood: "Sản phẩm sạch được sản xuất tại.... phù hợp với các loại đồ ăn như là .....",
            stars: '4.5'),
      ]),
  combo(
      image: 'https://scontent-sin6-3.xx.fbcdn.net/v/t39.30808-6/237057959_1402946910090412_8465735953986308807_n.jpg?_nc_cat=110&ccb=1-5&_nc_sid=730e14&_nc_ohc=aYFJO6-mRhMAX8Bk9rj&_nc_ht=scontent-sin6-3.xx&oh=066f4826b51e66a4082e2f2b085ed36e&oe=611D0095',
      name: ('combo 2'),
      price: ('117'),
      describeFood: "Sản phẩm sạch được sản xuất tại.... phù hợp với các loại đồ ăn như là .....",
      stars: '4.5',
    ingredient: [
    Ingredient(
        image: 'https://scontent.fhph1-1.fna.fbcdn.net/v/t39.30808-6/235805432_1402692163449220_1545044887764849048_n.jpg?_nc_cat=100&ccb=1-5&_nc_sid=730e14&_nc_ohc=9ynXgC3pVAkAX9ywnmH&_nc_ht=scontent.fhph1-1.fna&oh=d4719b51a1e9e1bbc9cd9a80ecc2b944&oe=611C59A3',
        name: ('Cà chua'),
        price: '15',
        describeFood: "Sản phẩm sạch được sản xuất tại.... phù hợp với các loại đồ ăn như là .....",
        stars: '4.5'),
    Ingredient(
        image: 'https://scontent.fhph1-2.fna.fbcdn.net/v/t39.30808-6/236591109_1402692360115867_4409249734492227481_n.jpg?_nc_cat=108&ccb=1-5&_nc_sid=730e14&_nc_ohc=RvkIFHuz6GAAX-yZwkL&_nc_ht=scontent.fhph1-2.fna&oh=b2c93123627bf1ad31e99b4c87b47fa1&oe=611C179F',
        name: ('Trứng gà'),
        price: '3.5',
        describeFood: "Sản phẩm sạch được sản xuất tại.... phù hợp với các loại đồ ăn như là .....",
        stars: '4.5'),
    Ingredient(
        image: 'https://scontent.fhph1-2.fna.fbcdn.net/v/t39.30808-6/236058381_1402691553449281_6342176271392722368_n.jpg?_nc_cat=105&ccb=1-5&_nc_sid=730e14&_nc_ohc=YJeaaavU67QAX_38BFV&_nc_ht=scontent.fhph1-2.fna&oh=547b8d6e0f89b068518fae040b4858bf&oe=611C9838',
        name: ('Rau muống'),
        price: '6',
        describeFood: "Sản phẩm sạch được sản xuất tại.... phù hợp với các loại đồ ăn như là .....",
        stars: '4.5'),
    Ingredient(
        image: 'https://scontent.fhph1-2.fna.fbcdn.net/v/t39.30808-6/238774147_1402691436782626_5947579689845176546_n.jpg?_nc_cat=110&ccb=1-5&_nc_sid=730e14&_nc_ohc=bRh4kYyIrY4AX8aMGzu&_nc_ht=scontent.fhph1-2.fna&oh=a2d3e44af49dfce2e68abe416ba7e7d5&oe=611BE2B8',
        name: ('Thịt chân giò'),
        price: ('160'),
        describeFood: "Sản phẩm sạch được sản xuất tại.... phù hợp với các loại đồ ăn như là .....",
        stars: '4.5'),]

  ),

];
List<Ingredient> ingredientList =[
  Ingredient(
      image: 'https://scontent.fhph1-2.fna.fbcdn.net/v/t39.30808-6/236298974_1402691323449304_5833953407179035416_n.jpg?_nc_cat=101&ccb=1-5&_nc_sid=730e14&_nc_ohc=myr7Zq9OiPkAX8uziLk&_nc_ht=scontent.fhph1-2.fna&oh=bae0b6b3d07fa675dd41ab1271309ecf&oe=611B9668',
      name: ('Thịt heo ba rọi'),
      price: ('185'),
      describeFood: "Sản phẩm sạch được sản xuất tại.... phù hợp với các loại đồ ăn như là .....",
      stars: '4.5'),
  Ingredient(
      image: 'https://scontent.fhph1-3.fna.fbcdn.net/v/t39.30808-6/236472828_1402691336782636_3531640016556662869_n.jpg?_nc_cat=103&ccb=1-5&_nc_sid=730e14&_nc_ohc=4edJhQKtiEgAX9EqA2f&_nc_ht=scontent.fhph1-3.fna&oh=3029e30b76987737883a8ad1d8d43f5a&oe=611D32B2',
      name: ('Thịt đùi heo'),
  price: ('117'),
      describeFood: "Sản phẩm sạch được sản xuất tại.... phù hợp với các loại đồ ăn như là .....",
      stars: '4.5'),

  Ingredient(
      image: 'https://scontent.fhph1-2.fna.fbcdn.net/v/t39.30808-6/238774147_1402691436782626_5947579689845176546_n.jpg?_nc_cat=110&ccb=1-5&_nc_sid=730e14&_nc_ohc=bRh4kYyIrY4AX8aMGzu&_nc_ht=scontent.fhph1-2.fna&oh=a2d3e44af49dfce2e68abe416ba7e7d5&oe=611BE2B8',
      name: ('Thịt chân giò'),
  price: ('160'),
      describeFood: "Sản phẩm sạch được sản xuất tại.... phù hợp với các loại đồ ăn như là .....",
      stars: '4.5'),

  Ingredient(
      image: 'https://scontent.fhph1-3.fna.fbcdn.net/v/t39.30808-6/236395320_1402691376782632_8982140220423791685_n.jpg?_nc_cat=102&ccb=1-5&_nc_sid=730e14&_nc_ohc=LdM2eti3Ha0AX9jdCjk&tn=4-Ki6HBcoxvkssuM&_nc_ht=scontent.fhph1-3.fna&oh=8a7cf187a30e3db3af7699437d798535&oe=611C931B',
      name: ('Sườn non'),
  price: ('180'),
      describeFood: "Sản phẩm sạch được sản xuất tại.... phù hợp với các loại đồ ăn như là .....",
      stars: '4.5'),
  Ingredient(
      image: 'https://scontent.fhph1-2.fna.fbcdn.net/v/t39.30808-6/236098059_1402691290115974_5363431561417513711_n.jpg?_nc_cat=101&ccb=1-5&_nc_sid=730e14&_nc_ohc=i-I-V8DbIksAX8H95tP&tn=4-Ki6HBcoxvkssuM&_nc_ht=scontent.fhph1-2.fna&oh=558f3805e0aec40413db513a2588e19d&oe=611BEB6C',
      name: ('Đuôi heo'),
  price: ('120'),
      describeFood: "Sản phẩm sạch được sản xuất tại.... phù hợp với các loại đồ ăn như là .....",
      stars: '4.5'),
  Ingredient(
      image: 'https://scontent.fhph1-2.fna.fbcdn.net/v/t39.30808-6/236958724_1402691646782605_7914219078912329212_n.jpg?_nc_cat=105&ccb=1-5&_nc_sid=730e14&_nc_ohc=iMKftvgXpAUAX96zr3t&_nc_ht=scontent.fhph1-2.fna&oh=815b310eecdfd58abbeb92ddced20552&oe=611C8205',
      name: ('Ức gà'),
  price: ('130'),
      describeFood: "Sản phẩm sạch được sản xuất tại.... phù hợp với các loại đồ ăn như là .....",
      stars: '4.5'),

  Ingredient(
      image: 'https://scontent.fhph1-1.fna.fbcdn.net/v/t39.30808-6/236226549_1402691316782638_64380546304509826_n.jpg?_nc_cat=100&ccb=1-5&_nc_sid=730e14&_nc_ohc=mllJ1wksf2MAX-1Cc5d&_nc_ht=scontent.fhph1-1.fna&oh=e1ea0249a2e18a08dffd342bb837427d&oe=611CF472',
      name: ('Đùi tỏi gà'),
  price: '90',
      describeFood: "Sản phẩm sạch được sản xuất tại.... phù hợp với các loại đồ ăn như là .....",
      stars: '4.5'),
  Ingredient(
      image: 'https://scontent.fhph1-1.fna.fbcdn.net/v/t39.30808-6/235884520_1402691630115940_70095613048028407_n.jpg?_nc_cat=104&ccb=1-5&_nc_sid=730e14&_nc_ohc=JdpiCds-GzkAX-5yWsv&_nc_ht=scontent.fhph1-1.fna&oh=e60d10770d7ad64708fee6b583be6a7f&oe=611BE13F',
      name: ('Cánh gà'),
  price: '90',
      describeFood: "Sản phẩm sạch được sản xuất tại.... phù hợp với các loại đồ ăn như là .....",
      stars: '4.5'),
  Ingredient(
      image: 'https://scontent.fhph1-2.fna.fbcdn.net/v/t39.30808-6/236053743_1402691716782598_8614698827823830074_n.jpg?_nc_cat=105&ccb=1-5&_nc_sid=730e14&_nc_ohc=62jPWBXI0yoAX8-p86X&tn=4-Ki6HBcoxvkssuM&_nc_ht=scontent.fhph1-2.fna&oh=426cd126a35fcf26f96d522f21c1b9b8&oe=611BEECE',
      name: ('Bắp bò'),
  price: '200',
      describeFood: "Sản phẩm sạch được sản xuất tại.... phù hợp với các loại đồ ăn như là .....",
      stars: '4.5'),
  Ingredient(
      image: 'https://scontent.fhph1-2.fna.fbcdn.net/v/t39.30808-6/236074073_1402691836782586_6965905602395817149_n.jpg?_nc_cat=110&ccb=1-5&_nc_sid=730e14&_nc_ohc=IeqlTSrJFvMAX_MPsvC&tn=4-Ki6HBcoxvkssuM&_nc_ht=scontent.fhph1-2.fna&oh=b1d25522887a96579c5e3536c1cfc58b&oe=611D267E',
      name: ('Sườn bò'),
  price: '140',
      describeFood: "Sản phẩm sạch được sản xuất tại.... phù hợp với các loại đồ ăn như là .....",
      stars: '4.5'),
  Ingredient(
      image: 'https://scontent.fhph1-2.fna.fbcdn.net/v/t39.30808-6/236821694_1402691870115916_3127238142660074289_n.jpg?_nc_cat=108&ccb=1-5&_nc_sid=730e14&_nc_ohc=YdCYDeweWtsAX8jpOAX&_nc_ht=scontent.fhph1-2.fna&oh=9421b3462de6a33562c55242549fa3d5&oe=611C1B55',
      name: ('Thăn bò'),
  price: '135',
      describeFood: "Sản phẩm sạch được sản xuất tại.... phù hợp với các loại đồ ăn như là .....",
      stars: '4.5'),
  Ingredient(
      image: 'https://scontent.fhph1-2.fna.fbcdn.net/v/t39.30808-6/236058381_1402691553449281_6342176271392722368_n.jpg?_nc_cat=105&ccb=1-5&_nc_sid=730e14&_nc_ohc=YJeaaavU67QAX_38BFV&_nc_ht=scontent.fhph1-2.fna&oh=547b8d6e0f89b068518fae040b4858bf&oe=611C9838',
      name: ('Rau muống'),
      price: '6',
      describeFood: "Sản phẩm sạch được sản xuất tại.... phù hợp với các loại đồ ăn như là .....",
      stars: '4.5'),
  Ingredient(
      image: 'https://scontent.fhph1-2.fna.fbcdn.net/v/t39.30808-6/236058381_1402691553449281_6342176271392722368_n.jpg?_nc_cat=105&ccb=1-5&_nc_sid=730e14&_nc_ohc=YJeaaavU67QAX_38BFV&_nc_ht=scontent.fhph1-2.fna&oh=547b8d6e0f89b068518fae040b4858bf&oe=611C9838',
      name: ('Rau muống'),
      price: '6',
      describeFood: "Sản phẩm sạch được sản xuất tại.... phù hợp với các loại đồ ăn như là .....",
      stars: '4.5'),
  Ingredient(
      image: 'https://scontent.fhph2-1.fna.fbcdn.net/v/t39.30808-6/235812991_1402691573449279_1441125511311123614_n.jpg?_nc_cat=109&ccb=1-5&_nc_sid=730e14&_nc_ohc=C1eII-JLBfcAX-ycLtC&_nc_ht=scontent.fhph2-1.fna&oh=33552641259d2a1a5c44c3592699e831&oe=611B8D48',
      name: ('Rau cải ngọt'),
      price: '7',
      describeFood: "Sản phẩm sạch được sản xuất tại.... phù hợp với các loại đồ ăn như là .....",
      stars: '4.5'),
  Ingredient(
      image: 'https://scontent.fhph1-2.fna.fbcdn.net/v/t39.30808-6/236156512_1402691600115943_8315461238741862776_n.jpg?_nc_cat=106&ccb=1-5&_nc_sid=730e14&_nc_ohc=tUSBf1tzJlwAX_GKwZ5&_nc_ht=scontent.fhph1-2.fna&oh=3af24009f98865a82a1ffe7f9973c64d&oe=611BB395',
      name: ('Rau cải thìa'),
      price: '7',
      describeFood: "Sản phẩm sạch được sản xuất tại.... phù hợp với các loại đồ ăn như là .....",
      stars: '4.5'),
  Ingredient(
      image: 'https://scontent.fhph1-3.fna.fbcdn.net/v/t39.30808-6/236395320_1402691470115956_531268488691001066_n.jpg?_nc_cat=103&ccb=1-5&_nc_sid=730e14&_nc_ohc=3PtaM_MMEgMAX_-be7H&_nc_oc=AQk3cllfrt7mt9WrQ255L_C2jsyJdu8OWPc2mhwFthWN2LlVvLxLx-4jMW3s-nIdmqXVc3wYpXJMzeBuRk5p5y_r&_nc_ht=scontent.fhph1-3.fna&oh=1f27866e2db1af6b3e93b9d241571bce&oe=611B9AAE',
      name: ('Rau bắp cải'),
      price: '12',
      describeFood: "Sản phẩm sạch được sản xuất tại.... phù hợp với các loại đồ ăn như là .....",
      stars: '4.5'),
  Ingredient(
      image: 'https://scontent.fhph1-2.fna.fbcdn.net/v/t39.30808-6/236622656_1402691760115927_6606538557197370286_n.jpg?_nc_cat=111&ccb=1-5&_nc_sid=730e14&_nc_ohc=ER_oj031vywAX9X1FaT&_nc_ht=scontent.fhph1-2.fna&oh=6b307922a1e54dd6a4f7732cbead6b9a&oe=611C6F85',
      name: ('Mướp'),
      price: '8',
      describeFood: "Sản phẩm sạch được sản xuất tại.... phù hợp với các loại đồ ăn như là .....",
      stars: '4.5'),
  Ingredient(
      image: 'https://scontent.fhph1-3.fna.fbcdn.net/v/t39.30808-6/235899878_1402692030115900_541246835431798920_n.jpg?_nc_cat=102&ccb=1-5&_nc_sid=730e14&_nc_ohc=cwClZew4_HoAX__1MQQ&_nc_ht=scontent.fhph1-3.fna&oh=f17e54257e4179a9b688777017bb56cc&oe=611D13DD',
      name: ('Cà tím'),
      price: '20',
      describeFood: "Sản phẩm sạch được sản xuất tại.... phù hợp với các loại đồ ăn như là .....",
      stars: '4.5'),
  Ingredient(
      image: 'https://scontent.fhph1-2.fna.fbcdn.net/v/t39.30808-6/236903733_1402692250115878_457205498329480366_n.jpg?_nc_cat=101&ccb=1-5&_nc_sid=730e14&_nc_ohc=Bu7uGjeeSmsAX88jZXG&_nc_ht=scontent.fhph1-2.fna&oh=3d80c29a5c669b2505430a6bb16acf6f&oe=611C19AC',
      name: ('Hành lá'),
      price: '10',
      describeFood: "Sản phẩm sạch được sản xuất tại.... phù hợp với các loại đồ ăn như là .....",
      stars: '4.5'),
  Ingredient(
      image: 'https://scontent.fhph1-1.fna.fbcdn.net/v/t39.30808-6/235805432_1402692163449220_1545044887764849048_n.jpg?_nc_cat=100&ccb=1-5&_nc_sid=730e14&_nc_ohc=9ynXgC3pVAkAX9ywnmH&_nc_ht=scontent.fhph1-1.fna&oh=d4719b51a1e9e1bbc9cd9a80ecc2b944&oe=611C59A3',
      name: ('Cà chua'),
      price: '15',
      describeFood: "Sản phẩm sạch được sản xuất tại.... phù hợp với các loại đồ ăn như là .....",
      stars: '4.5'),
  Ingredient(
      image: 'https://scontent.fhph1-1.fna.fbcdn.net/v/t39.30808-6/235805432_1402692163449220_1545044887764849048_n.jpg?_nc_cat=100&ccb=1-5&_nc_sid=730e14&_nc_ohc=9ynXgC3pVAkAX9ywnmH&_nc_ht=scontent.fhph1-1.fna&oh=d4719b51a1e9e1bbc9cd9a80ecc2b944&oe=611C59A3',
      name: ('Mận'),
      price: '15',
      describeFood: "Sản phẩm sạch được sản xuất tại.... phù hợp với các loại đồ ăn như là .....",
      stars: '4.5'),
  Ingredient(
      image: 'https://scontent.fhph1-2.fna.fbcdn.net/v/t39.30808-6/236591109_1402692360115867_4409249734492227481_n.jpg?_nc_cat=108&ccb=1-5&_nc_sid=730e14&_nc_ohc=RvkIFHuz6GAAX-yZwkL&_nc_ht=scontent.fhph1-2.fna&oh=b2c93123627bf1ad31e99b4c87b47fa1&oe=611C179F',
      name: ('Trứng gà'),
      price: '3.5',
      describeFood: "Sản phẩm sạch được sản xuất tại.... phù hợp với các loại đồ ăn như là .....",
      stars: '4.5'),


];

import 'package:flutter_application_3/models/models.dart';

final List<Map<String, dynamic>> rawJsonData = [
  {
    "title": "IPhone",
    "img": "https://media.gettyimages.com/id/904416788/photo/apple-iphone-x-silver-home-screen.jpg?s=612x612&w=0&k=20&c=ICr9FMcAEMh1cMrlf-8m_b3puWh5cpihJCftXXOIOr0=",
    "inStock": true,
    "price": 80000,
    "qty": 0,
  },
  {
    "title": "Mouse",
    "img": "https://media.gettyimages.com/id/173863591/photo/isolated-silver-computer-mouse-on-white-background.jpg?s=612x612&w=0&k=20&c=7z2TP7xjRih7220abTSccZzKS0nnCRD131wZ6Icr_fI=",
    "inStock": false,
    "price": 240,
    "qty": 0,
  },
  {
    "title": "Mobile Charger",
    "img": "https://media.gettyimages.com/id/1711785767/photo/usb-battery-charger-in-home-plug-energy-saving.jpg?s=612x612&w=0&k=20&c=1_xj-PaVBJ9ee00Y3D80B20FVefpECXpxk8PKizxw9I=",
    "inStock": true,
    "price": 300,
    "qty": 0,
  },
  {
    "title": "Pens",
    "img": "https://media.gettyimages.com/id/183057646/photo/set-of-eight-different-pens.jpg?s=612x612&w=0&k=20&c=ZuFoROqG5wdAR09UoqpjlaOnOABDeku6n3f0Ih9xT8o=",
    "inStock": false,
    "price": 50,
    "qty": 0
  },
  {
    "title": "Dining Chair",
    "img": "https://media.gettyimages.com/id/182713946/photo/1950s-period-furniturebent-wood-dining-chair-isolated-on-white.jpg?s=612x612&w=0&k=20&c=oDzSPVblTAgAz8CXF1VUrWfVXXA5dKv74bcunvnh0co=",
    "inStock": true,
    "price": 750,
    "qty": 0,
  },
  {
    "title": "Pendrive",
    "img": "https://media.gettyimages.com/id/1251951463/photo/usb-flash-drive-closeup-on-white-background.jpg?s=612x612&w=0&k=20&c=G5RN8i44xKD0StHtLFYux2ea_8F_-dz7NP2szcBE-ZI=",
    "inStock": true,
    "price": 220,
    "qty": 0,
  },
  {
    "title": "Photoframe",
    "img": "https://media.gettyimages.com/id/182391849/photo/empty-gold-ornate-picture-frame-with-white-background.jpg?s=612x612&w=0&k=20&c=3uKrCpggF8Q6f3IuLBJD_zpto9XsYALCvvoIL8uOrAI=",
    "inStock": true,
    "price": 340,
    "qty": 0,
  },
  {
    "title": "Headphones",
    "img": "https://media.gettyimages.com/id/1457162334/photo/black-wireless-headphones-on-a-white-background-overhead-isolated-professional-grade.jpg?s=612x612&w=0&k=20&c=au1nV9-ltsxMkTovubm1GA1PBsDpbVBHdCPoDdAMydE=",
    "inStock": false,
    "price": 210,
    "qty": 0,
  },
  {
    "title": "Airpods",
    "img": "https://media.gettyimages.com/id/2227844981/photo/wireless-bluetooth-headphones-on-orange-background.jpg?s=612x612&w=0&k=20&c=J_J5ZiUXghkgVTt_fOEM4NzG31Do2FXFpEI8IZpvoNo=",
    "inStock": true,
    "price": 4999,
    "qty": 0,
  },
  {
    "title": "Acoustic Guitar",
    "img": "https://media.gettyimages.com/id/172963467/photo/chestnut-colored-6-string-acoustic-guitar.jpg?s=612x612&w=0&k=20&c=TIYxnhxiv93hh9Du9HY3hnNuIiSRuEF80UceeEKUMyk=",
    "inStock": true,
    "price": 2499,
    "qty": 0,
  },
];
List<Item> productList = rawJsonData
    .map((jsonItem) => Item.fromJson(jsonItem))
    .toList();

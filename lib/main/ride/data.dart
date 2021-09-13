import 'package:flutter/material.dart';

class SliderModel {
  String imageAssetPath;
  String title;
  String desc;

  SliderModel(
      {required this.imageAssetPath, required this.title, required this.desc});

  void setImageAssetPath(String getImageAssetPath) {
    imageAssetPath = getImageAssetPath;
  }

  void setTitle(String getTitle) {
    title = getTitle;
  }

  void setDesc(String getDesc) {
    desc = getDesc;
  }

  String getImageAssetPath() {
    return imageAssetPath;
  }

  String getTitle() {
    return title;
  }

  String getDesc() {
    return desc;
  }
}

List<SliderModel> getSlides() {
  List<SliderModel> slides = new List.generate(0, (index) => SliderModel(imageAssetPath: '', title: '', desc: ''));
  SliderModel sliderModel = new SliderModel(desc: '', title: '', imageAssetPath: '');

  //1
  sliderModel
      .setDesc("Discover a Food Courner offering the best fast food near you");
  sliderModel.setTitle("Search......");
  sliderModel.setImageAssetPath("assets/illustration.png");
  slides.add(sliderModel);

  sliderModel = new SliderModel(desc: '', title: '', imageAssetPath: '');

  //2
  sliderModel.setDesc(
      "Our food plan is filled with delicious seasonal vegetables, whole grains, fast food , burgger , pizza etc.");
  sliderModel.setTitle("Order..... ");
  sliderModel.setImageAssetPath("assets/illustration2.png");
  slides.add(sliderModel);

  sliderModel = new SliderModel(desc: '', title: '', imageAssetPath: '');

  //3
  sliderModel.setDesc(
      "Food delivery or pickup from local restaurants, Explore restaurants that deliver near you.");
  sliderModel.setTitle("Deliver........");
  sliderModel.setImageAssetPath("assets/illustration3.png");
  slides.add(sliderModel);

  sliderModel = new SliderModel(desc: '', title: '', imageAssetPath: '');
print("asdf");
  return slides;
}

class Blog {
  final String title, description, image;
   final List<String> comments;

  Blog({required this.title, required this.description,
    required this.image,required this.comments});
}

List<Blog> blogPosts = [
  Blog(
    image: "assets/images/0.jpg",
    title: "Ultrasonic Water Meter",
    comments: [],
    description:
    "Our smart metering system helps consumers and water suppliers solve the numerous problems like saving water consumption through accurate meter reading, automated bill generation to track monthly usage, online payment for ease of bill payment, and help spot any defect in the meter and the water line. Our ultrasonic water meter is also renowned for its perfection.",
  ),
  Blog(
    image: "assets/images/1.jpg",
    title: "Smart Electric Meter",
    comments: ["This is a good post","Our smart metering system helps consumers and water suppliers solve the numerous problems like saving water.Padma smart tchnology is my favourite thing","Water flow meter is nice"],
    description:
    "Our smart electric meter is designed for accurate measurement of electricity consumption in houses, office premises,apartment buildings and industrial areas.",
  ),
  Blog(
    image: "assets/images/2.jpg",
    title: "Smart Solution Consultancy",
    comments: ["This is a good post","Padma smart tchnology is my favourite thing","Water flow meter is nice"],
    description:
    "Transform your business with our consulting services and smart solutions. We help organizations achieve its goals through digital innovation, software development and maintenance and smart iot enabled solutions",
  ),
];

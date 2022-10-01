class Products {
  final int id, price;
  final String title, subtitle, descreption, image;

  Products ({
    required this.id,
    required this.price,
    required this.descreption,
    required this.image,
    required this.subtitle,
    required this.title
});
}

List<Products> products = [
  Products(id: 1,
      price: 1999,
      descreption: 'The new M2 chip makes the 13‑inch MacBook Pro more capable than ever. The same compact design supports up to 20 hours of battery. ',
      image: 'images/moo.png',
      subtitle: 'Pro anywhere.',
      title: 'MacBook'),
  Products(id: 2,
      price: 150,
      descreption: 'Apple TV 4K brings the best of TV together with your favorite Apple devices and services — in a powerful experience that will transform your living room.',
      image: 'images/tv.png',
      subtitle: 'A higher definition of TV.',
      title: 'apple tv'),
  Products(id: 3,
      price: 1200,
      descreption: 'A lightning‑fast chip. A leap in battery life. And all‑new photo and video capabilities. iPhone 13 lets you do things you never could before — in two great sizes.',
      image: 'images/13pm.png',
      subtitle: 'Your new superpower',
      title: 'Iphone 13 Pro Max'),
  Products(id: 4,
      price: 100,
      descreption: 'Jam-packed with innovation, HomePod mini delivers unexpectedly big sound for a speaker of its size. At just 3.3 inches tall, it takes up almost no space but fills the entire',
      image: 'images/homepod.webp',
      subtitle: 'You’ve never heard color like this.',
      title: 'HomePod mini'),
  Products(id: 5, price: 1100,
      descreption: 'iPad Air lets you immerse yourself in whatever you’re reading, watching, or creating. The 10.9-inch Liquid Retina display features advanced technologies like True Tone, P3 wide color, and an antireflective coating.',
      image: 'images/ipad.png',
      subtitle: 'Light. Bright. Full of might.',
      title: 'Ipad Air'),
  Products(id: 6, price: 415,
      descreption: 'The larger display enhances the entire experience, making Apple Watch easier to use and read.',
      image: 'images/watchh.png',
      subtitle: 'Largest, most advanced display yet.',
      title: 'apple Watch SE 7'),
  Products(id: 7, price: 28,
      descreption: 'AirTag is a supereasy way to keep track of your stuff. Attach one to your keys. Put another in your backpack. And just like that, they’re on your radar in the Find My app, where you can also track down your Apple devices and keep up with friends and family.',
      image: 'images/airtaq.png',
      subtitle: 'Lose your knack for losing things.',
      title: 'AirTaq'),
  Products(id: 8, price: 400,
      descreption: 'At the heart of iPhone SE you’ll find the same superpowerful A15 Bionic chip that’s in iPhone 13.',
      image: 'images/se.png',
      subtitle: "Love the power. Love the price",
      title: 'Iphone SE'),
  Products(id: 9, price: 190,
      descreption: 'Transparency mode for hearing what’s happening around you.',
      image: 'images/airpod.png',
      subtitle: 'Active Noise Cancellation for sound.',
      title: 'AirPods Pro')

];
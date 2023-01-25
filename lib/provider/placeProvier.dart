import 'package:flutter/material.dart';

import './placeModel.dart';
class place_provider with ChangeNotifier
{
  final List<Place> _items  =  [
    Place(
        title: 'Hawa Mahal' ,
        locality: 'Badi Choupad',
        rating: '4.4',
        logoUrl: "https://media.gettyimages.com/id/1191232894/photo/hawa-mahal-jaipur-india-palace-of-the-winds-jaipur-rajasthan-india.jpg?s=612x612&w=gi&k=20&c=I9WrrK3Md-R1n3jYpJTDKTN8N3woC8hkf35lZfcK1V4=",
        bgcolor: Color(0xffFFF0EB),
        city: 'Jaipur',
        state: 'Rajasthan',
        icitz: 50,
        fcitz: 200,
        imageUrl: "https://live.staticflickr.com/7909/46436537211_f917464cce_b.jpg",
        description: "The Hawa Mahal is a palace in the city of Jaipur, India. Built"
            " from red and pink sandstone, it is on the edge of the City Palace, Jaipur, and extends to the Zenana, or women's chambers",
        timings: ["9:00 AM to 5:00 PM" , "9:00 AM to 5:00 PM" ,"9:00 AM to 5:00 PM" ,"9:00 AM to 5:00 PM" ,"9:00 AM to 5:00 PM" ,"9:00 AM to 5:00 PM" ,"9:00 AM to 5:00 PM"  ]

    ) ,

    Place(
        title: 'Amber Fort' ,
        locality: 'Devisinghpura, Amer',
        rating: '4.6',
        logoUrl: "https://www.trawell.in/admin/images/upload/151756509Jaipur_Amer_Fort_Main.jpg",
        bgcolor: Color(0xffEBF6FF),
        city: 'Jaipur',
        state: 'Rajasthan',
        icitz: 25,
        istud: 10,
        fcitz: 550,
        fstud: 100,
        imageUrl: "https://www.trawell.in/admin/images/upload/151756509Jaipur_Amer_Fort_Main.jpg",
        description: "Amer Fort or Amber Fort is a fort located in Amer, Rajasthan, India. Amer is a town with an area of 4 square kilometres located"
            " 11 kilometres from Jaipur, the capital of Rajasthan. ",

        timings: ["8:00 AM to 7:00 PM" , "8:00 AM to 7:00 PM" ,"8:00 AM to 7:00 PM" ,"8:00 AM to 7:00 PM" ,"8:00 AM to 7:00 PM" ,"8:00 AM to 7:00 PM" ,"8:00 AM to 7:00 PM" ]
    ),

    Place(
        title: 'Jantar Mantar' ,
        locality: 'J.D.A. Market, Pink City',
        rating: '4.5',
        logoUrl: "https://www.andbeyond.com/wp-content/uploads/sites/5/jamtar-mantar-jaipur.jpg",
        bgcolor: Color(0xffFFF0EB),
        city: 'Jaipur',
        state: 'Rajasthan',
        icitz: 50,
        istud: 15,
        fcitz: 220,
        fstud: 100,
        imageUrl: "https://assets.traveltriangle.com/blog/wp-content/uploads/2018/01/shutterstock_89543659.jpg",
        description: "It is one of the oldest astronomical observatories featuring the world’s largest stone sundial, "
            "located in the heart of Jaipur. It is one of the largest observatory."
           ,
        timings: ["9:00 AM to 5:00 PM" , "9:00 AM to 5:00 PM" ,"9:00 AM to 5:00 PM" ,"9:00 AM to 5:00 PM" ,"9:00 AM to 5:00 PM" ,"9:00 AM to 5:00 PM" ,"9:00 AM to 5:00 PM"]
    ) ,

    Place(
        title: 'Sheesh Mahal' ,
        locality: 'Devisinghpura, Amer',
        rating: '4.6',
        logoUrl: "https://assets.architecturaldigest.in/photos/600825851a54ece2b3ecf531/master/w_1600%2Cc_limit/mohan-mahal-restaurant-jaipur1.png",
        bgcolor: Color(0xffEBF6FF),
        city: 'Jaipur',
        state: 'Rajasthan',
        icitz: 10,
        fcitz: 50,
        imageUrl: "https://i.pinimg.com/originals/ea/58/92/ea589292b28da3698eb8ed00aabc848f.jpg",
        description: ".The Sheesh Mahal was built behind the main MotiBagh Palace to serve as a pleasure complex. The paintings in two "
            "of its well maintained , mirror-worked chambers are of Kangra ",
        timings: ["9:00 AM to 4:30 PM" , "9:00 AM to 4:30 PM" ,"9:00 AM to 4:30 PM" ,"9:00 AM to 4:30 PM" ,"9:00 AM to 4:30 PM" ,"9:00 AM to 4:30 PM" ,"9:00 AM to 4:30 PM"]
    ),

    Place(
        title: 'QutubMinar' ,
        locality: 'Seth Sarai,Mehrauli',
        rating: '4.5',
        logoUrl: "https://www.mapsofindia.com/ci-moi-images/my-india/qutub-minar-delhi.jpg",
        bgcolor: Color(0xffFFF0EB),
        city: 'Delhi',
        state: 'Delhi',
        icitz: 35,
        istud:Null,
        fcitz: 550,
        fstud:Null,
        imageUrl: "https://i0.wp.com/www.mappingmegan.com/wp-content/uploads/2018/12/Qutub-Minar-India.jpg?resize=1200%2C789&ssl=1",
        description: 'The QutubMinar is a towering 73 meter high tower built by Qutub-ud-Din Aibak in 1193.Built to celebrate Muslim dominance in Delhi after the defeat of Delhi’s last Hindu ruler.',
        timings: [ "7:00 AM – 5.00 PM" , "7:00 AM – 5.00 PM " , "7:00 AM – 5.00 PM " , "7:00 AM – 5.00PM" , "7:00 AM – 5.00 PM " , "  " , "7:00 AM – 5.00 PM " ]
    ) ,

    Place       (
        title: 'Red Fort' ,
        locality: 'NetajiSubhashMarg',
        rating: '4.4',
        logoUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRSTWeTyReopHFCrKLKP4NmzIg9m0sVp4YtVg&usqp=CAU",
        bgcolor: Color(0xffEBF6FF),
        city: 'Delhi',
        state: 'Delhi',
        icitz: 35,
        istud:Null,
        fcitz: 500,
        fstud:Null,
        imageUrl: "https://images.thequint.com/thequint%2F2021-12%2Ffa04c6ad-beba-4134-bf5d-9fac33ccc472%2FUntitled_design__59_.png",
        description: 'It is named for its massive enclosing walls of red sandstone, it is adjacent to an older fort, the Salimgarh, built by Islam Shah Suri in 1546, with which it forms the Red Fort Complex',
        timings: [ "9:00 AM – 4.30 PM" , "Closed" , "9:00 AM – 4.30 PM" , "9:00 AM – 4.30 PM" , "9:00 AM – 4.30 PM" , "9:00 AM – 4.30 PM" , "9:00 AM – 4.30 PM"]
    ) ,

    Place(
        title: 'Humayun’s Tomb' ,
        locality: 'Mathura Road',
        rating: '4.6',
        logoUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRCq6lEyEoO21yWfOCUuRhMeG7O7h2eV5czJA&usqp=CAU",
        bgcolor: Color(0xffFFF0EB),
        city: 'Delhi',
        state: 'Delhi',
        icitz: 30,
        istud:Null,
        fcitz: 500,
        fstud:Null,
        imageUrl: "https://s01.sgp1.cdn.digitaloceanspaces.com/article/169063-qcvstwzrmk-1642686041.jpg",
        description: 'It is the first of the grand dynastic mausoleums that were to become synonyms of Mughal architecture with the architectural style reaching',
        timings:[ "6.00am-6.00 pm", "6.00am-6.00pm ","6.00am-6.00pm ","6.00am-6.00pm ","6.00am-6.00pm ","6.00am-6.00pm ","6.00am-6.00 pm"]
    ) ,

    Place(
        title: 'HauzKhas Fort',
        locality: 'South Delhi',
        rating: '4.4',
        logoUrl: "https://imgmedia.lbb.in/media/2019/09/5d8b11282d6cd42645c7af4a_1569394984481.jpg",
        bgcolor: Color(0xffEBF6FF),
        city: 'Delhi',
        state: 'Delhi',
        icitz: 25,
        istud:Null,
        fcitz: 200,
        fstud:Null,
        imageUrl: "https://delhitourism.travel/images/places-to-visit/headers/hauz-khas-fort-delhi-entry-fee-timings-holidays-reviews-header.jpg",
        description: 'HauzKhas Fort was constructed during the reign of AllaudinKhilji, and the place has the remains of its glorious past. Apart from the HauzKhas Fort ruins, the complex has the royal water tank',
        timings:[ "Closed ", "10.30AM-7.00PM","10.30AM-7.00PM","10.30AM-7.00PM","10.30AM-7.00PM","10.30AM-7.00PM","10.30AM-7.00PM" ]
    ) ,

    Place(
        title: 'Taj Mahal',
        locality: 'Dharampuri',
        rating: '5.0',
        logoUrl: "https://i.natgeofe.com/n/8eba070d-14e5-4d07-8bab-9db774029063/93080_3x4.jpg",
        bgcolor: Color(0xffFFF0EB),
        city: 'Agra',
        state: 'Uttar Pradesh',
        icitz: 50,
        istud:Null,
        fcitz: 1100,
        fstud:Null,
        imageUrl: "https://images.livemint.com/img/2022/08/04/1600x900/Taj-Mahal-sylwia-bartyzel-eU4pipU_8HA-unsplash_1659578942151_1659578950109_1659578950109.jpg",
        description: 'The TajMahal is an ivory-white marble mausoleum on the south bank of the Yamuna river in the Indian city of Agra. It was commissioned in 1632 by the Mughal emperor, Shah Jahan.' ,
        timings:[ "6.00am-6.00pm ", "6.00am-6.00pm ","6.00am-6.00pm ","6.00am-6.00pm ","6.00am-6.00pm ","Closed","6.00am-6.00pm "]
    ) ,

    Place (
        title: 'Agra Fort',
        locality: 'Rakabganj',
        rating: '4.5',
        logoUrl: "https://cdn.britannica.com/38/178638-050-E072322B/Amar-Singh-Gate-Agra-Fort-India-Uttar.jpg",
        bgcolor: Color(0xffEBF6FF),
        city: 'Agra',
        state: 'Uttar Pradesh',
        icitz: 35,
        istud:Null,
        fcitz: 550,
        fstud:Null,
        imageUrl: "https://assets.traveltriangle.com/blog/wp-content/uploads/2019/08/%E0%A4%86%E0%A4%97%E0%A4%B0%E0%A4%BE-%E0%A4%95%E0%A4%BE-%E0%A4%95%E0%A4%BF%E0%A4%B2%E0%A4%BE.jpg",
        description: 'Agra Fort was the main residence of the emperors of the Mughal Dynasty till 1638, when the capital was shifted from Agra to Delhi. It is about 2.5 km northwest of its more famous sister monument, the TajMahal.',
        timings:[ "6.00am-6.00pm ", "6.00am-6.00pm ","6.00am-6.00pm ","6.00am-6.00pm ","6.00am-6.00pm ","6.00am-6.00pm","6.00am-6.00pm "]
    ) ,

    Place(
        title: 'Mariyam’s Tomb',
        locality: 'Mathura Road',
        rating: '4.0',
        logoUrl: "https://fastly.4sqi.net/img/general/600x600/6826866_L6eLa1jrmKNtlhpYA4uTQgUXYCCumLdgCyEmKjDDs1o.jpg",
        bgcolor: Color(0xffFFF0EB),
        city: 'Agra',
        state: 'Uttar Pradesh',
        icitz: 25,
        istud:Null,
        fcitz: 300,
        fstud:Null,
        imageUrl: "https://optimatravels.com/images/agra-images/jama-masjid-banner.jpg",
        description: "Mariam's Tomb is the mausoleum of Mariam-uz-Zamani, commonly known as Jodhabai, the favorite wife of the Mughal Emperor Akbar. The tomb was built by her son Jahangir, in her memory located in Sikandra, next to the Akbar's Tomb",
        timings:[ "6.00am-6.00pm ", "6.00am-6.00pm ","6.00am-6.00pm ","6.00am-6.00pm ","6.00am-6.00pm ","6.00am-6.00pm","6.00am-6.00pm "]
    ) ,

    Place(
        title: 'Ram Bagh' ,
        locality: "Firojabad Road",
        rating: '4.0',
        logoUrl: "https://cf.bstatic.com/xdata/images/hotel/max1280x900/19890682.jpg?k=de3764b6b3fad47ff978df8da85259d00e9c31920ae238faabc5e74e8a99bdaf&o=&hp=1",
        bgcolor: Color(0xffEBF6FF),
        city: 'Agra',
        state: 'Uttar Pradesh',
        icitz: 25,
        istud:Null,
        fcitz: 300,
        fstud:Null,
        imageUrl: "https://content.r9cdn.net/rimg/himg/aa/5f/e9/leonardo-2671057-005_The_Palace_Courtyard_(Chandani_Chowk)_O-239270.jpg?width=1200&height=630&crop=true",
        description: 'Ram Bagh was the first Mughal Emperor, Babur, who built this beautiful garden. Ram Bagh has also remained the temporary resting place of the remains of Babur. ',
        timings:[ "6.00am-6.00pm ", "6.00am-6.00pm ","6.00am-6.00pm ","6.00am-6.00pm ","6.00am-6.00pm ","6.00am-6.00pm","6.00am-6.00pm "]
    ) ,

    Place(
        title: 'Bara Imambara' ,
        locality: 'Machchhi',
        rating: '4.4',
        logoUrl: "https://cdn.pixabay.com/photo/2021/08/04/04/52/bara-imambara-6521064_1280.jpg",
        bgcolor: Color(0xffFFF0EB),
        city: 'Lucknow',
        state: 'Uttar Pradesh',
        icitz: 50,
        istud:Null,
        fcitz: 500,
        fstud:Null,
        imageUrl: "https://www.deccanherald.com/sites/dh/files/articleimages/2021/10/02/bara-imambara-wiki-1036612-1633173953.png",
        description: 'Bara Imambara built byAsaf-ud-Daula, Nawab of Lucknow, in 1784. Bara means big, and an Imambara is a shrine built by Shia Muslims for the purpose of Azadari. The Bara Imambara is among the grandest buildings of Lucknow.',
        timings:[ "6.00am-5.00pm ", "6.00am-5.00pm ","6.00am-5.00pm ","6.00am-5.00pm ","6.00am-5.00pm ","6.00am-5.00pm","6.00am-5.00pm "]
    ) ,
    Place(
  title: 'Snow Kingdom',
  locality: 'Injambakkam',
  rating: '4.6',
  logoUrl: "https://3.bp.blogspot.com/-zFAMrj4ycF8/WqadC_ZmFNI/AAAAAAABa4U/o1FzqCCE33cE_WJXB9yI6KekFBQGfJCSACLcBGAs/s1600/fog%2Brelease.jpg",
  bgcolor: Color(0xffEBF6FF),
  city: 'Chennai',
  state: 'Tamil Nadu',
  icitz: 550,
  fcitz: 550,
  imageUrl: "https://cdn.untumble.com/uploads/customerimages/listicle/snow-kingdom-1-637045546698944464.jpeg",
  description: 'The park provides sterilised, cold weather clothing to allow visitors to cope with the sub-zero temperature inside. The prevailing temperature inside the theme park is −8 °C (18 °F).',
  timings:[ "10:00 AM – 7.00 PM" , "10:00AM-7.00PM" , "10:00 AM – 7.00 PM" , "10:00 AM – 7.00 PM" , "10:00 AM – 7.00 PM" , "10:00 AM – 7.00 PM" , "10:00 AM – 7.00 PM"]
  ) ,

    Place (
        title: 'Font St. George',
        locality: 'Nandambakkam',
        rating: '4.2',
        logoUrl: "https://victorianweb.org/history/empire/india/images/107.jpg",
        bgcolor: Color(0xffFFF0EB),
        city: 'Chennai',
        state: 'Tamil Nadu',
        icitz: 15,
        fcitz: 200,
        imageUrl: "https://mytrip.guide/wp-content/uploads/2020/09/Fort-St-George.jpg",
        description: 'Fort St. George is a fortress in the coastal city of Chennai, India. Founded in 1639, it was the first English fortress in India. It was the first English fortress in India',
        timings: [ '9.00AM-5.00PM','9.00AM-5.00PM','9.00AM-5.00PM','9.00AM-5.00PM','9.00AM-5.00PM','Closed','9.00AM-5.00PM']
    ) ,

    Place(
        title: 'Chhota Imambara' ,
        locality: 'Husainabad',
        rating: '4.5',
        logoUrl: "https://upload.wikimedia.org/wikipedia/commons/thumb/3/3d/Chota.Imambara.jpg/220px-Chota.Imambara.jpg",
        bgcolor: Color(0xffEBF6FF),
        city: 'Lucknow',
        state: 'Uttar Pradesh',
        icitz: 50,
        istud:Null,
        fcitz: 500,
        fstud:Null,
        imageUrl: "https://uptourism.gov.in/site/writereaddata/PageGallary/PG_202201071244396815.jpg",
        description: 'It is more ornate in design with gilded dome, several turrets, exquisite chandeliers said to be brought from Belgium, gilt-edged mirrors and colourful stuccos which adorn the interiors.',
        timings:[ "6.00am-5.00pm ", "6.00am-5.00pm ","6.00am-5.00pm ","6.00am-5.00pm ","6.00am-5.00pm ","6.00am-5.00pm","6.00am-5.00pm "]
    ) ,

    Place(
        title: 'Golconda Fort' ,
        locality: 'Khair Complex,',
        rating: '4.4',
        logoUrl: "https://static2.tripoto.com/media/filter/tst/img/1576417/SpotDocument/1562153963_img_5854.jpg",
        bgcolor: Color(0xffFFF0EB),
        city: 'Hyderabad',
        state: 'Telangana',
        icitz: 25,
        istud:Null,
        fcitz: 300,
        fstud:Null,
        imageUrl: "https://assets-news.housing.com/news/wp-content/uploads/2020/11/02184143/Everything-you-need-to-know-about-Golconda-Fort-FB-1200x700-compressed.jpg",
        description: 'Golconda Fort is located in the western part of Hyderabad city and is about 9 km from the HussainSagar Lake. The outer fort occupies an area of three square kilometers, which is 4.8 kilometers in length.',
        timings:[ "9.00am-5.30pm ", "9.00am-5.30pm ","9.00am-5.30pm ","9.00am-5.30pm ","9.00am-5.30pm ","9.00am-5.30pm","9.00am-5.30pm "]
    ) ,

    Place(
        title: 'Salar Jung Museum',
        locality: 'Darulshifa',
        rating: '4.4',
        logoUrl: "https://upload.wikimedia.org/wikipedia/commons/0/01/Salar_Jung_Museum.jpg",
        bgcolor: Color(0xffEBF6FF),
        city: 'Hyderabad',
        state: 'Telangana',
        icitz: 20,
        istud:Null,
        fcitz: 500,
        fstud:Null,
        imageUrl: "https://www.holidify.com/images/cmsuploads/compressed/50382227093c4ae17ef1ab_20220523165700.jpeg",
        description: 'The museum is a semicircular shaped building with 38 galleries spread across two floors. The ground floor covers 20 galleries while the first floor has 18 of them. The exhibits covering different subjects are shown at separate galleries.',
        timings:[ '10.00am-5.00pm', "10.00am-5.00pm ","10.00am-5.00pm ","10.00am-5.00pm ","10.00am-5.00pm ","10.00am-5.00pm","10.00am-5.00pm"]
    ) ,

    Place(
        title: 'Charminar',
        locality: 'Ghansi Bazar',
        rating: '4.5',
        logoUrl: "https://static3.depositphotos.com/1001364/141/i/600/depositphotos_1411059-stock-photo-charminar-hyderabad-india.jpg",
        bgcolor: Color(0xffFFF0EB),
        city: 'Hyderabad',
        state: 'Telangana',
        icitz: 20,
        istud:Null,
        fcitz: 250,
        fstud:Null,
        imageUrl: "https://img.theculturetrip.com/450x/smart/wp-content/uploads/2016/06/24498998325_f451c67aae_o.jpg",
        description: 'It is a square shaped monument with four pillars, one on each side. The architectural design of Charminar is inspired from the Shia tazias.',
        timings:[ "9.30am -5.30pm ","9.30am -5.30pm ","9.30am -5.30pm ","9.30am -5.30pm ","9.30am -5.30pm ","9.30am -5.30pm ","9.30am -5.30pm ",]
    ) ,

    Place(
        title: 'Chowmahalla Palace' ,
        locality: 'Motigalli, Khilwat',
        rating: '4.4',
        logoUrl: "https://i.pinimg.com/originals/43/46/35/434635020172b7b61937c2bc36e27c4b.png",
        bgcolor: Color(0xffEBF6FF),
        city: 'Hyderabad',
        state: 'Telangana',
        icitz: 50,
        istud:Null,
        fcitz: 200,
        fstud:Null,
        imageUrl: "https://s3.ap-southeast-1.amazonaws.com/images.deccanchronicle.com/dc-Cover-eb2bfpuf6vdp70je5t607nv2q6-20181226005318.jpeg",
        description: 'The palace consists of two courtyards as well as the grand Khilwat (the Dharbar Hall), fountains and gardens. ',
        timings:["10.00am-5.00pm", "10.00am-5.00pm ","10.00am-5.00pm ","10.00am-5.00pm ","10.00am-5.00pm ","Closed","10.00am-5.00pm "]
    ) ,

    Place(
        title: 'Rock Garden' ,
        locality: 'Sector 1',
        rating: '4.0',
        logoUrl: "https://media-cdn.tripadvisor.com/media/photo-s/09/4c/43/64/the-rock-garden-of-chandigarh.jpg",
        bgcolor: Color(0xffFFF0EB),
        city: 'Chandigarh',
        state: 'Chandigarh',
        icitz: 30,
        istud:Null,
        fcitz: 30,
        fstud:Null,
        imageUrl: "https://travelescape.in/wp-content/uploads/2019/04/Rock-garden-Fountain.png",
        description: 'A rock garden is a small plot of land that is decorated with stones, boulders and rocks, arranged in a way that allows for small plants to be planted among the rocks.' ,
        timings:["9.00 AM to 6.00 PM" , "9.00 AM to 6.00 PM" , "9.00 AM to 6.00 PM" , "9.00 AM to 6.00 PM" , "9.00 AM to 6.00 PM" , "9.00 AM to 6.00 PM" , "9.00 AM to 6.00 PM" ]
    ) ,

    Place(
        title: 'Rose Garden',
        locality: 'Sector 16',
        rating: '4.4',
        logoUrl: "https://upload.wikimedia.org/wikipedia/commons/6/6c/Aramaki_rose_park04s2400.jpg",
        bgcolor: Color(0xffEBF6FF),
        city: 'Chandigarh',
        state: 'Chandigarh',
        icitz: 50,
        istud:Null,
        fcitz: 50,
        fstud:Null,
        imageUrl: "https://image3.mouthshut.com/images/imagesp/925755765s.jpg",
        description: 'A rose garden is a garden or park, often open to the public, used to present and grow various types of garden roses, and sometimes rose species. Most often it is a section of a larger garden.',
        timings:["6.00 AM to 8.00 PM" , "6.00 AM to 8.00 PM" , "6.00 AM to 8.00 PM" , "6.00 AM to 8.00 PM" , "6.00 AM to 8.00 PM" , "6.00 AM to 8.00 PM" , "6.00 AM to 8.00 PM" ]
    ) ,

    Place(
        title: 'Museum' ,
        locality: 'Sector 10',
        rating: '4.4',
        logoUrl: "https://fastly.4sqi.net/img/general/600x600/17128295_QHWT1bIv8N2s9AG35ecsswAJ3Pw4skPFLJIEo_TRRe4.jpg",
        bgcolor: Color(0xffEBF6FF),
        city: 'Chandigarh',
        state: 'Chandigarh',
        icitz: 10,
        istud:Null,
        fcitz: 10,
        fstud:Null,
        imageUrl: "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcSVtpmkoGU1QiqhVAVB0n2XzoQysFZECbFxby-Qvc1jkj24AMdE",
        description: 'Government Museum and Art Gallery, Chandigarh, is a premier museum of North India having collections of Gandharan sculptures, sculptures from ancient and medieval India, Pahari and Rajasthani miniature paintings.',
        timings:[ "10:00 AM – 4.30 PM" , "Closed" , "10:00 AM – 4.30 PM" , "10:00 AM – 4.30 PM" , "10:00 AM – 4.30 PM" , "10:00 AM – 4.30 PM" , "10:00 AM – 4.30 PM"]
    ) ,





  ];

  List<Place> findbyId(String cty)
  {
    return _items.where((element) => element.city==cty).toList();
  }

  Place findbytitle(String x)
  {
    return _items.firstWhere((element) => element.title==x);
  }

}
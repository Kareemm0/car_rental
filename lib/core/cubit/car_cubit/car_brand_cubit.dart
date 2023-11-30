import 'package:bloc/bloc.dart';
import 'car_brand_state.dart';
import '../../models/car_model.dart';
import '../../utils/app_image.dart';
import 'package:uuid/uuid.dart';

class CarBrandListCubit extends Cubit {
  CarBrandListCubit() : super(CarListState);

  List<CarModel> get getCars {
    return carList;
  }

  CarModel? findById(String carId) {
    if (carList.where((element) => element.carId == carId).isEmpty) {
      return null;
    }
    return carList.firstWhere((element) => element.carId == carId);
  }

  List<CarModel> findByCategory({required String categoryName}) {
    List<CarModel> categoryList = carList
        .where((element) => element.carCategory
            .toLowerCase()
            .contains(categoryName.toLowerCase()))
        .toList();
    return categoryList;
  }

  List<CarModel> search({required String searchText}) {
    List<CarModel> carListSearch = carList
        .where((element) =>
            element.carName.toLowerCase().contains(searchText.toLowerCase()))
        .toList();
    return carListSearch;
  }

  final List<CarModel> carList = [
    // BMW
    CarModel(
      carPrice: "400EG/day",
      carId: const Uuid().v4(),
      carName: "BMW 3 Series ",
      carImage: AppImage.bmw1,
      carType: "Automatic",
      carDescripation:
          "The BMW 3 Series is a line of compact executive cars manufactured by the German automaker BMW since 1975. It is one of BMW's most popular and enduring model lines, known for its combination of performance, luxury, and sporty design. The 3 Series has gone through multiple generations, each introducing new features and improvements.",
      carEngineCapacity: "2998 cc",
      hoursePower: "255 H",
      carseats: 5,
      carCategory: "BMW",
    ),
    CarModel(
      carPrice: "400EG/day",
      carId: const Uuid().v4(),
      carName: "BMW 4 Series",
      carImage: AppImage.bmw2,
      carType: "Automatic",
      carDescripation:
          "The 2024 BMW 4-series coupe and convertible offer the same luxury goodness as the 3-series sedan, but they prioritize swoopy styling over practicality with less rear seat room and less cargo space than their four-door counterpart.",
      carEngineCapacity: "2998 CC",
      hoursePower: "255 H",
      carseats: 5,
      carCategory: "BMW",
    ),
    CarModel(
      carPrice: "400EG/day",
      carId: const Uuid().v4(),
      carName: "BMW X1",
      carImage: AppImage.bmw3,
      carType: "Automatic",
      carDescripation:
          "The Diesel engine is 1995 cc while the Petrol engine is 1499 cc . It is available with Automatic transmission. Depending upon the variant and fuel type the X1 has a mileage of 16.35 to 20.37 kmpl ",
      carEngineCapacity: "1499 CC",
      hoursePower: "241 H",
      carseats: 5,
      carCategory: "BMW",
    ),
    CarModel(
      carPrice: "400EG/day",
      carId: const Uuid().v4(),
      carName: "BMW Z4",
      carImage: AppImage.bmw4,
      carType: "Automatic",
      carDescripation:
          "The BMW Z4 is a two-seat sports car roadster produced by the German automaker BMW. The Z4 is known for its sleek design, sporty performance, and open-top driving experience. Below is some general information about the BMW Z4:",
      carEngineCapacity: "2998 CC",
      hoursePower: "255 H",
      carseats: 2,
      carCategory: "BMW",
    ),
    CarModel(
      carPrice: "400EG/day",
      carId: const Uuid().v4(),
      carName: "BMW i3 ",
      carImage: AppImage.bmw5,
      carType: "Automatic",
      carDescripation:
          "The BMW i3 is an electric car that was manufactured by German marque BMW from 2013 to 2022. The i3 was BMW's first mass-produced zero emissions vehicle and was launched as part of BMW's electric vehicle BMW i sub-brand. It is a B-segment, high-roof hatchback with an electric powertrain.",
      carEngineCapacity: "1499 CC",
      hoursePower: "369 H",
      carseats: 4,
      carCategory: "BMW",
    ),
    // Honda
    CarModel(
      carPrice: "400EG/day",
      carId: const Uuid().v4(),
      carName: "Honda Civic",
      carImage: AppImage.honda1,
      carType: "Automatic",
      carDescripation:
          "The Honda Civic is capable of generating a horsepower of 127 - 176 HP and a torque of 180 - 220 Nm with a top speed of 210 - 220 KM/H. Civic is available in 1 transmission option(s) i.e Automatic. The Civic car has a fuel average of 11 KM/L with a fuel tank capacity of 47L.",
      carEngineCapacity: "1597 CC",
      hoursePower: "158 H",
      carseats: 5,
      carCategory: "Honda",
    ),
    CarModel(
      carPrice: "400EG/day",
      carId: const Uuid().v4(),
      carName: "Honda Accord",
      carImage: AppImage.honda2,
      carType: "Automatic",
      carDescripation:
          "The Honda Accord (Japanese Hepburn: Honda Akōdo), also known as the Honda Inspire (Japanese Hepburn: Honda Insupaia) in Japan and China for certain generations, is a series of automobiles manufactured by Honda since 1976, best known for its four-door sedan variant, which has been one ",
      carEngineCapacity: "3471 CC",
      hoursePower: "192 H",
      carseats: 5,
      carCategory: "Honda",
    ),
    CarModel(
      carPrice: "400EG/day",
      carId: const Uuid().v4(),
      carName: "Honda CR-V",
      carImage: AppImage.honda3,
      carType: "Automatic",
      carDescripation:
          "The Honda CR-V (also sold as the Honda Breeze in China since 2019) is a compact crossover SUV manufactured by Japanese automaker Honda since 1995. Initial models of the CR-V were built using the same platform as the Civic",
      carEngineCapacity: "2000 CC",
      hoursePower: "190 H",
      carseats: 5,
      carCategory: "Honda",
    ),
    CarModel(
      carPrice: "400EG/day",
      carId: const Uuid().v4(),
      carName: "Honda Brio",
      carImage: AppImage.honda4,
      carType: "Automatic",
      carDescripation:
          "The Petrol engine is 1198 cc . It is available with Manual & Automatic transmission. Depending upon the variant and fuel type the Brio has a mileage of 16.5 to 22.0 kmpl & Ground clearance of Brio is 165mm. The Brio is a 5 seater 4 cylinder car and has length of 3610mm, width of 1680mm and a wheelbase of 2345mm.",
      carEngineCapacity: "1198 CC",
      hoursePower: "89 H",
      carseats: 5,
      carCategory: "Honda",
    ),
    CarModel(
      carPrice: "400EG/day",
      carId: const Uuid().v4(),
      carName: "Honda Pilot",
      carImage: AppImage.honda5,
      carType: "Automatic",
      carDescripation:
          "Design of the Pilot was by Honda's Ricky Hsu through 1999, when styling was approved. The Pilot can accommodate eight passengers in three rows configured as stadium seating as a standard feature. The third row can seat three, but the limited legroom makes it suitable only for small children or adults on short trips.",
      carEngineCapacity: " 3498 CC",
      hoursePower: "285 H",
      carseats: 8,
      carCategory: "Honda",
    ),
    // Marcides
    CarModel(
      carPrice: "400EG/day",
      carId: const Uuid().v4(),
      carName: "mercedes benz Class A",
      carImage: AppImage.marc1,
      carType: "Automatic",
      carDescripation:
          "With Mercedes-Benz AG, we are one of the leading global suppliers of high-end passenger cars and premium vans. Mercedes-Benz Mobility AG offers financing, leasing, car subscription and car rental, fleet management, digital services for charging and payment, insurance brokerage, as well as innovative mobility services.",
      carEngineCapacity: "1993 CC",
      hoursePower: "496 H",
      carseats: 5,
      carCategory: "mercedes",
    ),
    CarModel(
      carPrice: "400EG/day",
      carId: const Uuid().v4(),
      carName: "mercedes benz Class C",
      carImage: AppImage.marc2,
      carType: "Automatic",
      carDescripation:
          "The Mercedes-Benz C-Class has 1 Diesel Engine and 1 Petrol Engine on offer. The Diesel engine is 1993 cc while the Petrol engine is 1496 cc . It is available with Automatic transmission. Depending upon the variant and fuel type the C-Class has a mileage of 23.0 kmpl .",
      carEngineCapacity: " 1993 CC",
      hoursePower: "255 H",
      carseats: 5,
      carCategory: "mercedes",
    ),
    CarModel(
      carPrice: "400EG/day",
      carId: const Uuid().v4(),
      carName: "mercedes benz Class E",
      carImage: AppImage.marc3,
      carType: "Automatic",
      carDescripation:
          "The Diesel engine is 1950 cc and 2925 cc while the Petrol engine is 1991 cc . It is available with Automatic transmission. Depending upon the variant and fuel type the E-Class has a mileage of 16.1 kmpl . The E-Class is a 5 seater 6 cylinder car and has length of 5075mm, width of 2065mm and a wheelbase of 3079mm.",
      carEngineCapacity: " 2925 CC",
      hoursePower: "369 H",
      carseats: 5,
      carCategory: "mercedes",
    ),
    CarModel(
      carPrice: "400EG/day",
      carId: const Uuid().v4(),
      carName: "mercedes benz Class S",
      carImage: AppImage.marc4,
      carType: "Automatic",
      carDescripation:
          "The Mercedes-Benz S-Class, formerly known as Sonderklasse (German for special class, abbreviated as S-Klasse is a series of full-sized luxury sedans, limousines and armored sedans produced by the German automaker Mercedes-Benz",
      carEngineCapacity: "2925 CC",
      hoursePower: "429 H",
      carseats: 5,
      carCategory: "mercedes",
    ),
    CarModel(
      carPrice: "400EG/day",
      carId: const Uuid().v4(),
      carName: "mercedes benz Class G",
      carImage: AppImage.marc5,
      carType: "Automatic",
      carDescripation:
          "The G-class was developed as a military vehicle from a suggestion by the King of Iran Mohammad Reza Shah to Mercedes and was later offered as a civilian vehicle in 1979. In this military role the vehicle was sometimes referred to as the Wolf",
      carEngineCapacity: "2925 CC",
      hoursePower: "416 H",
      carseats: 5,
      carCategory: "mercedes",
    ),
    // Porche
    CarModel(
      carPrice: "400EG/day",
      carId: const Uuid().v4(),
      carName: "Porsche 911",
      carImage: AppImage.bor1,
      carType: "Automatic",
      carDescripation:
          "The Porsche 911 (pronounced Nine Eleven or in German: Neunelf) is a two-door 2+2 high performance rear-engined sports car introduced in September 1964 by Porsche AG of Stuttgart, Germany. It has a rear-mounted flat-six engine and originally a torsion bar suspension.",
      carEngineCapacity: "3996 CC",
      hoursePower: "379 H",
      carseats: 4,
      carCategory: "Porsche",
    ),
    CarModel(
      carPrice: "400EG/day",
      carId: const Uuid().v4(),
      carName: "Porsche Cayenne",
      carImage: AppImage.bor2,
      carType: "Automatic",
      carDescripation:
          "The Cayenne S boasts a 468-hp twin-turbo V-8 with a great-sounding exhaust note and breathtaking acceleration. There's also an S E-Hybrid, which uses a turbocharged 3.0-liter V-6 and an electric motor for 512 horsepower and 553 pound-feet of torque.",
      carEngineCapacity: "2894 CC",
      hoursePower: "348 H",
      carseats: 4,
      carCategory: "Porsche",
    ),
    CarModel(
      carPrice: "400EG/day",
      carId: const Uuid().v4(),
      carName: "Porsche Panamera",
      carImage: AppImage.bor3,
      carType: "Automatic",
      carDescripation:
          "The Porsche Panamera is a mid/full-sized luxury car (E-segment or F-segment for LWB in Europe) manufactured and marketed by German automobile manufacturer Porsche across two generations using a front-engine, rear or all-wheel drive configuration.",
      carEngineCapacity: " 3996 CC",
      hoursePower: "620 H",
      carseats: 4,
      carCategory: "Porsche",
    ),
    CarModel(
      carPrice: "400EG/day",
      carId: const Uuid().v4(),
      carName: "Porsche Macan",
      carImage: AppImage.bor4,
      carType: "Automatic",
      carDescripation:
          "All Macans feature a seven-speed PDK dual-clutch transmission and all-wheel drive, with several options available including air suspension and Porsche Active Suspension Management (PASM). Porsche subsequently released a base Macan for select Asian markets and the United Kingdom.",
      carEngineCapacity: " 2894 CC",
      hoursePower: "261 H",
      carseats: 5,
      carCategory: "Porsche",
    ),
    CarModel(
      carPrice: "400EG/day",
      carId: const Uuid().v4(),
      carName: "Porsche Taycan",
      carImage: AppImage.bor5,
      carType: "Automatic",
      carDescripation:
          "For dynamic driving, the Taycan is fitted with the Porsche Active Aerodynamics system with active cool air intakes and an adaptive, triple-level rear spoiler. At 90 km/h, 160 km/h and 200 km/h, it transforms an electric vehicle into a sports car with Porsche DNA.",
      carEngineCapacity: "3996 CC",
      hoursePower: "750 H",
      carseats: 4,
      carCategory: "Porsche",
    ),
    // Toyota
    CarModel(
      carPrice: "400EG/day",
      carId: const Uuid().v4(),
      carName: "Toyota Corolla",
      carImage: AppImage.toyo1,
      carType: "Automatic",
      carDescripation:
          "The Corolla sedan is a powerful and efficient ride, offering improved suspension and dynamic handling, thanks to a 4 cylinders Dual VVT-I engine with a max output of 120HP / 6000 RPM and max torque 154NM/ 5200 RPM.",
      carEngineCapacity: "1794 CC",
      hoursePower: "169 H",
      carseats: 5,
      carCategory: "Toyota",
    ),
    CarModel(
      carPrice: "400EG/day",
      carId: const Uuid().v4(),
      carName: "Toyota Camry",
      carImage: AppImage.toyo2,
      carType: "Automatic",
      carDescripation:
          "Originally compact in size (narrow-body), the Camry has grown since the 1990s to fit the mid-size classification (wide-body)—although the two widths co-existed in that decade. Since the release of the wide-bodied versions, Camry has been extolled by Toyota as the firm's second world car after the Corolla.",
      carEngineCapacity: "2487 CC",
      hoursePower: "301 H",
      carseats: 5,
      carCategory: "Toyota",
    ),
    CarModel(
      carPrice: "400EG/day",
      carId: const Uuid().v4(),
      carName: "Toyota RAV4",
      carImage: AppImage.toyo3,
      carType: "Automatic",
      carDescripation:
          "The Toyota RAV4 (Japanese RAV4, Hepburn: Toyota Ravufō) is a compact crossover SUV produced by the Japanese automobile manufacturer Toyota. Considered the first ever compact crossover SUV, it made its debut in Japan and Europe in 1994, and in North America in 1995, being launched in January 1996.",
      carEngineCapacity: "2362 CC",
      hoursePower: "203 H",
      carseats: 5,
      carCategory: "Toyota",
    ),
    CarModel(
      carPrice: "400EG/day",
      carId: const Uuid().v4(),
      carName: "Toyota Highlander",
      carImage: AppImage.toyo4,
      carType: "Automatic",
      carDescripation:
          "The Highlander Hybrid employs a 2.5-liter four-cylinder and two electric motors for a combined 243 horsepower. The hybrid uses a continuously variable automatic transmission (CVT) and offers a choice between front- and all-wheel drive.",
      carEngineCapacity: "2487 CC",
      hoursePower: "243 H",
      carseats: 8,
      carCategory: "Toyota",
    ),
    CarModel(
      carPrice: "400EG/day",
      carId: const Uuid().v4(),
      carName: "Toyota 4Runner",
      carImage: AppImage.toyo5,
      carType: "Automatic",
      carDescripation:
          "Street smart and off-road ready. 4Runner's powerful 4.0-Liter V6, paired with full- or part-time 4WD and up to 5000-lb. towing capacity, * allows you to take on the path ahead.",
      carEngineCapacity: "2414 CC",
      hoursePower: "266 H",
      carseats: 7,
      carCategory: "Toyota",
    ),
  ];
}

struct MockMenuItems {
    static let foodItems: [MenuItem] = [
        MenuItem(title: "Greek Salad", ingredients: [.tomatoes, .cucumber, .redOnion, .fetaCheese, .olives], price: 12.99, menuCategory: .food, ordersCount: 342, image: "GreekSalad"),
        MenuItem(title: "Pasta Primavera", ingredients: [.broccoli, .carrot, .pasta, .sauce, .spinach], price: 14.49, menuCategory: .food, ordersCount: 287, image: "PastaPrimavera"),
        MenuItem(title: "Tomato Pasta", ingredients: [.pasta, .sauce, .tomatoes], price: 13.99, menuCategory: .food, ordersCount: 198, image: "TomatoPasta"),
        MenuItem(title: "Chicken Pasta", ingredients: [.pasta, .cream, .sauce], price: 16.99, menuCategory: .food, ordersCount: 421, image: "ChickenPasta"),
        MenuItem(title: "Veggie Bowl", ingredients: [.spinach, .broccoli, .carrot, .tomatoes], price: 13.49, menuCategory: .food, ordersCount: 156, image: "VeggieBowl"),
        MenuItem(title: "Chicken Bowl", ingredients: [.spinach, .carrot, .tomatoes], price: 15.99, menuCategory: .food, ordersCount: 376, image: "ChickenBowl"),
        MenuItem(title: "Broccoli Pasta", ingredients: [.pasta, .broccoli, .cream], price: 14.99, menuCategory: .food, ordersCount: 214, image: "BroccoliPasta"),
        MenuItem(title: "Mediterranean Wrap", ingredients: [.lettuce, .tomatoes, .cucumber, .fetaCheese, .olives], price: 11.99, menuCategory: .food, ordersCount: 305, image: "MediterraneanWrap"),
        MenuItem(title: "Tomato Soup", ingredients: [.tomatoes, .sauce, .cream], price: 8.99, menuCategory: .food, ordersCount: 132, image: "TomatoSoup"),
        MenuItem(title: "Chicken Sandwich", ingredients: [.lettuce, .tomatoes, .cucumber], price: 12.49, menuCategory: .food, ordersCount: 389, image: "ChickenSandwich"),
        MenuItem(title: "Spinach Omelette", ingredients: [.eggs, .spinach, .fetaCheese], price: 10.99, menuCategory: .food, ordersCount: 174, image: "SpinachOmelette"),
        MenuItem(title: "Bistro Burger", ingredients: [.tomatoes, .cucumber, .redOnion], price: 17.99, menuCategory: .food, ordersCount: 468, image: "BistroBurger"),
    ]

    static let drinkItems: [MenuItem] = [
        MenuItem(title: "Water", ingredients: [.water], price: 2.49, menuCategory: .drink, ordersCount: 612, image: "Water"),
        MenuItem(title: "Sparkling Water", ingredients: [.water], price: 3.49, menuCategory: .drink, ordersCount: 354, image: "SparklingWater"),
        MenuItem(title: "Coffee", ingredients: [.coffee, .water], price: 3.99, menuCategory: .drink, ordersCount: 589, image: "Coffee"),
        MenuItem(title: "Iced Coffee", ingredients: [.coffee, .water, .cream], price: 4.99, menuCategory: .drink, ordersCount: 431, image: "IcedCoffee"),
        MenuItem(title: "Latte", ingredients: [.coffee, .cream], price: 5.49, menuCategory: .drink, ordersCount: 502, image: "Latte"),
        MenuItem(title: "Iced Latte", ingredients: [.coffee, .cream, .water], price: 5.99, menuCategory: .drink, ordersCount: 397, image: "IcedLatte"),
        MenuItem(title: "Lemonade", ingredients: [.water, .sugar], price: 4.49, menuCategory: .drink, ordersCount: 276, image: "Lemonade"),
        MenuItem(title: "Orange Juice", ingredients: [.water, .sugar], price: 4.99, menuCategory: .drink, ordersCount: 318, image: "OrangeJuice"),
    ]

    static let dessertItems: [MenuItem] = [
        MenuItem(title: "Chocolate Cake", ingredients: [.butter, .eggs, .flour, .sugar], price: 7.99, menuCategory: .dessert, ordersCount: 246, image: "ChocolateCake"),
        MenuItem(title: "Vanilla Pancakes", ingredients: [.butter, .eggs, .flour, .sugar], price: 8.49, menuCategory: .dessert, ordersCount: 221, image: "VanillaPancakes"),
        MenuItem(title: "Berry Tart", ingredients: [.butter, .eggs, .flour, .sugar, .cream], price: 7.49, menuCategory: .dessert, ordersCount: 164, image: "BerryTart"),
        MenuItem(title: "Cream Puffs", ingredients: [.butter, .eggs, .flour, .sugar, .cream], price: 6.99, menuCategory: .dessert, ordersCount: 193, image: "CreamPuffs"),
    ]
    static var allItems: [MenuItem] {
        foodItems + drinkItems + dessertItems
    }
}

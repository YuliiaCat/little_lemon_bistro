import Foundation

protocol MenuItemProtocol {
    var id: UUID { get }
    var title: String { get }
    var ingredients: [Ingredient] { get set }
    var price: Double { get }
    var menuCategory: MenuCategory { get }
    var ordersCount: Int { get set }
    var image: String { get }
}

class MenuItem:MenuItemProtocol, Identifiable {
    let id = UUID()
    let title: String
    var ingredients: [Ingredient]
    let price: Double
    let menuCategory: MenuCategory
    var ordersCount: Int
    var image: String

    
    init(
        title: String,
        ingredients: [Ingredient],
        price: Double,
        menuCategory: MenuCategory,
        ordersCount: Int,
        image: String
    ) {
        self.title = title
        self.ingredients = ingredients
        self.price = price
        self.menuCategory = menuCategory
        self.ordersCount = ordersCount
        self.image = image
    }
}


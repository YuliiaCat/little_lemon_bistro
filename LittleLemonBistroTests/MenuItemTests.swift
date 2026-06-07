import XCTest
@testable import LittleLemonBistro

final class MenuItemTests: XCTestCase {
    func test_menuItemTitle_equalInitValue() {
        let expectedTitle = "Greek Salad"
        
        let item = MenuItem(
            title: expectedTitle,
            ingredients: [],
            price: 10.99,
            menuCategory: .food,
            ordersCount: 0
        )

        XCTAssertEqual(item.title, expectedTitle)
    }
    
    func test_menuItemIngredients_equalInitValue() {
        let expectedIngredients = [Ingredient.cucumber, Ingredient.fetaCheese, Ingredient.olives, Ingredient.redOnion, Ingredient.tomatoes]
        
        let item = MenuItem(
            title: "Greek Salad",
            ingredients: expectedIngredients,
            price: 10.99,
            menuCategory: .food,
            ordersCount: 0
        )

        XCTAssertEqual(item.ingredients, expectedIngredients)
    }
}

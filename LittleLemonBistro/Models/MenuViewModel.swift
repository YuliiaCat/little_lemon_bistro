class MenuViewModel {
    let foodMenuItems: [MenuItem]
    let drinkMenuItems: [MenuItem]
    let dessertMenuItems: [MenuItem]
    
    init() {
        self.foodMenuItems = MockMenuItems.foodItems
        self.drinkMenuItems = MockMenuItems.drinkItems
        self.dessertMenuItems = MockMenuItems.dessertItems
    }
}

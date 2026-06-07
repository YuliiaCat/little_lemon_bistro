import SwiftUI

struct ItemDescriptionComponent: View {
    let title: String
    let content: String?
    let ingredients: [Ingredient]?
    
    init(title: String, content: String? = nil, ingredients: [Ingredient]? = nil) {
            self.title = title
            self.content = content
            self.ingredients = ingredients
        }
    
    var body: some View {
        VStack {
            Text(title)
            .font(.system(size: 20, weight: .semibold))

            if let content {
                    Text(content)
                }
            if let ingredients {
                ForEach(ingredients, id: \.self) { ingredient in
                    Text(ingredient.rawValue)
                }
            }
        }
    }
}

#Preview {
    MenuItemsView()
}

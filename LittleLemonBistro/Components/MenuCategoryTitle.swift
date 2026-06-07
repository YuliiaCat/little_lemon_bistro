import SwiftUI

struct MenuCategoryTitle: View {
    let text: String
    
    var body: some View {
        Text(text)
        .font(.title)
        .fontWeight(.semibold)
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

#Preview {
    MenuItemsView()
}

import SwiftUI

struct MenuItemsOptionView: View {
    var body: some View {
        VStack {
            Text("Filter")
                .font(.system(size: 28, weight: .bold))
                .fontWeight(.bold)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal, 20)
                
            List {
                Section(header: Text("SELECTED CATEGORIES")) {
                    ForEach(SelectedCategories.allCases, id: \.self) { category in
                        Text(category.rawValue)
                                }
                }
                Section(header: Text("SORT BY")) {
                    ForEach(SortMenuItems.allCases, id: \.self) { sortItem in
                        Text(sortItem.rawValue)
                                }
                }
            }
        }
        .padding(.vertical, 30)
        .background(Color(.systemGray6))
    }
}

#Preview {
    MenuItemsView()
}

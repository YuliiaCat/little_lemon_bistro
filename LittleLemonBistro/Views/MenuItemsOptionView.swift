import SwiftUI

struct MenuItemsOptionView: View {
    @Binding var showFilterSheet: Bool
    @Binding var selectedCategory: SelectedCategories?
    @Binding var selectedSort: SortMenuItems?
        
    var body: some View {
        VStack {
            HStack {
                MenuCategoryTitle(text: "Filter")
                
                Button(role: .confirm) {
                    showFilterSheet = false
                } label: {
                    Text("Done")
                }
                .font(.system(size: 20, weight: .medium))
                .padding(.vertical, 5)
                .padding(.horizontal, 14)
                .background(Color.white)
                .cornerRadius(20)
                .shadow(color: Color.black.opacity(0.12), radius: 4, x: 0, y: 2)
            }
            .padding(.horizontal, 20)
            
            
            List {
                Section(header: Text("SELECTED CATEGORIES")) {
                    ForEach(SelectedCategories.allCases, id: \.self) { category in
                        HStack() {
                            Text(category.rawValue)
                            Spacer()
                            if selectedCategory == category {
                                Image(systemName: "checkmark")
                                    .foregroundStyle(Color.accentColor)
                            }
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .contentShape(Rectangle())
                        .onTapGesture {
                            if selectedCategory == category {
                                selectedCategory = nil
                            } else {
                                selectedCategory = category
                            }
                        }
                    }
                    
                }
                Section(header: Text("SORT BY")) {
                    ForEach(SortMenuItems.allCases, id: \.self) { sortItem in
                        HStack() {
                            Text(sortItem.rawValue)
                            Spacer()
                            if selectedSort == sortItem {
                                Image(systemName: "checkmark")
                                    .foregroundStyle(Color.accentColor)
                            }
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .contentShape(Rectangle())
                        .onTapGesture {
                            if selectedSort == sortItem {
                                selectedSort = nil
                            } else {
                                selectedSort = sortItem
                            }
                        }
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

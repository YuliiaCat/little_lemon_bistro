import SwiftUI

struct MenuItemsView: View {
    @State var showFilterSheet = false
    @State var selectedCategory: SelectedCategories? = nil
    @State var selectedSort: SortMenuItems? = nil
    
    private func getSortedItems(items: [MenuItem]) -> [MenuItem] {
        switch selectedSort {
            case .alphabet:
                return items.sorted { $0.title < $1.title }

            case .price:
                return items.sorted { $0.price < $1.price }

            case .mostPopular:
                return items.sorted { $0.ordersCount > $1.ordersCount }

            case nil:
                return items
            }
    }
    
    private var filteredFood: [MenuItem] {
        getSortedItems(items: MockMenuItems.foodItems)
    }
    
    private var filteredDrinks: [MenuItem] {
        getSortedItems(items: MockMenuItems.drinkItems)
    }
    
    private var filteredDesserts: [MenuItem] {
        getSortedItems(items: MockMenuItems.dessertItems)
    }
    
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading, spacing: 20) {
                VStack {
                    HStack {
                        Spacer()
                        Button() {
                            showFilterSheet = true
                        } label: {
                            Image(systemName: "slider.horizontal.3")
                        }
                        .font(.system(size: 24, weight: .medium))
                    }
                    .padding(.horizontal, 30)
                    Text("Menu")
                        .font(.title2)
                        .fontWeight(.bold)
                        .padding(.bottom, 18)
                }
                .background(Color("HeaderColor"))
                .overlay(alignment: .bottom) {
                    Rectangle()
                        .fill(Color.gray.opacity(0.25))
                        .frame(height: 1)
                }
                .shadow(color: Color.black.opacity(0.12), radius: 4, x: 0, y: 2)
               
                
                ScrollView {
                    if selectedCategory == .food {
                        MenuItemComponent(text: "Food", items: filteredFood)
                    } else if selectedCategory == .drink {
                        MenuItemComponent(text: "Drinks", items: filteredDrinks)
                    } else if selectedCategory == .dessert {
                        MenuItemComponent(text: "Dessert", items: filteredDesserts)
                    } else {
                        MenuItemComponent(text: "Food", items: filteredFood)
                        MenuItemComponent(text: "Drinks", items: filteredDrinks)
                        MenuItemComponent(text: "Dessert", items: filteredDesserts)
                    }
                    
                }
                .background(Color.clear)
                .padding(.bottom, 30)
                .padding(.top, 10)
                .padding(.horizontal, 20)
                .scrollIndicators(.hidden)
            }
        }
        .sheet(isPresented: $showFilterSheet) {
            MenuItemsOptionView(showFilterSheet: $showFilterSheet, selectedCategory: $selectedCategory, selectedSort: $selectedSort)
                .presentationDetents([.large, .large])
                .presentationDragIndicator(.visible)
        }
    }
}

#Preview {
    MenuItemsView()
}

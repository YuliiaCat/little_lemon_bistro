import SwiftUI

struct MenuItemsView: View {
    @State private var showFilterSheet = false
    
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading, spacing: 20) {
                VStack {
                    HStack {
                        Spacer()
                        Button(role: .confirm) {
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
                    MenuItemComponent(text: "Food", items: MockMenuItems.foodItems)
                    MenuItemComponent(text: "Drinks", items: MockMenuItems.drinkItems)
                    MenuItemComponent(text: "Dessert", items: MockMenuItems.dessertItems)
                    
                }
                .listStyle(.plain)
                .scrollContentBackground(.hidden)
                .background(Color.clear)
                .padding(.bottom, 30)
                .padding(.top, 10)
                .padding(.horizontal, 20)
            }
        }
        .sheet(isPresented: $showFilterSheet) {
            MenuItemsOptionView()
                .presentationDetents([.large, .large])
                .presentationDragIndicator(.visible)
        }
    }
}

#Preview {
    MenuItemsView()
}

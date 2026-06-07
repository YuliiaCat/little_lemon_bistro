import SwiftUI

struct MenuItemDetailsView: View {
    let item: MenuItem
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        VStack(alignment: .center, spacing: 20) {
            Text(item.title)
            .font(.title)
            .fontWeight(.bold)
            .frame(maxWidth: .infinity, alignment: .leading)
            
//            Image("LittleLemonlogo")
            Image(item.image)
                .resizable()
                .scaledToFit()
                .frame(width: 280, height: 300)
            
            ItemDescriptionComponent(title: "Price", content: String(item.price))
            ItemDescriptionComponent(title: "Ordered", content: String(item.ordersCount))
            ItemDescriptionComponent(title: "Ingredients", ingredients: item.ingredients)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
        .padding()
        .navigationBarBackButtonHidden(true)
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                Button {
                    dismiss()
                } label: {
                    HStack(spacing: 4) {
                        Image(systemName: "chevron.left")
                        Text("Menu")
                            .fontWeight(.medium)
                            .padding(.horizontal, 10)
                    }
                }
            }
        }
    }
}

#Preview {
    MenuItemsView()
}

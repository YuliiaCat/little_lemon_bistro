import SwiftUI

struct MenuItemComponent: View {
    let columns = [
            GridItem(.flexible()),
            GridItem(.flexible()),
            GridItem(.flexible())
        ]
    let text: String
    let items: [MenuItem]

    var body: some View {
        VStack {
            MenuCategoryTitle(text: text)
            LazyVGrid(columns: columns, spacing: 16) {
                ForEach(items) { item in
                    NavigationLink {
                        MenuItemDetailsView(item: item)
                    } label: {
                        VStack(spacing: 6) {
                            Image(item.image)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 120)

                            Text(item.title)
                                .font(.system(size: 14))
                                .foregroundStyle(.black)
                                .multilineTextAlignment(.center)
                                .lineLimit(2)
                                .frame(height: 36, alignment: .top)
                        }
                    }
                    .buttonStyle(.plain)
                }
            }
        }
    }
}

#Preview {
    MenuItemsView()
}

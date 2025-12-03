import SwiftUI

struct TobbarView: View {
    @State private var currentTab = 0
    @Namespace private var pageNavigation
    var body: some View {
        VStack {
            TopBar()
            ContentView()
        }
    }
    
    /// TopBar Picker View
    @ViewBuilder
    func TopBar() -> some View {
        VStack {
            Picker(selection: $currentTab) {
                Image(systemName: "house.fill")
                    .resizable()
                    .imageScale(.medium)
                    .tag(0)
                Image(systemName: "flame.fill")
                    .resizable()
                    .imageScale(.medium)
                    .tag(1)
                Image(systemName: "paperplane.fill")
                    .resizable()
                    .imageScale(.medium)
                    .tag(2)
            } label: {
                EmptyView()
            }
            .pickerStyle(.segmented)
            .padding(.horizontal)
        }
    }
    
    /// TopBar Content View
    @ViewBuilder
    func ContentView() -> some View {
        Group {
            if currentTab == 0 {
                Page1View()
            }
            if currentTab == 1 {
                Page2View()
            }
            if currentTab == 2 {
                Page3View()
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .overlay {
            Image("img\(currentTab)")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .matchedGeometryEffect(id: "BGIMAGETRANSITION", in: pageNavigation)
        }
        .backgroundExtensionEffect()
    }
}

#Preview("Top Bar View Preview") {
    TobbarView()
}

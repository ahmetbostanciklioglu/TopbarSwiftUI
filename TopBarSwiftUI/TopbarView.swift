import SwiftUI

struct TopbarView: View {
    @State private var topbar: Topbar = .home
    var body: some View {
        TopbarPicker
        TopbarContent
    }
    
    /// Top Bar Pickers
    @ViewBuilder
    fileprivate var TopbarPicker: some View {
        Picker(Topbar.pickerTitle, selection: $topbar) {
            ForEach(Topbar.allCases, id: \.self) { index in
                Image(systemName: index.topBarIcon)
                    .tag(index)
            }
        }
        .pickerStyle(.segmented)
        .padding()
    }
    
    /// Top Bar Content
    @ViewBuilder
    fileprivate var TopbarContent: some View {
        Image(topbar.topContent)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .backgroundExtensionEffect()
    }
}

#Preview("Top Bar View Preview") {
    TopbarView()
}

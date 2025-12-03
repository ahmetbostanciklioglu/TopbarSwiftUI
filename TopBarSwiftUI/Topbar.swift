import Foundation

enum Topbar: CaseIterable, Hashable {
    case home, search, settings
    
    /// Top Bar Title for the picker
    static var pickerTitle: String = "" 

    /// Top Bar icon
    var topBarIcon: String {
        switch self {
        case .home: return "house"
        case .search: return "magnifyingglass"
        case .settings: return "gearshape"
        }
    }
    
    /// Top Bar Content it can be a string for the image or view to use as a content in the TopbarView()
    var topContent: String {
        switch self {
        case .home: return "img0"
        case .search: return "img1"
        case .settings: return "img2"
        }
    }
}

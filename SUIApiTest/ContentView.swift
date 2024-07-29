import SwiftUI

struct ContentView: View {
    @State private var viewModel = ViewModel()
    var body: some View {
        VStack {
            InterfaceView()
        }
    }
}

#Preview {
    ContentView()
}

import SwiftUI
import shared

struct ContentView: View {
    var body: some View {
        NavigationView {
            let sections = sections()
            List {
                ForEach(sections) { section in
                    Section(section.title) {
                        ForEach(section.samples) { sample in
                            NavigationLink(destination: ResultView(sample: sample)) {
                                Text(sample.title)
                            }
                        }
                    }
                }
            }
        }
        .navigationTitle("Kotlin/Swift Interop Playground")
        .listStyle(GroupedListStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

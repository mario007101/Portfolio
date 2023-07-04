import SwiftUI
import WebKit


struct Browser: View {
    @State private var showWebView = false
    @State private var isLoading = false
    private let urlString: String = "https://www.google.com"
    
    var body: some View {
        ZStack {
            VStack{
                
                WebView(url: URL(string: urlString)!).frame(height: 500.0)
                    .cornerRadius(20)
                    .shadow(color: .black.opacity(0.3), radius: 20.0, x: 5, y: 5)
                    .padding(.top, -60)
                
                Link(destination: URL(string: urlString)!, label: {
                    Text("Open in a new window")
                }).padding(.top, 80)
                
                Button("Open in a sheet") {
                    showWebView.toggle()
                }
                .padding(.top, 20)
                .sheet(isPresented: $showWebView) {
                    WebView(url: URL(string: urlString)!)
                }
                
                Spacer()
            }
            
            if isLoading {
               LoadingScreen()
            }
        }
        .onAppear { startNetworkCall() }
        .background(
            Image("space")
            .resizable()
            .ignoresSafeArea()
        )
        .foregroundColor(.yellow)
        .font(.headline)
    }
    
    func startNetworkCall() {
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline:  .now() + 3) {
            isLoading = false
        }
    }
}

struct WebView: UIViewRepresentable {
    var url: URL
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        let request = URLRequest(url: url)
        uiView.load(request)
    }
}

struct Browser_Previews: PreviewProvider {
    static var previews: some View {
        Browser()
    }
}

struct LoadingScreen: View {
    var body: some View {
        ZStack {
            Image("space")
                .resizable()
                .ignoresSafeArea()
            ProgressView()
                .progressViewStyle(CircularProgressViewStyle(tint: .yellow))
                .scaleEffect(3)
        }
    }
}

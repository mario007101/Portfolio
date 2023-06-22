import SwiftUI

struct InformationAbout: View {
    var body: some View {
        NavigationView {
                JustifiedText("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer tristique, nulla ut ultrices gravida, libero dui elementum risus, vitae efficitur sem nunc et purus. Sed interdum, nisi eget vulputate ullamcorper, orci leo interdum erat, nec faucibus augue eros non erat. Ut vestibulum bibendum ipsum sit amet luctus. Integer vitae efficitur leo, quis porttitor erat.")
        }
    }
}

struct JustifiedText: UIViewRepresentable {
  private let text: String
  private let font: UIFont

  init(_ text: String, font: UIFont = .systemFont(ofSize: 18)) {
    self.text = text
    self.font = font
  }

  func makeUIView(context: Context) -> UITextView {
    let textView = UITextView()
    textView.font = font
    textView.textAlignment = .justified
    return textView
  }

  func updateUIView(_ uiView: UITextView, context: Context) {
    uiView.text = text
  }
}


struct InformationAbout_Previews: PreviewProvider {
    static var previews: some View {
        InformationAbout()
    }
}

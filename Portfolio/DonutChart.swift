import SwiftUI

struct ChartData: Identifiable {
    var id = UUID()
    var color : Color
    var slicePercent : CGFloat = 0.0
    var value : CGFloat
    var title: String
}

extension ChartData {
    static var sample: [ChartData] {
        [
          ChartData(color: .purple, value: 50, title: "C #"),
          ChartData(color: .orange, value: 35, title: "Swift"),
          ChartData(color: .blue, value: 7.5, title: "C"),
          ChartData(color: .red, value: 7.5, title: "Websites")
        ]
    }
}

struct DonutChart : View {
    @State private var chartData = ChartData.sample
    @State private var selectedSlice = -1
    @State private var isAnimating = false
    
    var body: some View {
        VStack {
            
            //For displaying the text of selected slice
            if selectedSlice != -1 {
                Text(chartData[selectedSlice].title)
                    .font(.largeTitle)
                    .foregroundColor(chartData[selectedSlice].color)
                    .padding(.bottom, 10)
                    .offset(x: isAnimating ? 0 : -200)
                    .animation(.spring())
                    .onAppear {
                                isAnimating = true
                    }
            }
            
            ZStack {
                ForEach(0..<chartData.count, id:\.self) { index in
                    Circle()
                        .trim(from: index == 0 ? 0.0 : chartData[index-1].slicePercent,
                              to: chartData[index].slicePercent)
                        .stroke(chartData[index].color,lineWidth: 50)
                        .onTapGesture {
                            selectedSlice = selectedSlice == index ? -1 : index
                        }
                        .scaleEffect(index == selectedSlice ? 1.1 : 1.0)
                        .animation(.spring(), value: selectedSlice)
                }
                
                //For diplaying the % of selected slice
                if selectedSlice != -1 {
                    Text(String(format: "%.0f", Double(chartData[selectedSlice].value))+" %")
                        .font(.title)
                        .foregroundColor(chartData[selectedSlice].color)
                        .bold()
                }
            }
            .frame(width: 200, height: 250)
            .padding(.bottom, 20)
            
        }
        .onAppear {
            setupChartData()
            setSelectedSlice()
        }
        .padding()
    }
    
    private func setupChartData() {
        let total : CGFloat = chartData.reduce(0.0) { $0 + $1.value }
        
        for i in 0..<chartData.count {
            let percentage = (chartData[i].value / total)
            chartData[i].slicePercent =  (i == 0 ? 0.0 : chartData[i - 1].slicePercent) + percentage
        }
    }
    private func setSelectedSlice() {
            if let index = chartData.firstIndex(where: { $0.title == "Swift" }) {
                selectedSlice = index
            }
        }
}

struct DonutChart_Previews: PreviewProvider {
    static var previews: some View {
        DonutChart()
    }
}

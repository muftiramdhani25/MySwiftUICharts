//
//  ContentView.swift
//  MySwiftUICharts
//
//  Created by Mufti Ramdhani on 07/03/21.
//

import SwiftUI
import SwiftUICharts

struct ContentView: View {
  var body: some View {
    NavigationView{
      ScrollView{
        VStack{
          // legend
          let iphone10 = Legend(color: .blue, label: "iPhone 10")
          let iphone9 = Legend(color: .pink, label: "iPhone 9")
          let iphone8 = Legend(color: .green, label: "iPhone 8")
          let iphone7 = Legend(color: .orange, label: "iPhone 7")
          let iphone6 = Legend(color: .yellow, label: "iPhone 6")
          let iphone5 = Legend(color: .purple, label: "iPhone 5")
          
          // data point
          let points: [DataPoint] = [
            .init(value: 2, label: "2", legend: iphone10),
            .init(value: 4, label: "4", legend: iphone9),
            .init(value: 6, label: "6", legend: iphone8),
            .init(value: 3, label: "3", legend: iphone6),
            .init(value: 7, label: "7", legend: iphone5),
            .init(value: 1, label: "1", legend: iphone6),
            .init(value: 12, label: "12", legend: iphone7),
            .init(value: 15, label: "15", legend: iphone10)
          ]
          
          // Line
          Section(header: Text("Line Chart"), content: {
            LineChartView(dataPoints: points)
              .frame(height: UIScreen.main.bounds.height/3)
              .padding()
              .background(Color(.secondarySystemBackground))
          })
          
          // bar
          Section(header: Text("Bar Chart"), content: {
            BarChartView(dataPoints: points)
              .frame(height: UIScreen.main.bounds.height/3)
              .padding()
          })
          
          // Horizontal Bar Chart
          Section(header: Text("Bar Chart"), content: {
            HorizontalBarChartView(dataPoints: points)
              .frame(height: UIScreen.main.bounds.height/3)
              .padding()
          })
        }
      }
      .navigationTitle("Charts & Graphs")
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
      .preferredColorScheme(.dark)
  }
}

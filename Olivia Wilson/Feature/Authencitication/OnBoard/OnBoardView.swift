//
//  OnBoardView.swift
//  Olivia Wilson
//
//  Created by Ata emir on 21.10.2022.
//

import SwiftUI

struct OnBoardView: View {
    @State var currentIndex:Int = 0
    var body: some View {
         
        GeometryReader { geometry in
            VStack{
                    Spacer()
                    TabView(
                        selection: $currentIndex,
                        content: {
                            ForEach((0...OnBoardModel.items.count-1),id: \.self) {
                            value in
                                SliderCard(model: OnBoardModel.items[value])
                        }
                    }).tabViewStyle(.page(indexDisplayMode: .never)).frame(height: geometry.dh(height: 0.6))
                    Spacer()
                    HStack{
                        ForEach((0...2),id:\.self) {index in
                            if (index == currentIndex){
                                IndicatorRectangle(width: geometry.dw(widht: 0.09))
                            } else {
                                IndicatorRectangle(width: geometry.dw(widht: 0.03))
                            }
                        }
                        
                    }.frame(height: geometry.dh(height: 0.008))
                    .padding(EdgeInsets.paddingVMedium)
                NormalButton(onTap: {},title: LocaleKeys.onBoard.getStart.rawValue)
            }.padding(EdgeInsets.paddingAllMedium)
        }
        
    }
}

private struct SliderCard: View {
    let model: OnBoardModel
    var body: some View {
        VStack {
            
            Image(model.imageName).resizable()
            
            Text(model.describtion).font(.system(size: 36,weight: .semibold)).foregroundColor(Color.black)
                
        }
    }
}

private struct IndicatorRectangle: View {
    var width: Double
    var body: some View {
        Rectangle().cornerRadius(25).frame(width: width)
    }
}

struct OnBoardView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardView()
    }
}

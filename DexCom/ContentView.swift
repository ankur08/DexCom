//
//  ContentView.swift
//  DexCom
//
//  Created by Ankur Nema on 13/03/26.
//

import SwiftUI

struct ContentView: View {
    @StateObject var vm = ViewModel()
    var body: some View {
        VStack {
            Text("current value :  \(vm.healthData.currentValue)")
            Text("Range : \(vm.dataRange)")
        }
        .onAppear {
            vm.fetchData()
        }
    }
}

#Preview {
    ContentView()
}




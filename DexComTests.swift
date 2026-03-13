import XCTest
@testable import DexCom

final class DexComTests: XCTestCase {
    
    func testFetchDataUpdatesHealthData() {
        let vm = ViewModel()
        
        // Initially, currentValue is 0
        XCTAssertEqual(vm.healthData.currentValue, 0)
        
        vm.fetchData()
        
        // After fetching, values should match NetworkManager's stubbed data
        XCTAssertEqual(vm.healthData.highValue, 120)
        XCTAssertEqual(vm.healthData.lowValue, 70)
        XCTAssertEqual(vm.healthData.currentValue, 189)
    }
    
    func testDataRangeLow() {
        var vm = ViewModel()
        vm.healthData.currentValue = 60  // below lowValue (70)
        
        XCTAssertEqual(vm.dataRange, .low)
    }
    
    func testDataRangeInRange() {
        var vm = ViewModel()
        vm.healthData.currentValue = 90  // between 70 and 120
        
        XCTAssertEqual(vm.dataRange, .inRange)
    }
    
    func testDataRangeHigh() {
        var vm = ViewModel()
        vm.healthData.currentValue = 150  // above highValue (120)
        
        XCTAssertEqual(vm.dataRange, .high)
    }
}

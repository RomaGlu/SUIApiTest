import Foundation

class ViewModel: ObservableObject {
    var isLoading: Bool = false
    var dataSource: [Characters] = []
    @Published var cellDataSource: [Characters]?
    
    func getData(_ valueForFilter: String?) {
        isLoading = true
        
        NetworkManager.sharedInstance.fetchAPIData(queryItemValue: valueForFilter ){ [weak self] apiData in
            guard let self else { return }
            self.isLoading = false
            self.dataSource = apiData
            self.mapCellData()
        }
    }
    
    func mapCellData() {
        cellDataSource = dataSource
    }
}

class TriCalculator {
    //2
    let total:Double
    let taxPct:Double
    let subtotal:Double
    
    //3
    init(total:Double,taxPct:Double){
        self.total = total
        self.taxPct = taxPct
        subtotal = total/(taxPct + 1)
    }
    //4
    func calcTipwithTipPct(tipPct:Double)->Double{
        return subtotal * tipPct
    }
    //1
    
    func returnPossibleTips() -> [Int:Double]{
    
        
    
}

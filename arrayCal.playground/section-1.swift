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
        
        let possibleTipsInferred = [0.15,018,0.20]
        let possibleTipExplicit:[Double] = [0.15,0.18,0.20]
        var numberOfItems = possibleTipsInferred.count
        //2
        var retval = [Int:Double]()
        for possibleTip in possibleTipsInferred{
                let intPct = Int(possibleTip*100)
                    //3
                    retval[intPct] = calcTipwithTipPct(possibleTip)
        }
        return retval
    }
    
}
        //6 
let tipCalc = tipCalculator(total:33.25,taxPct:0.06)
tipCalc.returnPossibleTips()

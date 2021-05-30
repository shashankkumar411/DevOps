Global Class MYServiceData{
    webservice static string name;
    webservice static List<Integer> MyDataCall(){
        
        List<Integer> satya = new List<Integer>();
        satya.add(1);
        satya.add(2);
        satya.add(3);
        satya.add(4);
        satya.add(5);
        
        return satya;
    }

}
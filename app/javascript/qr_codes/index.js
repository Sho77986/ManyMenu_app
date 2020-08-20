
window.addEventListener("load", function(){

  
  
  const priceFieldOne =document.getElementById("number_small")
  const priceFieldTwo =document.getElementById("number_big")


  
  priceFieldOne.addEventListener("keyup", function(){ 
   priceFieldTwo.addEventListener("keyup", function(){ 
  

    let NumberOne = document.getElementById("number_small").value
    let NumberTwo = document.getElementById("number_big").value
  
    let SalesCommission = document.getElementById('add-tax-price')
     SalesCommission = (NumberOne * 10 * 1.1 + NumberTwo * 100 * 1.1);
    let Profit = document.getElementById('price')
     Profit = SalesCommission + 500
 
    $('#add-tax-price').html(SalesCommission);
    $('#price').html(Profit); 
 
   })
  }) 

});
const term1Chk = document.querySelector('#term1');
const term2 = document.querySelector('#term2');
const term2Chk = document.getElementsByName('p_country');
const term3 = document.querySelector('#term3');

term1Chk.addEventListener('change', function(){
    if(this.checked){
        term2.style.display = 'block'
    } else{
        term2.style.display = 'none'
        term3.style.display = 'none'
    }
})

for (let i = 0 ; i < term2Chk.length ; i++){
    term2Chk[i].addEventListener('change', function(){
        if(this.checked){
            term3.style.display = 'block'
        }
    })
}

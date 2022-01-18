const tabCenter = document.querySelector('.dflexWrap');
const centerI = document.querySelector('.center');
 
function select(ulEl, liEl){
    Array.from(ulEl.children).forEach(
        v => v.classList.remove('active')
    )
    if(liEl){
        liEl.classList.add('active')

    }
}

tabCenter.addEventListener('click', e => {
    const selected = e.target;
    select(tabCenter, selected);
})

const center1 = document.querySelector('#center1');
const center2 = document.querySelector('#center2');
const center3 = document.querySelector('#center3');
const center4 = document.querySelector('#center4');
const center5 = document.querySelector('#center5');
const center6 = document.querySelector('#center6');
const center7 = document.querySelector('#center7');


document.querySelector('#btnCen1').addEventListener('click', function(){
    center2.style.display = 'none'
    center3.style.display = 'none'
    center4.style.display = 'none'
    center5.style.display = 'none'
    center6.style.display = 'none'
    center7.style.display = 'none'
    
    center1.style.display = 'block'

})
document.querySelector('#btnCen2').addEventListener('click', function(){
    center1.style.display = 'none'
    center3.style.display = 'none'
    center4.style.display = 'none'
    center5.style.display = 'none'
    center6.style.display = 'none'
    center7.style.display = 'none'
    
    center2.style.display = 'block'
})
document.querySelector('#btnCen3').addEventListener('click', function(){
    center1.style.display = 'none'
    center2.style.display = 'none'
    center4.style.display = 'none'
    center5.style.display = 'none'
    center6.style.display = 'none'
    center7.style.display = 'none'
    
    center3.style.display = 'block'
})
document.querySelector('#btnCen4').addEventListener('click', function(){
    center1.style.display = 'none'
    center2.style.display = 'none'
    center3.style.display = 'none'
    center5.style.display = 'none'
    center6.style.display = 'none'
    center7.style.display = 'none'
    
    center4.style.display = 'block'
})
document.querySelector('#btnCen5').addEventListener('click', function(){
    center1.style.display = 'none'
    center2.style.display = 'none'
    center3.style.display = 'none'
    center4.style.display = 'none'
    center6.style.display = 'none'
    center7.style.display = 'none'
    
    center5.style.display = 'block'
})
document.querySelector('#btnCen6').addEventListener('click', function(){
    center1.style.display = 'none'
    center2.style.display = 'none'
    center3.style.display = 'none'
    center4.style.display = 'none'
    center5.style.display = 'none'
    center7.style.display = 'none'
    
    center6.style.display = 'block'
})
document.querySelector('#btnCen7').addEventListener('click', function(){
    center1.style.display = 'none'
    center2.style.display = 'none'
    center3.style.display = 'none'
    center4.style.display = 'none'
    center5.style.display = 'none'
    center6.style.display = 'none'
    
    center7.style.display = 'block'
})

const p_category_data = {
    '의류':'의류', '신발류':'신발류', '가방':'가방', '잡화':'잡화', 'CD/DVD':'CD/DVD', '서적/인쇄물류':'서적/인쇄물류', '침구류':'침구류', '주방용품':'주방용품', '인테리어':'인테리어', '팬시용품/문구류':'팬시용품/문구류', '뷰티':'뷰티', '유아/장난감':'유아/장난감', '식품':'식품', '욕실용품':'욕실용품', '컴퓨터 및 주변기기':'컴퓨터 및 주변기기','스마트기기':'스마트기기', '생활가전':'생활가전', '자동차/오토바이 용품':'자동차/오토바이 용품', '스포츠/레저용품':'스포츠/레저용품', '가구':'가구', '의료/위생용품':'의료/위생용품', '악기류':'악기류'
}

const getSelect = document.querySelector('#p_category')

for (key in p_category_data){
    const setOptions = document.createElement('option')
    setOptions.value = key
    setOptions.text = p_category_data[key]
    getSelect.appendChild(setOptions)
}
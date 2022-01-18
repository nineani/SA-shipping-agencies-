function checkTerm(){
    const checkSignTerm = document.querySelector('#signupTerm');
    if(checkSignTerm.checked){
        location.href = "../account/signup.jsp"
        
    } else {
        alert('서비스 이용약관과 개인정보처리방침에 동의하여 합니다.')
    }
}
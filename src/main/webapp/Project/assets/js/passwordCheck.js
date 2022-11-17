
// 패스워드 유효성 검사
function checkPassword() {
    var form = document.signUpForm;
    var regExpPasswd = /^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]{8,}$/;

    var password = form.password.value;

    if (!regExpPasswd.test(password)) {
        alert("비밀번호는 문자,숫자,특수문자를 포함하여 8자리 이상 입력해 주세요!");
        return false;
    }

    form.submit();
}
function nodeEquals(nodeOne, nodeTwo) {
    const firstNode = getNodeValueById(nodeOne);
    const secondNode = getNodeValueById(nodeTwo);
    return firstNode === secondNode;
}

function getNodeValueById(id) {
    return document.getElementById(id).value;
}

function checkForm(event) {
    if (!nodeEquals('email', 'email-confirm')) {
        alert('email not equal!');
        event.preventDefault();
    } else if (!nodeEquals('password', 'password-confirm')) {
        alert('password not equal!');
        event.preventDefault();
    }
}

document.getElementById("student").addEventListener("submit", checkForm);
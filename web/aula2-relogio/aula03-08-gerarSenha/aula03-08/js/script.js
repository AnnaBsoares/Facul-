const pwEl = document.getElementById("pw");
const copyEl = document.getElementById("copy");
const lenEl = document.getElementById("length");
const upperEl = document.getElementById("upper");
const lowerEl = document.getElementById("lower");
const numberEl = document.getElementById("numbers");
const symbolsEl = document.getElementById("symbols");
const generateEl = document.getElementById("generate");

const upperLetters = "ABCDEFGHIJKLMNOPQRSTURVWXYZ";
const lowerLetters = "abcdefghijklmnopqrstuvwxyz";
const number = "0123456789";
const symbol = "!@#$%&*()|_";

function getUpperCase(){
     return upperLetters[Math.floor(Math.random() * upperLetters.length )];
}

function getLowerCase(){
    return lowerLetters[Math.floor(Math.random() * lowerLetters.length )];
}

function getNumberCase(){
    return number[Math.floor(Math.random() * number.length )];
}

function getSymbolCase(){
    return symbol[Math.floor(Math.random() * symbol.length )];
}

function generatePassword(){
    const len = lenEl.value;
    let password= "";
    
    //VERIFICA SE UMA OPÇÃO FOI SELECIONADA
    if((!upperEl.checked) && (!lowerEl.checked) && (!numberEl.checked) && (!symbolsEl.checked)){
        alert("Selecione uma opção");
    }
    else{
    for(i=0; i<len; i++){
        const x = generateX();
        password += x; // password = password + x (+ => concatenador)
        
    }
    pwEl.innerText = password;
}
    
  //  console.log(password);
}

function generateX(){
    const xs = [];


    if(upperEl.checked){
        xs.push(getUpperCase());
    }
    if(lowerEl.checked){
        xs.push(getLowerCase());
    }
    if(numberEl.checked){
        xs.push(getNumberCase());
    }
    if(symbolsEl.checked){
        xs.push(getSymbolCase());
    }
    if(xs.length === 0) return"";
        return xs[Math.floor(Math.random() * xs.length)];
    
}
/*
    VERIFICA SOMENTE CONTEÚDO
    0 == 0 TRUE
    0 == 0.0 TRUE
    0 == "0" TRUE
    VERIFICA CONTEÚDO E TIPO
    0 === 0 TRUE
    0 === 0.0 FALSE
    0 === "0" FALSE
*/

generateEl.addEventListener("click",generatePassword);
copyEl.addEventListener("click",()=>{
    const textarea = document.createElement("textarea");
    const password = pwEl.innerHTML;
    if(!password){
        return
    }
    textarea.value = password;
    document.body.appendChild(textarea);
    textarea.select();
    document.execCommand("copy");
    textarea.remove();
    alert("Senha copiada para a área de transferência");
})

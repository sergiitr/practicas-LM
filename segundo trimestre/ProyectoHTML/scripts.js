var preciototal=15;
var acumuladorSuma=0;
var acumuladorBotones=0;
parseFloat(preciototal);
parseFloat(acumuladorSuma);
parseFloat(acumuladorBotones);

var contAb=0;
function cambioAbiertas(imagen,texto,valor,idt) {
    contAb=contAb+1;
    if (contAb%2==1) {
        preciototal=15+acumuladorSuma+parseFloat(valor);
        preciototal=preciototal.toFixed(2);
        acumuladorBotones=1;
        document.getElementById("subs").innerHTML=parseFloat(acumuladorBotones)+'€';
        document.getElementById("total").innerHTML=parseFloat(preciototal)+'€';
        document.getElementById("imagen").src = imagen;
        document.getElementById("texto").innerHTML = texto;
    } else {
        preciototal=15+acumuladorSuma;
        preciototal=preciototal.toFixed(2);
        acumuladorBotones=0;
        document.getElementById("subs").innerHTML=parseFloat(acumuladorBotones)+'€';
        document.getElementById("total").innerHTML=parseFloat(preciototal)+'€';
        document.getElementById("imagen").src = imagen;
        document.getElementById("texto").innerHTML = texto;
    }
}

var contCe=0;
function cambioCerradas(imagen,texto,valor,idt) {
    contCe=contCe+1;
    if (contCe%2==1) {
        preciototal=15+acumuladorSuma+parseFloat(valor);
        preciototal=preciototal.toFixed(2);
        acumuladorBotones=1.25;
        document.getElementById("subs").innerHTML=parseFloat(acumuladorBotones)+'€';
        document.getElementById("total").innerHTML=parseFloat(preciototal)+'€';
        document.getElementById("imagen").src = imagen;
        document.getElementById("texto").innerHTML = texto;
    } else {
        preciototal=15+acumuladorSuma;
        preciototal=preciototal.toFixed(2);
        acumuladorBotones=0;
        document.getElementById("subs").innerHTML=parseFloat(acumuladorBotones)+'€';
        document.getElementById("total").innerHTML=parseFloat(preciototal)+'€';
        document.getElementById("imagen").src = imagen;
        document.getElementById("texto").innerHTML = texto;
    }
}

var contSeAb=0;
function cambioSemiAbiertas(imagen,texto,valor,idt) {
    contSeAb=contSeAb+1;
    if (contSeAb%2==1) {
        preciototal=15+acumuladorSuma+parseFloat(valor);
        preciototal=preciototal.toFixed(2);
        acumuladorBotones=0.75;
        document.getElementById("subs").innerHTML=parseFloat(acumuladorBotones)+'€';
        document.getElementById("total").innerHTML=parseFloat(preciototal)+'€';
        document.getElementById("imagen").src = imagen;
        document.getElementById("texto").innerHTML = texto;
    } else {
        preciototal=15-acumuladorSuma;
        preciototal=preciototal.toFixed(2);
        acumuladorBotones=0;
        document.getElementById("subs").innerHTML=parseFloat(acumuladorBotones)+'€';
        document.getElementById("total").innerHTML=parseFloat(preciototal)+'€';
        document.getElementById("imagen").src = imagen;
        document.getElementById("texto").innerHTML = texto;
    }
}

var contSeCer=0;
function cambioSemiCerradas(imagen,texto,valor,idt) {
    if (contSeCer%2==1) {
        preciototal=15+acumuladorSuma+parseFloat(valor);
        preciototal=preciototal.toFixed(2);
        acumuladorBotones=0.75;
        document.getElementById("subs").innerHTML=parseFloat(acumuladorBotones)+'€';
        document.getElementById("total").innerHTML=parseFloat(preciototal)+'€';
        document.getElementById("imagen").src = imagen;
        document.getElementById("texto").innerHTML = texto;
    } else {
        preciototal=15-acumuladorSuma;
        preciototal=preciototal.toFixed(2);
        acumuladorBotones=0;
        document.getElementById("subs").innerHTML=parseFloat(acumuladorBotones)+'€';
        document.getElementById("total").innerHTML=parseFloat(preciototal)+'€';
        document.getElementById("imagen").src = imagen;
        document.getElementById("texto").innerHTML = texto;
    }
}

var contIrr=0;
function cambioIrregulares(imagen,texto,valor,idt) {
    contIrr=contIrr+1;
    if (contIrr%2==1) {
        preciototal=15+acumuladorSuma+parseFloat(valor);
        preciototal=preciototal.toFixed(2);
        acumuladorBotones=0.5;
        document.getElementById("subs").innerHTML=parseFloat(acumuladorBotones)+'€';
        document.getElementById("total").innerHTML=parseFloat(preciototal)+'€';
        document.getElementById("imagen").src = imagen;
        document.getElementById("texto").innerHTML = texto;
    } else {
        preciototal=15-acumuladorSuma;
        preciototal=preciototal.toFixed(2);
        acumuladorBotones=0;
        document.getElementById("subs").innerHTML=parseFloat(acumuladorBotones)+'€';
        document.getElementById("total").innerHTML=parseFloat(preciototal)+'€';
        document.getElementById("imagen").src = imagen;
        document.getElementById("texto").innerHTML = texto;
    }
}

function suma(valor,idt,texto) {
    preciototal=parseFloat(document.getElementById("total").innerHTML)+parseFloat(valor);
    preciototal=preciototal.toFixed(2);
    acumuladorSuma=acumuladorSuma+valor;
    document.getElementById("extras").innerHTML=parseFloat(acumuladorSuma)+'€';
    document.getElementById("total").innerHTML=parseFloat(preciototal)+'€';
}

function resta(valor,idt,texto) {
    preciototal=parseFloat(document.getElementById("total").innerHTML)-parseFloat(valor);
    preciototal=preciototal.toFixed(2);
    acumuladorSuma=acumuladorSuma-valor;
    document.getElementById("extras").innerHTML=parseFloat(acumuladorSuma)+'€';
    document.getElementById("total").innerHTML=parseFloat(preciototal)+'€';
}

function habilitaTipos(form) {
    form.apertura[0].disabled = false;
    form.apertura[1].disabled = false;
    form.apertura[2].disabled = false;
    form.apertura[3].disabled = false;
    form.apertura[4].disabled = false;
    preciototal=15+acumuladorSuma;
    preciototal=preciototal.toFixed(2);
    document.getElementById("total").innerHTML=preciototal;
}

function deshabilitaTipos(form) {
    form.apertura[0].disabled = true;
    form.apertura[1].disabled = true;
    form.apertura[2].disabled = true;
    form.apertura[3].disabled = true;
    form.apertura[4].disabled = true;
    preciototal=15+acumuladorSuma;
    preciototal=preciototal.toFixed(2);
    document.getElementById("total").innerHTML=preciototal;
}

function descuento(varSelect) {
    var oficio = varSelect.value;
    if (oficio=="profesor") {
        preciototal=parseFloat(15+acumuladorBotones+acumuladorSuma);
        preciototal=parseFloat(preciototal*0.85);
        preciototal=preciototal.toFixed(2);
        document.getElementById("descuento").innerHTML=15+'%';
        document.getElementById("total").innerHTML=preciototal;
    } else if (oficio=="estudiante") {
        preciototal=parseFloat(15+acumuladorBotones+acumuladorSuma);
        preciototal=parseFloat(preciototal*0.75);
        preciototal=preciototal.toFixed(2);
        document.getElementById("descuento").innerHTML=25+'%';
        document.getElementById("total").innerHTML=preciototal;
    } else if (oficio=="biblio") {
        preciototal=parseFloat(15+acumuladorBotones+acumuladorSuma);
        preciototal=parseFloat(preciototal*0.8);
        preciototal=preciototal.toFixed(2);
        document.getElementById("descuento").innerHTML=20+'%';
        document.getElementById("total").innerHTML=preciototal;
    } else if (oficio=="otros") {
        preciototal=parseFloat(15+acumuladorBotones+acumuladorSuma);
        preciototal=parseFloat(preciototal*9);
        preciototal=preciototal.toFixed(2);
        document.getElementById("descuento").innerHTML=10+'%';
        document.getElementById("total").innerHTML=preciototal;
    } else {
        preciototal=parseFloat(preciototal+acumuladorBotones+acumuladorSuma);
        preciototal=preciototal.toFixed(2);
        document.getElementById("total").innerHTML=preciototal;
    }
}
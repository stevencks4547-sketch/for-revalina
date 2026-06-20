<!DOCTYPE html>
<html lang="ms">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Untuk Revalina ❤️</title>

<style>
body{
    margin:0;
    height:100vh;
    overflow:hidden;
    font-family: Arial;
    background: linear-gradient(135deg,#0f172a,#1e293b);
    color:white;
    display:flex;
    justify-content:center;
    align-items:center;
}

/* 光点背景 */
.bg{
    position:absolute;
    width:100%;
    height:100%;
    background: radial-gradient(circle at 30% 30%, #ff4d6d33, transparent 40%),
                radial-gradient(circle at 70% 70%, #4da6ff33, transparent 40%);
    animation: move 6s infinite alternate;
}

@keyframes move{
    from{transform:scale(1);}
    to{transform:scale(1.1);}
}

/* 卡片 */
.card{
    position:relative;
    z-index:2;
    width:85%;
    max-width:600px;
    padding:30px;
    border-radius:20px;
    background:rgba(255,255,255,0.06);
    backdrop-filter: blur(12px);
    text-align:center;
    box-shadow:0 0 30px rgba(0,0,0,0.4);
}

h1{
    color:#ff6b81;
}

/* 打字 */
#text{
    min-height:180px;
    line-height:1.8;
    white-space:pre-line;
}

/* 按钮 */
button{
    margin-top:20px;
    padding:12px 25px;
    border:none;
    border-radius:30px;
    background:#ff4d6d;
    color:white;
    cursor:pointer;
    transition:0.3s;
}

button:hover{
    transform:scale(1.05);
}

/* 爱心 */
.heart{
    position:absolute;
    color:#ff4d6d;
    animation:fall linear infinite;
    opacity:0.5;
}

@keyframes fall{
    from{transform:translateY(-50px);}
    to{transform:translateY(110vh);}
}
</style>
</head>

<body>

<div class="bg"></div>

<div class="card">

    <h1>Untuk Revalina ❤️</h1>

    <div id="text"></div>

    <button onclick="next()">
        Teruskan →
    </button>

</div>

<script>

const text = `Revalina,

Saya tahu awak mungkin sedang penat sekarang.

Saya tidak mahu memaksa awak untuk rasa apa-apa.

Saya cuma mahu awak tahu satu perkara:

Saya hargai awak.

Dan saya sedar saya mungkin tidak selalu faham perasaan awak dengan baik.

Tapi saya sedang belajar.

Bukan untuk jadi sempurna,
tapi untuk jadi lebih baik untuk awak.`;

let i = 0;

function type(){
    if(i < text.length){
        document.getElementById("text").innerHTML += text[i];
        i++;
        setTimeout(type,35);
    }
}
type();

function next(){
    document.getElementById("text").innerHTML =
    "Saya tak minta awak jawab sekarang.\n\nSaya cuma harap awak jaga diri baik-baik ❤️";
}

/* 爱心雨 */
for(let i=0;i<35;i++){
    let h=document.createElement("div");
    h.className="heart";
    h.innerHTML="❤";
    h.style.left=Math.random()*100+"vw";
    h.style.animationDuration=(5+Math.random()*8)+"s";
    h.style.fontSize=(10+Math.random()*20)+"px";
    document.body.appendChild(h);
}

</script>

</body>
</html>

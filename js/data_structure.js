var names=["Ed","Sea Biscuit","Black Beauty","Bob"];
var colors=["blue", "red","yellow","green"];

colors.push("purple");
names.push("Buttercup");

function pair(names,colors){
var horse_color={};
for(i=0;i<colors.length;i++){
  horse_color[names[i]]=colors[i]
}
return horse_color;
}

console.log(pair(names,colors));

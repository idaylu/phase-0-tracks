var names=["Ed","Sea Biscuit","Black Beauty","Bob"];
//Release 0 & 1
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

//Release 2
function Car(make,year,isRunning){
  this.make=make;
  this.year=year;
  this.isRunning=isRunning;

  this.rev=function(){console.log("Vroom!")};

  console.log("CAR CREATION COMPLETE");
};

console.log("Lets build a new car!");
var newCar1= new Car("Ford",2017,true);
console.log(newCar1);
console.log("-----");

console.log("Lets build another new car!");
var newCar2= new Car("Toyota",2005,true);
console.log(newCar2);
console.log("-----");

console.log("Lets build one more new car!");
var newCar2= new Car("Subaru",2016,true);
console.log(newCar2);
console.log("-----");
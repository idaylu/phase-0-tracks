//Release 0
//Takes in word to add to array of words
//Iterates through the array to find the longest word by finding length of each word
//Returns the longest word
function wordReturn(array) {
  var longestWord= "";
  for (i=0;i<array.length;i++){
    if (array[i].length>longestWord.length){
      longestWord=array[i];
    }
  }
  return longestWord;
}

//Driver code
array1=["hello", "hi", "hey","hola"];
array2=["bye","see ya","farewell","adieu"];
array3=["good day","aloha","best wishes","ni hao","*wave*"];

console.log(wordReturn(array1));
console.log(wordReturn(array2));
console.log(wordReturn(array3));


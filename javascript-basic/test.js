var name = "Boris";
console.log(typeof(name));

if (name == "Boris") {
  console.log(name)
}

for (var i = 0; i <= 10; i += 1) {
  console.log(i);
}

var festivals = { "glasto": "bristol", "leedsfest": "leeds", "tomorrowland": "amsterdam" }

Object.keys(festivals).forEach(function(festname) {
  console.log(festname + " was based in " + festivals[festname])
});

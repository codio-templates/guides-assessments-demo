// challenge4/test4.js

var fs = require('fs');
var cheerio = require('cheerio');

var errors = [];
var path = './challenge4/challenge.html'

if (!fs.existsSync(path)) {
    errors.push("challenge.html doesnt exist")
} 
else {
    var $ = cheerio.load(fs.readFileSync(path));

    if ($("ul").length <= 0) {
        errors.push("There is no unordered list (ul) in the page");
    }
    
    if ($("li").length != 3) {
        errors.push("There are not 3 list items (li) in the list");
    }
    
}

if( errors.length <= 0 ) {
    process.stdout.write('Well done!')
    process.exit(0);
}
else {
    process.stdout.write(errors.join("\n"))
    process.exit(1);
}

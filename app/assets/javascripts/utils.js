function clearParams() {
 var state = '';
 var title = '';
 var url =  location.pathname;

 history.pushState(state, title, url);
}

function addParam(value) {
  var state = '';
  var title = '';
  var url =  location.pathname + '?' + value;

  history.pushState(state, title, url);
}

//Parse the url to find if there is a url student and return false or the ID
function parseParam(val) {
    var result = false,
        tmp = [];
    location.search
    //.replace ( "?", "" )
    // this is better, there might be a question mark inside
    .substr(1)
        .split("&")
        .forEach(function (item) {
        tmp = item.split("=");
        if (tmp[0] === val) result = decodeURIComponent(tmp[1]);
    });
    return result;
}

function parseUrlI18n(){
  urlPathname = window.location.pathname
  // remove the first /
  parsedUrl = urlPathname.substr(1).split("/");
  return parsedUrl[0];
}

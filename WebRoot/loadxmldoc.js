function loadXMLDoc (xmlFile) {
  var xmlDom = null;
  var activeXNameList = ["MSXML2.DOMDocument.6.0", "MSXML2.DOMDocument.5.0", "MSXML2.DOMDocument.4.0", "MSXML2.DOMDocument.3.0", "MSXML2.DOMDocument", "Microsoft.XMLDOM", "MSXML.DOMDocument"];

  //兼容IE，注意IE11不能再用window.ActiveXObject或者document.all判断
  if (window.ActiveXObject) {
    for (var i = 0; i < activeXNameList.length; i++) {
      try {
        xmlDom = new ActiveXObject(activeXNameList[i]);
      } catch (e) {
        continue;
      }
      if (xmlDom) {
        xmlDom.async = false;
        xmlDom.load(xmlFile);
        break;
      }
    }
  } else if (document.implementation && document.implementation.createDocument) {//兼容火狐
    try {
      xmlDom = document.implementation.createDocument('', '', null);
      xmlDom.async = false;
      xmlDom.load(xmlFile);
    } catch (e) {
      var xmlhttp = new window.XMLHttpRequest();
      xmlhttp.open(xmlFile, false);
      xmlhttp.send(null);
      xmlDom = xmlhttp.responseXML;
    }
  } else {
    console.log("load data error");
  }

  return xmlDom;
  
}

  const xmldata =`
    < bookstore>
        <book>
            <title lang="en">THE BATMAN</title>
            <author>ROBERT PATTINSON</author>
            <year>2009</year>
            <price>29.99</price>
        </book>

        <book>
            <title lang="en"></title>
            <author>ROBERT PATTINSON</author>
            <year>2009</year>
            <price>29.99</price>
        </book>
    </bookstore >`

    // convert to xml string
    const parser = new DOMParser();
    const xmlDom = parser.parseFromString(xmlData, "text/xml");

    const result = xmlDom.evaluate('//book/title/text()', xmlDom,null,
        XPathResult.ORDERED_NODE_SNAPSHOT_TYPE);
    const booklist = document.getElementById("books")
    // loop through

    for(let i = 0; i < result.length; i++){
        const li = document.createElement("li");
        li.textContent = result.snapshotItem(i).nodeValue;
        booklist.appendChild(li);
    }
        
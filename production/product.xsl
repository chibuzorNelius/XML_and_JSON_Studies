<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
        <html>
            <head>
                <title>my product</title>
                <style>
                   
                    h1{color: white}
                    table{border: 1px solid black; border-collapse: collapse; margin:auto; width: 50%;}
                    th, td{border: 1px solid black; padding: 5px;}
                    th {background-color: #19cc28;}

                </style>
            </head>
            <body>
                <h1> production set</h1>
                <table>
                    <tr>
                        <th>Product Name</th>
                        <th>Product Description</th>
                        <th>Product Price</th>
                    </tr>
                    <xsl:for-each select="products/product">
                        <tr>
                            <td><xsl:value-of select="name"/></td>
                            <td><xsl:value-of select="discription"/></td>
                            <td><xsl:value-of select="price"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>

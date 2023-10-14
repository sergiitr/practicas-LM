<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="serie">
        <html>
            <head>
                <title>Series</title>
                <link rel="stylesheet" type="text/css" href="./estilos2.css"/>
            </head>
            <body>
                <p class="imagen"><a href="https://www.disneyplus.com/series/futurama/4B9X20Pjihaf?distributionPartner=google" target="_blank"><img class="logo" src="./imagenes/futulogo.gif"></img></a></p>
                <p class="desc1"><i>En Nueva York, el 31 de diciembre de 1999, un joven fracasado, Fry, que trabaja repartiendo pizzas, es accidentalmente congelado en un laboratorio criogénico.</i></p>
                <p class="desc1"><i>Cuando se despierta han pasado 1000 años, se encuentra en "Nueva" Nueva York, y descubre que el mundo ha sufrido algunas modificaciones.</i></p>
                <hr></hr>
                <p class="p2">
                    <button onclick="location.href='series.xml'">
                        Colocación por Divs
                    </button>
                </p>
                <hr/>
                <table>
                    <tr class="principal">
                        <th> Nombre </th>
                        <th> Imagen </th>
                        <th> Descripcion </th>
                        <th> Personalidad </th>
                        <th> Más información del personaje </th>
                    </tr>
                    <xsl:for-each select="personajes">
                        <tr>
                            <td class="nombreP"> <b> <xsl:value-of select="nombre"/> </b></td>
                            <td class="imagenes">
                                <xsl:element name="img">
                                    <xsl:attribute name="src">
                                        <xsl:value-of select="dibujo/@ruta"/>
                                    </xsl:attribute>
                                    <xsl:attribute name="height">190</xsl:attribute>
                                    <xsl:attribute name="width">110</xsl:attribute>
                                </xsl:element>
                            </td>
                            <td> <xsl:value-of select="descripcion"/> </td>
                            <td> <xsl:value-of select="personalidad"/> </td>
                            <td> <a target="black"><xsl:attribute name="href"> <xsl:value-of select="web/@ruta"/> </xsl:attribute> <xsl:value-of select="web"/></a> </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
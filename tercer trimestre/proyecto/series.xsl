<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="serie">
        <html>
            <head>
                <title>Series</title>
                <link rel="stylesheet" type="text/css" href="./estilos.css"/>
            </head>
            <body>
                <p class="imagen"><a href="https://www.disneyplus.com/series/futurama/4B9X20Pjihaf?distributionPartner=google" target="_blank"><img class="logo" src="./imagenes/futulogo.gif"></img></a></p>
                <p class="desc1"><i>En Nueva York, el 31 de diciembre de 1999, un joven fracasado, Fry, que trabaja repartiendo pizzas, es accidentalmente congelado en un laboratorio criogénico.</i></p>
                <p class="desc1"><i>Cuando se despierta han pasado 1000 años, se encuentra en "Nueva" Nueva York, y descubre que el mundo ha sufrido algunas modificaciones.</i></p>
                <hr></hr>
                <p class="p2">
                    <button onclick="location.href='series2.xml'">
                        Colocación por Tabla
                    </button>
                </p>
                <hr></hr>
                <xsl:for-each select="personajes">
                    <div class="image-container">
                        <div class="item">
                            <ul>
                                <h3><xsl:value-of select="personaje"/></h3>
                                <div id="izq">
                                    <xsl:element name="img">
                                        <xsl:attribute name="src">
                                            <xsl:value-of select="dibujo/@ruta"/>
                                        </xsl:attribute>
                                        <xsl:attribute name="height">225</xsl:attribute>
                                        <xsl:attribute name="width">140</xsl:attribute>
                                    </xsl:element>
                                </div>
                                <div id="der">
                                    <li><b>Nombre: </b><xsl:value-of select="nombre"/></li>
                                    <li><b>Descripción: </b><xsl:value-of select="descripcion"/></li>
                                    <li><b>Personalidad: </b><xsl:value-of select="personalidad"/></li>
                                    <li><a target="black"><xsl:attribute name="href"> <xsl:value-of select="enlace/@ruta"/> </xsl:attribute> <xsl:value-of select="enlace"/></a></li>
                                </div>
                            </ul>
                        </div>
                    </div>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="peliculas">
        <html>
            <head>
                <title>Series</title>
                <link rel="stylesheet" type="text/css" href="./estilos.css"/>
            </head>
            <body>
                <img class="streaming" src="./imagenes/streaming.png"></img>
                <h2 align="center"><a>
                    <xsl:attribute name="href">
                        <xsl:value-of select="web/@ruta"/>
                    </xsl:attribute>
                    <xsl:value-of select="web"/>
                </a></h2>
                <hr/>
                <xsl:for-each select="series">
                    <xsl:sort select="valoracion" data-type="number" order="descending"/>
                    <div class="image-container">
                        <div class="item">
                            <ul>
                                <h3><xsl:value-of select="titulo"/></h3>
                                <div id="izq">
                                    <xsl:element name="img">
                                        <xsl:attribute name="src">
                                            <xsl:value-of select="dibujo/@ruta"/>
                                        </xsl:attribute>
                                        <xsl:attribute name="height">190</xsl:attribute>
                                        <xsl:attribute name="width">110</xsl:attribute>
                                    </xsl:element>
                                </div>
                                <div id="der">
                                    <li class="imgfondo1"><i><b>Actor: </b><xsl:value-of select="actor1"/></i></li>
                                    <li class="imgfondo2"><i><b>Actor: </b><xsl:value-of select="actor2"/></i></li>
                                    <li class="imgfondo3"><i><b>Temporadas: </b><xsl:value-of select="temporadas"/></i></li>
                                    <li class="imgfondo3"><i><b>Plataforma: </b><xsl:value-of select="plataforma"/></i></li>
                                    <li class="imgfondo3"><i><b>Valoración: </b><xsl:value-of select="valoracion"/></i></li>
                                    <li class="imgfondo4"><i><b><a><xsl:attribute name="href"> <xsl:value-of select="web/@ruta"/> </xsl:attribute> <xsl:value-of select="web"/></a></b></i></li>
                                </div>
                            </ul>
                        </div>
                    </div>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
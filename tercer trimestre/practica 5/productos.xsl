<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="pizzeria">
        <html>
            <head>
                <title>Pizzeria</title>
                <link rel="stylesheet" type="text/css" href="./estilos.css"/>
            </head>
            <body>
                <h1>Pizzería Sergio Trillo Rodriguez</h1>
                <h2 align="center"><a>
                    <xsl:attribute name="href">
                        <xsl:value-of select="web/@ruta"/>
                    </xsl:attribute>
                    <xsl:value-of select="web"/>
                </a></h2>
                <xsl:for-each select="productos">
                    <xsl:sort select="precio" data-type="number" order="descending"/>
                    <div class="image-container">
                        <div class="item">
                            <h3><i><xsl:value-of select="descripcion"/></i></h3>
                            <ul>
                                <xsl:element name="img">
                                    <xsl:attribute name="src">
                                        <xsl:value-of select="dibujo/@ruta"/>
                                    </xsl:attribute>
                                    <xsl:attribute name="height">100</xsl:attribute>
                                </xsl:element>
                                <li class="imgfondo"><b>Código: </b><xsl:value-of select="idprod"/></li>
                                <li class="imgfondo2"><b>PVP: </b><xsl:value-of select="precio"/>€</li>
                                <xsl:if test="tipo='F'">
                                    <li class="imgfondo3"><b>Frito</b></li>
                                </xsl:if>
                                <xsl:if test="tipo='E'">
                                    <li class="imgfondo3"><b>Ensalada</b></li>
                                </xsl:if>
                                <xsl:if test="tipo='P'">
                                    <li class="imgfondo3"><b>Pizza</b></li>
                                </xsl:if>
                                <xsl:if test="tipo='H'">
                                    <li class="imgfondo3"><b>Hamburguesa</b></li>
                                </xsl:if>
                                <xsl:if test="tipo='B'">
                                    <li class="imgfondo3"><b>Bebida</b></li>
                                </xsl:if>
                            </ul>
                        </div>
                    </div>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
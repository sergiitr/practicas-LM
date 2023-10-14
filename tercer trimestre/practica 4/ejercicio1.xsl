<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="cuadros_famosos">
<html>
    <head>
        <title>Cuadros famosos</title>
        <link rel="stylesheet" type="text/css" href="estilos.css"/>
    </head>
    <body>
        <h1>Cuadros famosos - Sergio Trillo Rodriguez</h1>
        <xsl:for-each select="descripcion">
            <div class="image-container">
                <div class="item">
                    <h3><xsl:value-of select="@titulo"/></h3>
                    <ul>
                        <xsl:element name="img">
                            <xsl:attribute name="src">
                                <xsl:value-of select="dibujo/@ruta"/>
                            </xsl:attribute>
                            <xsl:attribute name="height">100</xsl:attribute>
                        </xsl:element>
                        <li><xsl:value-of select="titulo"/></li>
                        <li><xsl:value-of select="autor"/></li>
                        <li><xsl:value-of select="anio"/></li>
                        <li><xsl:value-of select="estilo"/></li>
                        <li>
                            <a>
                                <xsl:attribute name="href">
                                    <xsl:value-of select="web/@enlace"/>
                                </xsl:attribute>
                                <xsl:value-of select="web"/>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </xsl:for-each>
    </body>
</html>
</xsl:template>
</xsl:stylesheet>
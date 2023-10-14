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
                                    <xsl:if test="plataforma='Netflix'">
                                        <img class="plataformas" src="./imagenes/logonetflix.png"></img>
                                    </xsl:if>
                                    <xsl:if test="plataforma='Disney+'">
                                        <img class="plataformas" src="./imagenes/logodisney.png"></img>
                                    </xsl:if>
                                    <xsl:if test="plataforma='Amazon Prime'">
                                        <img class="plataformas" src="./imagenes/logoprime.png"></img>
                                    </xsl:if>
                                    <xsl:if test="plataforma='HBO'">
                                        <img class="plataformas" src="./imagenes/logohbo.png"></img>
                                    </xsl:if>
                                    <xsl:if test="plataforma='SkyShowtime'">
                                        <img class="plataformas" src="./imagenes/logosky.png"></img>
                                    </xsl:if>
                                    <xsl:if test="actor1/@sexo='M'">
                                        <li class="imgfondo1"><i><b>Actor: </b><xsl:value-of select="actor1"/></i></li>
                                    </xsl:if>
                                    <xsl:if test="actor1/@sexo='F'">
                                        <li class="imgfondo1"><i><b>Actriz: </b><xsl:value-of select="actor1"/></i></li>
                                    </xsl:if>
                                    <xsl:if test="actor2/@sexo='M'">
                                        <li class="imgfondo2"><i><b>Actor: </b><xsl:value-of select="actor2"/></i></li>
                                    </xsl:if>
                                    <xsl:if test="actor2/@sexo='F'">
                                        <li class="imgfondo2"><i><b>Actriz: </b><xsl:value-of select="actor2"/></i></li>
                                    </xsl:if>
                                    <li class="imgfondo3"><i><b>Temporadas: </b><xsl:value-of select="temporadas"/></i></li>
                                    <xsl:if test="valoracion='Netflix'">
                                        <img class="plataformas" src="./imagenes/logonetflix.png"></img>
                                    </xsl:if>
                                    <xsl:if test="valoracion=10">
                                        <li>
                                            <img class="carita" src="./imagenes/carita.png"></img>
                                            <img class="carita" src="./imagenes/carita.png"></img>
                                            <img class="carita" src="./imagenes/carita.png"></img>
                                            <img class="carita" src="./imagenes/carita.png"></img>
                                            <img class="carita" src="./imagenes/carita.png"></img>
                                        </li>
                                    </xsl:if>
                                    <xsl:if test="valoracion=9">
                                        <li>
                                            <img class="carita" src="./imagenes/carita.png"></img>
                                            <img class="carita" src="./imagenes/carita.png"></img>
                                            <img class="carita" src="./imagenes/carita.png"></img>
                                            <img class="carita" src="./imagenes/carita.png"></img>
                                            <img class="carita" src="./imagenes/carita.png"></img>
                                        </li>
                                    </xsl:if>
                                    <xsl:if test="valoracion=8">
                                        <li>
                                            <img class="carita" src="./imagenes/carita.png"></img>
                                            <img class="carita" src="./imagenes/carita.png"></img>
                                            <img class="carita" src="./imagenes/carita.png"></img>
                                            <img class="carita" src="./imagenes/carita.png"></img>
                                        </li>
                                    </xsl:if>
                                    <xsl:if test="valoracion=7">
                                        <li>
                                            <img class="carita" src="./imagenes/carita.png"></img>
                                            <img class="carita" src="./imagenes/carita.png"></img>
                                            <img class="carita" src="./imagenes/carita.png"></img>
                                            <img class="carita" src="./imagenes/carita.png"></img>
                                        </li>
                                    </xsl:if>
                                    <xsl:if test="valoracion=6">
                                        <li>
                                            <img class="carita" src="./imagenes/carita.png"></img>
                                            <img class="carita" src="./imagenes/carita.png"></img>
                                            <img class="carita" src="./imagenes/carita.png"></img>
                                        </li>
                                    </xsl:if>
                                    <xsl:if test="valoracion=5">
                                        <li>
                                            <img class="carita" src="./imagenes/carita.png"></img>
                                            <img class="carita" src="./imagenes/carita.png"></img>
                                            <img class="carita" src="./imagenes/carita.png"></img>
                                        </li>
                                    </xsl:if>
                                    <xsl:if test="valoracion=4">
                                        <li>
                                            <img class="carita" src="./imagenes/carita.png"></img>
                                            <img class="carita" src="./imagenes/carita.png"></img>
                                        </li>
                                    </xsl:if>
                                    <xsl:if test="valoracion=3">
                                        <li>
                                            <img class="carita" src="./imagenes/carita.png"></img>
                                            <img class="carita" src="./imagenes/carita.png"></img>
                                        </li>
                                    </xsl:if>
                                    <xsl:if test="valoracion=2">
                                        <li>
                                            <img class="carita" src="./imagenes/carita.png"></img>
                                        </li>
                                    </xsl:if>
                                    <xsl:if test="valoracion=1">
                                        <li>
                                            <img class="carita" src="./imagenes/carita.png"></img>
                                        </li>
                                    </xsl:if>
                                    <xsl:if test="valoracion=0">
                                        <li>
                                            <img class="carita" src="./imagenes/carita.png"></img>
                                        </li>
                                    </xsl:if>
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
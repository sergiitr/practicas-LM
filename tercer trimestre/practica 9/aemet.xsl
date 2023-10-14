<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="prediccion">
    <html>
        <head>
            <title>Predicción Ubeda</title>
            <link rel="stylesheet" type="text/css" href="./estilos.css"/>
        </head>
        <body>
            <p class="fondo"></p>
            <p class="fotoaemet"><a href="https://www.aemet.es/" target="_blank"><img src="./imagenes/logo_aemet.png" class="imgaemet"></img></a></p>
            <h2 class="nombre">Sergio Trillo Rodriguez</h2>
            <h3>
                <a href="https://www.aemet.es/es/eltiempo/prediccion/municipios/ubeda-id23092" target="_blank">
                    <button class="learn-more">
                        <span class="circle" aria-hidden="true">
                            <span class="icon arrow"></span>
                        </span>
                        <span class="button-text"><p class="enlace">El tiempo en Úbeda</p></span>
                    </button>
                </a>
            </h3>
            <br></br>
            
            <xsl:for-each select="dia">
                <div class="image-container">
                    <div class="item">
                        <p class="fecha"><xsl:value-of select="fecha"/></p>
                        <hr></hr>
                        <xsl:if test="estado_cielo='Despejado'">
                            <p class="imgcielo"><img src="./imagenes/despejado.png" class="fotoestado"></img></p>
                        </xsl:if>
                        <xsl:if test="estado_cielo='Poco nuboso'">
                            <p class="imgcielo"><img src="./imagenes/pocoNuboso.png" class="fotoestado"></img></p>
                        </xsl:if>
                        <xsl:if test="estado_cielo='Muy nuboso'">
                            <p class="imgcielo"><img src="./imagenes/muyNuboso.png" class="fotoestado"></img></p>
                        </xsl:if>
                        <xsl:if test="estado_cielo='Muy nuboso'">
                            <p class="imgcielo"><img src="./imagenes/soleado.png" class="fotoestado"></img></p>
                        </xsl:if>
                        <hr></hr>
                        <p>Cielo: <xsl:value-of select="estado_cielo"/></p>
                        <p>Tª Min/Tª Max: <xsl:value-of select="temp_minima"/>/<xsl:value-of select="temp_maxima"/></p>
                        <p>Humedad Min/Humedad Max: <xsl:value-of select="hum_minima"/>/<xsl:value-of select="hum_maxima"/></p>
                        <p>Probabilidad de precipitación: <xsl:value-of select="prob_precipitacion"/>%</p> 
                        <p>Viento:</p>
                        <ul>
                            <li>Dirección: <xsl:value-of select="direccion"/></li>
                            <li>Velocidad: <xsl:value-of select="velocidad"/></li>
                        </ul>
                    </div>
                </div>
            </xsl:for-each>
        </body>
    </html>
</xsl:template>
</xsl:stylesheet>
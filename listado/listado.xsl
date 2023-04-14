<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <h1>LISTA DE RECETAS</h1>
            <section class="contentSection">ç
                <div>
                    <xsl:for-each select="listado/receta">
                        <article class="linkPasta">
                            <h4>
                                <xsl:value-of select="titulo"/>
                            </h4>
                            <img>
                                <xsl:attribute name="src">
                                    <xsl:value-of select="foto"/>
                                </xsl:attribute>
                            </img>
                            <p><xsl:value-of select="info"/></p>
                            <div>
                                <ul>
                                    <li><xsl:value-of select="caracteristicas/tiempo"/></li>
                                    <li><xsl:value-of select="caracteristicas/dificultad"/></li>
                                    <li><xsl:value-of select="caracteristicas/estilo"/></li>
                                    <li><xsl:value-of select="caracteristicas/vegano"/></li>
                                </ul>
                            </div>
                            <span>
                                <a>
                                    <xsl:attribute name="href">
                                        <xsl:value-of select="link"/>
                                    </xsl:attribute>
                                    MÁS INFO
                                </a>
                            </span>
                        </article>
                    </xsl:for-each>
                </div>
            </section>
    </xsl:template>

</xsl:stylesheet>
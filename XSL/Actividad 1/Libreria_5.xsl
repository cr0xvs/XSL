<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <h1>Ejemplo Plantillas</h1>
                <xsl:apply-templates />
            </body>
        </html>
    </xsl:template>
    <xsl:template match="libreria">
        <h2>Mi biblioteca Personal</h2>
        <table>
            <tr bgcolor="#887788">
                <th>ISBN</th>
                <th>Precio</th>
                <th>Titulo</th>
                <th>Autor</th>
                <th>numPaginas</th>
            </tr>
            <xsl:apply-templates select="libro" />
        </table>
    </xsl:template>
    <xsl:template match="libro">
        <tr>
            <td>
                <xsl:value-of select="isbn" />
            </td>
            <xsl:apply-templates select="titulo" />
            <xsl:apply-templates select="autor" />
            <td>
                <xsl:value-of select="precio" />
            </td>
            <xsl:apply-templates select="numPaginas" />
        </tr>
    </xsl:template>
    <xsl:template match="titulo">
        <td bgcolor="#DDEEDD">
            <xsl:value-of select="." />
        </td>
    </xsl:template>
    <xsl:template match="autor">
        <td bgcolor="#AABBAA">
            <xsl:value-of select="." />
        </td>
    </xsl:template>
    <xsl:template match="numPaginas">
        <xsl:choose>
            <xsl:when test=". &gt; 150">
                <td bgcolor="#00ff00">
                    <xsl:value-of select="." />
                </td>
            </xsl:when>
            <xsl:otherwise>
                <td bgcolor="#FDEEFD">
                    <xsl:value-of select="." />
                </td>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
</xsl:stylesheet>
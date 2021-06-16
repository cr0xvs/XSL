<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <h1>Duracion de menos de 2 minuto</h1>
                <table border="1">
                    <tr bgcolor="#009999">
                        <th>Album</th>
                        <th>Artista</th>
                        <th>Sello</th>
                        <th>FechaPublicacion</th>
                        <th>Cancion</th>
                        <th>Duracion</th>
                    </tr>
                    <xsl:for-each select="Discos/Disco">
                        <xsl:variable name="Album">
                            <xsl:value-of select="Album" />
                        </xsl:variable>
                        <xsl:variable name="Artista">
                            <xsl:value-of select="Artista" />
                        </xsl:variable>
                        <xsl:variable name="Sello">
                            <xsl:value-of select="Sello" />
                        </xsl:variable>
                        <xsl:variable name="FechaPublicacion">
                            <xsl:value-of select="FechaPublicacion" />
                        </xsl:variable>
                        <xsl:for-each select="Cancion">
                            <xsl:if test="@tiempo &lt; 180">
                                <tr>
                                    <td>
                                        <xsl:value-of select="$Album" />
                                    </td>
                                    <td>
                                        <xsl:value-of select="$Artista" />
                                    </td>
                                    <td>
                                        <xsl:value-of select="$Sello" />
                                    </td>
                                    <td>
                                        <xsl:value-of select="$FechaPublicacion" />
                                    </td>
                                    <td>
                                        <xsl:value-of select="." />
                                        <br />
                                    </td>
                                    <td>
                                        <xsl:value-of select="@tiempo" />
                                    </td>
                                </tr>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
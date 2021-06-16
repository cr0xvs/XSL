<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <h1>Sello Discografico</h1>
                <table border="1">
                    <tr bgcolor="#ffcc00">
                        <th>Album</th>
                        <th>Artista</th>
                        <th>Sello</th>
                        <th>FechaPublicacion</th>
                        <th>Cancion</th>
                    </tr>
                    <xsl:for-each select="Discos/Disco[Sello='YSY A']">
                        <tr>
                            <td>
                                <xsl:value-of select="Album" />
                            </td>
                            <td>
                                <xsl:value-of select="Artista" />
                            </td>
                            <td>
                                <xsl:value-of select="Sello" />
                            </td>
                            <td>
                                <xsl:value-of select="FechaPublicacion" />
                            </td>
                            <td>
                                <xsl:for-each select="Cancion">
                                    <xsl:value-of select="." />
                                    <br />
                                </xsl:for-each>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
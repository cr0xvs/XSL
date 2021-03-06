<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text" />
    <xsl:template match="/">
        <xsl:for-each select="raiz/registro">
            <xsl:text> &#xA; </xsl:text>
            <xsl:text> &#xA; </xsl:text>
            [
            <xsl:value-of select="identificador" />
            ]
            <xsl:for-each select="texto/p">
                <xsl:text> &#xA; </xsl:text>
                <xsl:value-of select="." />
            </xsl:for-each>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>
<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:f="http://hl7.org/fhir"
    exclude-result-prefixes="xs" version="2.0">
    <xsl:output method="text"/>
    <xsl:template match="/">
        <xsl:text>V2,Name,Definition,Type,Cardinality,</xsl:text>
        <xsl:text>DependsOn,Value,</xsl:text>
        <xsl:text>FHIR,Definition,Type,Cardinality,Comments,</xsl:text>
        <xsl:text>Product,Code,CodeSystem&#xA;</xsl:text>
        <xsl:for-each-group select="/f:ConceptMap/f:element" group-by="f:code/@value">
            <!-- sort first by segment or data type -->
            <xsl:sort select="tokenize(current-grouping-key(), '-')[1]"/>
            <xsl:sort select="tokenize(current-grouping-key(), '-')[2]" data-type="number"/>
            <xsl:sort select="tokenize(current-grouping-key(), '-')[3]" data-type="number"/>
            <xsl:for-each select="current-group()">
                <xsl:variable name="code" select="f:code/@value"/>
                <xsl:variable name="codePos" select="position()"/>
                <xsl:variable name="targets" select="f:target"/>
                <xsl:for-each select="$targets">
                    <xsl:variable name="target" select="."/>
                    <xsl:variable name="targetPos" select="position()"/>
                    <xsl:variable name="depends" select="f:dependsOn"/>
                    <xsl:variable name="products" select="f:product"/>
                    <xsl:for-each select="1 to max((1, count($depends), count($products)))">
                        <xsl:variable name="i" select="."/>
                        <xsl:if test="$i = 1 and $targetPos = 1 and $codePos = 1">
                            <xsl:value-of select="$code"/>
                        </xsl:if>
                        <xsl:text>,,,,,</xsl:text>
                        <xsl:choose>
                            <xsl:when test="$depends[position() = $i]/f:element/@value">
                                <xsl:value-of select="$depends[position() = $i]/f:element/@value"/>
                                <xsl:text>,</xsl:text>
                                <xsl:value-of select="$depends[position() = $i]/f:code/@value"/>
                                <xsl:text>,</xsl:text>
                            </xsl:when>
                            <xsl:when test="$depends[position() = $i]">
                                <xsl:value-of select="$code"/>
                                <xsl:text>,</xsl:text>
                                <xsl:value-of select="$depends[position() = $i]/f:code/@value"/>
                                <xsl:text>,</xsl:text>
                            </xsl:when>
                            <xsl:otherwise>
                                <xsl:text>,,</xsl:text>
                            </xsl:otherwise>
                        </xsl:choose>
                        <xsl:if test="$i = 1">
                            <xsl:value-of select="$target/f:code/@value"/>
                        </xsl:if>
                        <xsl:text>,,,,"</xsl:text>
                        <xsl:value-of
                            select="replace($target/f:comments/@value, '&quot;', '&quot;&quot;')"/>
                        <xsl:text>",</xsl:text>
                        <xsl:value-of select="$products[position() = $i]/f:element/@value"/>
                        <xsl:text>,</xsl:text>
                        <xsl:value-of select="$products[position() = $i]/f:code/@value"/>
                        <xsl:text>,</xsl:text>
                        <xsl:value-of select="$products[position() = $i]/f:codeSystem/@value"/>
                        <xsl:text>&#xA;</xsl:text>
                    </xsl:for-each>
                </xsl:for-each>
            </xsl:for-each>
        </xsl:for-each-group>
    </xsl:template>
</xsl:stylesheet>

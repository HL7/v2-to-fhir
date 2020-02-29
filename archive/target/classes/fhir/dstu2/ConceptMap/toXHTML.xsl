<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:f="http://hl7.org/fhir"
    exclude-result-prefixes="xs" version="2.0">
    <xsl:output method="xml" indent="yes"/>
    <xsl:template match="/">
        <table border="1" style="border-collapse: collapse;">
            <thead>
                <tr>
                    <th colspan="3">V2 Concept</th>
                    <th colspan="5">FHIR Concepts</th>
                    <th colspan="4">V2 Details</th>
                    <th colspan="3">FHIR Details</th>
                </tr>
                <tr>
                    <th>V2 Name</th>
                    <th>DependsOn</th>
                    <th>Value</th>
                    <th>FHIR</th>
                    <th>Comments</th>
                    <th>Product</th>
                    <th>Code</th>
                    <th>CodeSystem</th>
                    <th>Name</th>
                    <th>Definition</th>
                    <th>Type</th>
                    <th>Cardinality</th>
                    <th>Definition</th>
                    <th>Type</th>
                    <th>Cardinality</th>
                </tr>
            </thead>
            <tbody>
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
                            <xsl:variable name="rows" select='max((1, count($depends), count($products)))'/>
                            <xsl:for-each select="1 to $rows">
                                <xsl:variable name="i" select="."/>
                                <tr>
                                    <xsl:variable name="targetBorder">
                                        <xsl:choose>
                                            <xsl:when
                                                test="$i = 1 and $targetPos = 1 and $codePos = 1">
                                                border-bottom: none; border-top: single; </xsl:when>
                                            <xsl:otherwise> border-bottom: none; border-top: none;
                                            </xsl:otherwise>
                                        </xsl:choose>
                                    </xsl:variable>
                                    <td class="V2Code" style="{$targetBorder}">
                                        <xsl:if test="$i = 1 and $targetPos = 1 and $codePos = 1">
                                            <xsl:value-of select="$code"/>
                                        </xsl:if>
                                    </td>
                                    <xsl:choose>
                                        <xsl:when test="$depends[position() = $i]/f:element/@value">
                                            <td class="depCode">
                                                <xsl:value-of
                                                  select="$depends[position() = $i]/f:element/@value"
                                                />
                                            </td>
                                            <td class="depValue">
                                                <xsl:value-of
                                                  select="$depends[position() = $i]/f:code/@value"/>
                                            </td>
                                        </xsl:when>
                                        <xsl:when test="$depends[position() = $i]">
                                            <td class="depCode">
                                                <xsl:value-of select="$code"/>
                                            </td>
                                            <td class="depValue">
                                                <xsl:value-of
                                                  select="$depends[position() = $i]/f:code/@value"/>
                                            </td>
                                        </xsl:when>
                                        <xsl:otherwise>
                                            <td class="depCode noValue"/>
                                            <td class="depValue noValue"/>
                                        </xsl:otherwise>
                                    </xsl:choose>

                                    <xsl:variable name='fhirBorder'>
                                        <xsl:choose>
                                            <xsl:when test="$i = 1"> 
                                                border-bottom: none; border-top: single; 
                                            </xsl:when>
                                            <xsl:otherwise> border-bottom: none; border-top: none;
                                            </xsl:otherwise>
                                        </xsl:choose>
                                    </xsl:variable>
                                    <td class="fhirCode" style='{$fhirBorder}'>
                                        <xsl:if test="$i = 1">
                                            <xsl:value-of select="$target/f:code/@value"/>
                                        </xsl:if>
                                    </td>
                                    <td class="comments" style='{$fhirBorder}'>
                                        <xsl:value-of
                                            select="replace($target/f:comments/@value, '&quot;', '&quot;&quot;')"
                                        />
                                    </td>
                                    <td class="prodName">
                                        <xsl:value-of
                                            select="$products[position() = $i]/f:element/@value"/>
                                    </td>
                                    <td class="prodCode">
                                        <xsl:value-of
                                            select="$products[position() = $i]/f:code/@value"/>
                                    </td>
                                    <td class="prodSystem">
                                        <xsl:value-of
                                            select="$products[position() = $i]/f:codeSystem/@value"
                                        />
                                    </td>
                                    <td class="V2Name" style="{$targetBorder}"/>
                                    <td class="V2Def" style="{$targetBorder}"/>
                                    <td class="V2Type" style="{$targetBorder}"/>
                                    <td class="V2Card" style="{$targetBorder}"/>
                                    <td class="fhirDef" style='{$fhirBorder}'/>
                                    <td class="fhirType" style='{$fhirBorder}'/>
                                    <td class="fhirCard" style='{$fhirBorder}'/>
                                </tr>
                            </xsl:for-each>
                        </xsl:for-each>
                    </xsl:for-each>
                </xsl:for-each-group>
            </tbody>
        </table>
    </xsl:template>
</xsl:stylesheet>

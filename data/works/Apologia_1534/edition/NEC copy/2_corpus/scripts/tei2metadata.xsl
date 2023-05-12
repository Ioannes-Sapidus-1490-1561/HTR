<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0">
    
    <xsl:output method="text" indent="no" encoding="UTF-8"/>
    
    <xsl:variable name="xmlDocuments" select="collection('../tei/?select=?*.xml;recurse=yes')"/>
    
    <xsl:template match="/">
        <xsl:text>id</xsl:text>
        <xsl:text>,</xsl:text>
        <xsl:text>Title</xsl:text>
        <xsl:text>,</xsl:text>
        <xsl:text>Author</xsl:text>
        <xsl:text>,</xsl:text>
        <xsl:text>AuthorID</xsl:text>
        <xsl:text>,</xsl:text>
        <xsl:text>Date</xsl:text>
        <xsl:text>,</xsl:text>
        <xsl:text>Gender</xsl:text>
        <xsl:text>,</xsl:text>
        <xsl:text>Genre</xsl:text>
        <xsl:text>,</xsl:text>
        <xsl:text>Status</xsl:text>
        <xsl:text>&#10;</xsl:text>
        <xsl:for-each select="$xmlDocuments">
            <xsl:text>"</xsl:text><xsl:value-of select="TEI/@xml:id"/><xsl:text>"</xsl:text>
            <xsl:text>,</xsl:text>
            <xsl:text>"</xsl:text><xsl:value-of select="//titleStmt/title"/><xsl:text>"</xsl:text>
            <xsl:text>,</xsl:text>
            <xsl:text>"</xsl:text><xsl:value-of select="//titleStmt/author/persName/surname"/><xsl:text>"</xsl:text>
            <xsl:text>,</xsl:text>
            <xsl:text>"</xsl:text><xsl:value-of select="//titleStmt/author/persName/ptr/@target"/><xsl:text>"</xsl:text>
            <xsl:text>,</xsl:text>
            <xsl:text>"</xsl:text><xsl:value-of select="//sourceDesc//date/@when"/><xsl:text>"</xsl:text>
            <xsl:text>,</xsl:text>
            <xsl:text>"</xsl:text><xsl:value-of select="//keywords/term[@type='gender']/@n"/><xsl:text>"</xsl:text>
            <xsl:text>,</xsl:text>
            <xsl:text>"</xsl:text><xsl:value-of select="//keywords/term[@type='genre']/@n"/><xsl:text>"</xsl:text>
            <xsl:text>,</xsl:text>
            <xsl:text>"</xsl:text><xsl:value-of select="//keywords/term[@type='corrected']/@n"/><xsl:text>"</xsl:text>
            <xsl:text>&#10;</xsl:text>
        </xsl:for-each>
    </xsl:template>
    
</xsl:stylesheet>

<!--  -->
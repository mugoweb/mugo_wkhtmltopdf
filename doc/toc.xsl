<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:outline="http://wkhtmltopdf.org/outline"
                xmlns="http://www.w3.org/1999/xhtml">
    <xsl:output doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN"
                doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"
                indent="yes" />
    <xsl:template match="outline:outline">
        <html>
            <head>
                <title>Table of Contents</title>
                <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
                <style>
                    @font-face {
                      font-family: 'Open Sans';
                      font-style: normal;
                      font-weight: 300;
                      src: local('Open Sans Light'), local('OpenSans-Light'), url(http://fonts.gstatic.com/s/opensans/v10/DXI1ORHCpsQm3Vp6mXoaTegdm0LZdjqr5-oayXSOefg.woff2) format('woff2'), url(http://fonts.gstatic.com/s/opensans/v10/DXI1ORHCpsQm3Vp6mXoaTXhCUOGz7vYGh680lGh-uXM.woff) format('woff');
                    }
                    @font-face {
                      font-family: 'Open Sans';
                      font-style: normal;
                      font-weight: 400;
                      src: local('Open Sans'), local('OpenSans'), url(http://fonts.gstatic.com/s/opensans/v10/cJZKeOuBrn4kERxqtaUH3VtXRa8TVwTICgirnJhmVJw.woff2) format('woff2'), url(http://fonts.gstatic.com/s/opensans/v10/cJZKeOuBrn4kERxqtaUH3T8E0i7KZn-EPnyo3HZu7kw.woff) format('woff');
                    }
                    @font-face {
                      font-family: 'Open Sans';
                      font-style: normal;
                      font-weight: 600;
                      src: local('Open Sans Semibold'), local('OpenSans-Semibold'), url(http://fonts.gstatic.com/s/opensans/v10/MTP_ySUJH_bn48VBG8sNSugdm0LZdjqr5-oayXSOefg.woff2) format('woff2'), url(http://fonts.gstatic.com/s/opensans/v10/MTP_ySUJH_bn48VBG8sNSnhCUOGz7vYGh680lGh-uXM.woff) format('woff');
                    }
                    @font-face {
                      font-family: 'Open Sans';
                      font-style: normal;
                      font-weight: 700;
                      src: local('Open Sans Bold'), local('OpenSans-Bold'), url(http://fonts.gstatic.com/s/opensans/v10/k3k702ZOKiLJc3WVjuplzOgdm0LZdjqr5-oayXSOefg.woff2) format('woff2'), url(http://fonts.gstatic.com/s/opensans/v10/k3k702ZOKiLJc3WVjuplzHhCUOGz7vYGh680lGh-uXM.woff) format('woff');
                    }
                    @font-face {
                      font-family: 'Open Sans';
                      font-style: normal;
                      font-weight: 800;
                      src: local('Open Sans Extrabold'), local('OpenSans-Extrabold'), url(http://fonts.gstatic.com/s/opensans/v10/EInbV5DfGHOiMmvb1Xr-hugdm0LZdjqr5-oayXSOefg.woff2) format('woff2'), url(http://fonts.gstatic.com/s/opensans/v10/EInbV5DfGHOiMmvb1Xr-hnhCUOGz7vYGh680lGh-uXM.woff) format('woff');
                    }
                    @font-face {
                      font-family: 'Open Sans';
                      font-style: italic;
                      font-weight: 300;
                      src: local('Open Sans Light Italic'), local('OpenSansLight-Italic'), url(http://fonts.gstatic.com/s/opensans/v10/PRmiXeptR36kaC0GEAetxko2lTMeWA_kmIyWrkNCwPc.woff2) format('woff2'), url(http://fonts.gstatic.com/s/opensans/v10/PRmiXeptR36kaC0GEAetxh_xHqYgAV9Bl_ZQbYUxnQU.woff) format('woff');
                    }
                    @font-face {
                      font-family: 'Open Sans';
                      font-style: italic;
                      font-weight: 400;
                      src: local('Open Sans Italic'), local('OpenSans-Italic'), url(http://fonts.gstatic.com/s/opensans/v10/xjAJXh38I15wypJXxuGMBo4P5ICox8Kq3LLUNMylGO4.woff2) format('woff2'), url(http://fonts.gstatic.com/s/opensans/v10/xjAJXh38I15wypJXxuGMBobN6UDyHWBl620a-IRfuBk.woff) format('woff');
                    }
                    @font-face {
                      font-family: 'Open Sans';
                      font-style: italic;
                      font-weight: 600;
                      src: local('Open Sans Semibold Italic'), local('OpenSans-SemiboldItalic'), url(http://fonts.gstatic.com/s/opensans/v10/PRmiXeptR36kaC0GEAetxl2umOyRU7PgRiv8DXcgJjk.woff2) format('woff2'), url(http://fonts.gstatic.com/s/opensans/v10/PRmiXeptR36kaC0GEAetxn5HxGBcBvicCpTp6spHfNo.woff) format('woff');
                    }
                    @font-face {
                      font-family: 'Open Sans';
                      font-style: italic;
                      font-weight: 700;
                      src: local('Open Sans Bold Italic'), local('OpenSans-BoldItalic'), url(http://fonts.gstatic.com/s/opensans/v10/PRmiXeptR36kaC0GEAetxolIZu-HDpmDIZMigmsroc4.woff2) format('woff2'), url(http://fonts.gstatic.com/s/opensans/v10/PRmiXeptR36kaC0GEAetxjqR_3kx9_hJXbbyU8S6IN0.woff) format('woff');
                    }
                    @font-face {
                      font-family: 'Open Sans';
                      font-style: italic;
                      font-weight: 800;
                      src: local('Open Sans Extrabold Italic'), local('OpenSans-ExtraboldItalic'), url(http://fonts.gstatic.com/s/opensans/v10/PRmiXeptR36kaC0GEAetxnibbpXgLHK_uTT48UMyjSM.woff2) format('woff2'), url(http://fonts.gstatic.com/s/opensans/v10/PRmiXeptR36kaC0GEAetxkCDe67GEgBv_HnyvHTfdew.woff) format('woff');
                    }

                    body * {
                    margin: 0;
                    padding: 0;
                    font-family: 'Open Sans', sans-serif;
                    }
                    h1 {
                    text-align: center;
                    font-size: 20px;
                    font-family: font-family: 'Open Sans', sans-serif;
                    }
                    span {float: right;}
                    li {list-style: none; margin: 10px 0;}
                    ul {
                    font-size: 10px;
                    font-family: font-family: 'Open Sans', sans-serif;
                    }
                    .toc {
                    width: 75%;
                    margin: 0 auto;
                    }
                    ul li:first-child,
                    ul li:nth-child(0n+2) { display: none; }
                    ul li.level-3 > div * { display: inline-block; }
                    ul li.level-4 { display: none; }
                </style>
            </head>
            <body>
                <h1>Table of Contents</h1>
                <div class="toc">
                    <ul>
                        <xsl:apply-templates select="outline:item/outline:item"/>
                    </ul>
                </div>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="outline:item">
        <li class="level-{count(ancestor::*)}">
            <xsl:if test="@title!=''">
                <div>
                    <a>
                        <xsl:if test="@link">
                            <xsl:attribute name="href">
                                <xsl:value-of select="@link"/>
                            </xsl:attribute>
                        </xsl:if>
                        <xsl:if test="@backLink">
                            <xsl:attribute name="name">
                                <xsl:value-of select="@backLink"/>
                            </xsl:attribute>
                        </xsl:if>
                        <!--xsl:value-of select="count(ancestor::*)" /-->
                        <xsl:value-of select="@title" />
                    </a>
                    <span> 
                        <!-- 3 is the page offset, the report content starts on the fourth page of the document -->
                        <span> 
                            <xsl:value-of select="@page" /> 
                        </span> 
                    </span>
                </div>
            </xsl:if>
            <ul>
                <xsl:comment>added to prevent self-closing tags in QtXmlPatterns</xsl:comment>
                <xsl:apply-templates select="outline:item"/>
            </ul>
        </li>
    </xsl:template>
</xsl:stylesheet>

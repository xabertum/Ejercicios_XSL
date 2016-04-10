<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : XSL-EJ4-Subastas online.xsl
    Created on : 5 de abril de 2016, 8:42
    Author     : dam102
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="html" />

  <!-- TODO customize transformation rules 
       syntax recommendation http://www.w3.org/TR/xslt 
  -->
  <xsl:template match="/">
    <html>
      <head>
        <title>XSL-EJ4-Subastas online.xsl</title>
        <link rel="stylesheet" type="text/css" href="style.css"/>
      </head>
      <body>
                
        <div id = "wrapper">

            <section>
            <h1>
              Casa de Subastas -  
              <xsl:value-of select="subastas/@lugar"/>
            </h1>
          </section>
          
          <section>
            <h1>
              Tipo de Subasta -
              
              <xsl:choose>
                <xsl:when test="subastas/subasta/@online = 'yes'">
                  <xsl:attribute name = "class">online</xsl:attribute>
                
                  Subastas online
                  
                </xsl:when>
                
                <xsl:otherwise>
                  
                  subastas no online
                  
                <!-- <xsl:value-of select = "substtring(@fecha,1,10)"/> -->
                  
                </xsl:otherwise>
              </xsl:choose>  
            </h1>
          </section>
                
          <section>
            <article id= "imagenArticle">
              <xsl:for-each select = "subastas/subasta/lote">
                <div class="lote">
                  <p>
                    <xsl:value-of select="producto/descripcion" disable-output-escaping="yes"/>
                  </p>
                </div>
               <xsl:for-each select = "subastas/subasta/lote">
                  <img class = "lote_img" alt ="" src = "{.}"/>
                </xsl:for-each>
              </xsl:for-each>
            </article>
          </section>
                
        </div>

      </body>
    </html>
  </xsl:template>
    
</xsl:stylesheet>

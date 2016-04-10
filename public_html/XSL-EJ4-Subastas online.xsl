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
                            <xsl:value-of select = "subastas/@lugar"/>
                        </h1>
                        
                        <h3>
                            <xsl:value-of select = "subastas/subasta/@fechayhora"/>                            
                        </h3>
                    </section>
                    
                    
                    <section class = "titulo_lote">
                        
                       
                            <h2>
                                Lote número: <xsl:value-of select = "subastas/subasta/lote/@id" /> - 
                                <xsl:value-of select = "subastas/subasta/lote/@nombre" /> - 
                                Precio de Salida : <xsl:value-of select = "subastas/subasta/lote/@precio_salida" />
                            
                            </h2>
                                                
                    </section>
          
                    <section>
                        <article id= "imagenArticle">
                            <xsl:for-each select = "subastas/subasta/lote">
 
                                <div class="lote">
                                    
                                    <xsl:for-each select = "producto">
                                        <p>
                                            <xsl:value-of select="descripcion" disable-output-escaping="yes"/>
                                        </p>
                                    
                                        <p>Lote número: <xsl:value-of select = "/@id" /> - 
                                            <xsl:value-of select = "/@nombre" />
                                        </p>
                                        <xsl:for-each select = "imagenes/imagen">
                                    
                                            <img class = "lote_img">
                                                <xsl:attribute name="src">
                                                    <xsl:value-of select="."/>
                                                </xsl:attribute>
                                    
                                            </img>
                                    
                                        </xsl:for-each>
                                    
                                    
                                    </xsl:for-each>
                                </div>
                                
                                
                                
                            </xsl:for-each>
                        </article>
                    </section>
                
                </div>

            </body>
        </html>
    </xsl:template>
    
</xsl:stylesheet>

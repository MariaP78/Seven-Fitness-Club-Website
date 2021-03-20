<?xml version="1.0" encoding="UTF-8"?> <!--creating xslt stylesheet with transformation template-->
<xsl:stylesheet version="2.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="clase">
    <html>
        <head>
            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
            <title>Program Group Fitness</title>
            <link href="group_fitness_style.css" rel="stylesheet" type="text/css"/>
        </head>
        <body>
            <header>
                <div><img src="seven_logo.png" alt="SevenGymLogo"/></div>
                <div><h1>Seven Fitness Club</h1></div>
                <div><img src="seven_logo.png" alt="SevenGymLogo"/></div>
            </header>

            <div class="menu">
                <ul>
                    <li>CLUBURI</li>
                    <li>ABONAMENTE</li>
                    <li>GROUP FITNESS</li>
                    <li>ANTRENORI</li>
                    <li>ALĂTURĂ-TE</li>
                </ul>
	        </div>
            
            <div class="main">
                <table>
                    <tr class="captabel">
                        <th>NUME</th>
                        <th>ANTRENOR</th>
                        <th>TIP</th>
                        <th>DATA</th>
                        <th>DURATA(minute)</th>
                    </tr>

                    <xsl:for-each select="clase_de_grup">
                        <xsl:sort select="tip"></xsl:sort>
                        <xsl:sort select="nume"></xsl:sort>
                        <xsl:sort select="durata" data-type="number" order="descending"></xsl:sort>
                            <xsl:choose>
                                <xsl:when test="tip='Cardio'">
                                    <tr class="cardio">
                                        <td><xsl:value-of select="nume"></xsl:value-of></td>
                                        <td><xsl:value-of select="antrenor"></xsl:value-of></td>
                                        <td><xsl:value-of select="tip"></xsl:value-of></td>
                                        <td><xsl:value-of select="data"></xsl:value-of></td>
                                        <td><xsl:value-of select="durata"></xsl:value-of></td>
                                    </tr>
                                </xsl:when>
                                <xsl:when test="tip='Fitness'">
                                    <tr class="fitness">
                                        <td><xsl:value-of select="nume"></xsl:value-of></td>
                                        <td><xsl:value-of select="antrenor"></xsl:value-of></td>
                                        <td><xsl:value-of select="tip"></xsl:value-of></td>
                                        <td><xsl:value-of select="data"></xsl:value-of></td>
                                        <td><xsl:value-of select="durata"></xsl:value-of></td>
                                    </tr>
                                </xsl:when>
                                <xsl:otherwise test="tip='Body and Mind'">
                                    <tr class="bodymind">
                                        <td><xsl:value-of select="nume"></xsl:value-of></td>
                                        <td><xsl:value-of select="antrenor"></xsl:value-of></td>
                                        <td><xsl:value-of select="tip"></xsl:value-of></td>
                                        <td><xsl:value-of select="data"></xsl:value-of></td>
                                        <td><xsl:value-of select="durata"></xsl:value-of></td>
                                    </tr>
                                </xsl:otherwise>
                            </xsl:choose>
                    </xsl:for-each>
                </table>
            </div>

            <footer>
                <div><img src="seven_logo.png" alt="SevenGymLogo"/></div>
                <div>
                    <b>Contact:</b>
                    <br/>
                    <a href="https://www.facebook.com/sevenfitness.in/community/" class="fa fa-facebook"></a>
			        <a href="mailto:7gym@gmail.com" class="fa fa-google"></a>
			        <a href="tel:+40777511304" class="fa fa-phone"></a>
                </div>
                <div><p>Întregul conținut al acestui website este proprietatea Seven Fitness Club România.</p></div>
                
	        </footer>
            
        </body>
    </html>
</xsl:template>
</xsl:stylesheet>

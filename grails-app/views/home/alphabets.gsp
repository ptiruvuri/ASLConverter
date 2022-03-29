<%@ page import="grails.util.Holders;" %>
<html>
<head>
	<title>Welcome to English to ASL Converter</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="${Holders.config.grails.appRootUrl}/css/bootstrap.min.css" type='text/css'>
	<link rel='stylesheet' href='${Holders.config.grails.appRootUrl}/css/asl.css' type='text/css' />
	<style>
	body {
		background-color: lightyellow;
	}
	</style>
</head>
<body>

		<div id="signLangContainer">
			<div id="signSentanceContainer">
				<g:each in="${srcText?.split()}" var="word">
					<div class="signWordContainer">
						<div class="englishWord">${word}</div>
						<g:each in="${word}" var="letter">
							<span class="signLetter">
								<img src="${Holders.config.grails.appRootUrl}/images/${letter?.toUpperCase()}.png" alt="${letter}" onerror="this.onerror=null; this.src='/aslConverter/images/No_image_available.svg.png'; this.style='width:55px; height:55px';">
							</span>
						</g:each>
					</div>
				</g:each>
			</div>
		</div>
	</div>
</body>
</html>
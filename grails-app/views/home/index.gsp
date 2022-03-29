<%@ page import="grails.util.Holders;" %>
<html>
<head>
	<title>Welcome to English to ASL Converter</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="${Holders.config.grails.appRootUrl}/css/bootstrap.min.css" type='text/css'>
	<link rel='stylesheet' href='${Holders.config.grails.appRootUrl}/css/asl.css' type='text/css' />
	<script>
		var wordState = "block";

		// Javascript method to toggle(show or hide) the English word above the finger-spelling signs
		function toggleWord(){
			const allEnglishWords = document.getElementsByClassName('englishWord');

			if(wordState == "none"){
				wordState = "block";
			}
			else{
				wordState = "none";
			}

			for (const word of allEnglishWords) {
				// Remove element from DOM or add it back
				word.style.display = wordState;
			}
		}
	</script>
	<style>
		body {
			background-color: lightyellow;
		}
	</style>
</head>
<body>
	<div class="title">English to ASL Converter</div>
	%{--	Instructions Div--}%
	<div style="margin:10px;">
			<strong> Instructions</strong>
			<div>
			<ul>
				<li>This tool can be used to convert letters/words or sentences in English to sign language symbols in ASL.</li>
				<li>Enter some text in English in the Text Area and Click "Convert to ASL" to see the corresponding finger spelling sign images in ASL.</li>
				<li>Click on 'Clear' button to clear the Text area and finger spelling sign images to start with new text.</li>
				<li>Click on 'Print' button to print the page.</li>
				<li>Click on 'Toggle English Words' button to show or hide English Words above the Sign language symbols.</li>
				<li>We can see the letter corresponding to the sign image when we hover over the image.</li>
				<li>To see all the alphabets and corresponding finger spelling signs, click on the 'Show Alphabets and Finger Signs' link to see them in a new window.</li>
			</ul>
		</div>
	</div>

	%{-- Wrapper Div that will include the Input Text area, action buttons and div for finger-spelling signs for the input entered--}%
	<div id="wrapper">
		<div id="englishInput">
			%{--	Input form with a Text area for user input of the text in English and a submit button to submit the form back--}%
			%{--	to the Controller(on server) to convert the words to ASL--}%
			<g:form name="home" action="convertToAsl">
				<label class="sourceLabel" for="srcText">Enter Text (in English)</label>
				<textarea name="srcText" id="srcText" placeholder="Enter English Text Here..." required="">${srcText}</textarea>
				<div class="convertBtnDiv">
					<button type="submit" name="Text2Sign" value="Text2Sign" class="btn btn-primary" onclick="validate();">Convert to ASL</button>
					%{-- buttons and links for optional actions--}%
					<span><a class="btn btn-info" href="${Holders.config.grails.appRootUrl}/home" style="margin: 10px;"  >Clear</a></span>
					<button type="button" name="printPage" value="print" class="btn btn-info" style="margin: 10px;"  onclick="javascript:window.print();">Print</button>
					<span><a target="_blank" href="${Holders.config.grails.appRootUrl}/home/sampleSentences" style="margin: 10px;"  >Show Sample Sentences</a></span>
					<span><a target="_blank" href="${Holders.config.grails.appRootUrl}/home/showAlphabets" style="margin: 10px;"  >Show Alphabets and Finger Signs</a></span>
				</div>
			</g:form>
		</div>

		<div id="signLangContainer">
			<div id="signSentanceContainer">
				%{-- Parse the input sentences. For each line, parse words; For each word, parse the characters/alphabets;--}%
				%{-- For each alphabet, load the corresponding finger-spelling sign image from aslConveter/web-app/images folder--}%
				<g:each in="${srcText?.split("\\r?\\n")}" var="sentenceInANewLine">
					<g:each in="${sentenceInANewLine?.split()}" var="word">
						<div class="signWordContainer">
							<div class="englishWord">${word}</div>
							<g:each in="${word}" var="letter">
								<span class="signLetter">
									%{-- If the image is not found i.e. if the character is not a valid English Alphabet, load a default "Image not found" image using--}%
									%{-- the onerror handler;--}%
									<img src="${Holders.config.grails.appRootUrl}/images/${letter?.toUpperCase()}.png" alt="${letter}" title="${letter}"
										 onerror="this.onerror=null; this.src='${Holders.config.grails.appRootUrl}/images/No_image_available.svg.png'; this.style='width:55px; height:55px';">
								</span>
							</g:each>
						</div>
					</g:each>
					<br/>
				</g:each>
			</div>
		</div>
		%{-- Show the Toggle button if there is a valid text that was translated--}%
		<g:if test="${srcText}">
			<div>
				<button type="button" name="toggle" value="toggle" class="btn btn-info" style="margin: 10px;"  onclick="javascript:toggleWord();">Toggle English Words</button>
			</div>
		</g:if>
	</div>
</body>
</html>
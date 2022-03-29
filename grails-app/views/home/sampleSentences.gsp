<%@ page import="grails.util.Holders;" %>
<html>
<head>
	<title>English to ASL Converter - Sample Sentences</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="${Holders.config.grails.appRootUrl}/css/bootstrap.min.css" type='text/css'>
	<link rel='stylesheet' href='${Holders.config.grails.appRootUrl}/css/asl.css' type='text/css' />
	<style>
	body {
		background-color: lightyellow;
	}
	</style>
</head>
<body >
	<div class="title">English to ASL Converter</div>
	<div style="margin:10px;">
		<strong> Sample Sentences</strong>
		<br>
		<p>This tool is implemented in such a way to translate any English word/sentence into corresponding finger spelling signs. Please use the words/sentences from the below list for testing.</p>
			<div>
			<ul>
				<li>I think this material is much prettier than that, don’t you?</li>
				<li>Well, I don’t know. I like them both. Why do you like that one better?</li>
				<li>Well, the design is more interesting and the colors are brighter. And it’s not as expensive, either.</li>
				<li>Oh, I see what you mean. And besides, these colors are more becoming to you.</li>
				<li>Do you really think so? I’ll buy it, then.</li>

				<li>What do you do in your spare time?</li>
				<li>Oh, nothing special. I read… watch TV… go to the movies.</li>

				<li>Don’t you have any hobbies, like stamp collecting or things like that?</li>
				<li>No, I don’t have any hobbies. How about you?</li>
				<li>I have just one—photography. It’s expensive, but it’s a lot of fun.	</li>
			</ul>
		</div>
	</div>
</body>
</html>
<style>
	* {
		text-align: justify;
	}

	h2 {
		float: none;
		margin: 15px 0 15px 0;
	}

	h1 {
		float: none;
		margin: 25px 0 15px 0;
	}

	p {
		margin: 0 0 10px 0;
		font-size: 1.2em;
		line-height: 1.2em;
	}

	strong {
		font-weight: bold;
	}

	ol > li {
		counter-increment: root;
	}

	ol > li > ol {
		counter-reset: subsection;
		list-style-type: none;
		margin-top: 8px;
	}

	ol > li > ul {
		margin-top: 8px;
	}

	ol > li > ol > li {
		counter-increment: subsection;
	}

	ol > li > ol > li:before {
		position: absolute;
		content: counter(root) "." counter(subsection) ". ";
		margin-left: -2.2rem;
	}

	li,
	li p {
		margin: 0 0 10px 10px;
		font-size: 0.8rem;
		line-height: 1rem;
	}

	.main {
		padding: 0;
		display: flex;
	}

	.content {
		background-color: #eee;
		padding: 5px 30px;
	}

	.sidebar {
		width: 17%;
		position: fixed;
		margin: 0;
	}

	.sidebar ul {
		background: #eee;
		padding: 10px;
		margin: 0;
	}

	.sidebar ul li {
		margin: 0;
		list-style: none;
		padding: 9px 0;
		color: #4285f4;
		line-height: 19px;
		font-size: 16px;
		font-weight: 400;
		border: 0;
	}

	.sidebar ul li a {
		text-decoration: none;
		padding: 12px 0;
		line-height: 19px;
		font-size: 16px;
		font-weight: 400;
		margin-bottom: 0;
		margin-top: 0;
		color: #757575;
	}

	.sidebar ul li.active {
		margin-bottom: 0;
		margin-top: 0;
		color: #0B5F9F;
		display: inline-block;
	}

	.sidebar ul li.active a {
		color: #0B5F9F;
		margin-left: -6px;
	}

	.sidebar ul li.active:before {
		border-left: solid 4px #0B5F9F;
		content: "";
		margin-left: -10px;
		padding-left: 12px;
	}

	.download-list {
		list-style: none;
		margin: 0px;
		padding: 0px;
		display: block;
		width:100%;
	}

	.download-list > li {
		background-color: rgb(255, 255, 255);
		border: 1px solid #dddddd;
		padding: 0px;
		margin: 0px 0px 10px;
		height: 60px;
		border-radius: 4px;
		overflow: hidden;
	}

	.download-list > li > .info {
		padding: 8px;
		text-align: center;
		display: inline-block;
		height: 60px;
	}

	.download-list > li > .info > .title {
		margin: 0px;
		font-size: 1.4em;
		font-weight: 600;
	}

	.download-list > li > .info > p.desc {
		margin: 0px;
		font-size: 1em;
		width: 100%;
		display: block;
	}

	.download-list .pdf {
		background-image: url('/images/adobe.png');
		float: left;
	}

	.download-list .download {
		background-image: url('/images/download.png');
		float: right;
	}

	.download-list .pdf,
	.download-list .download {
		width: 60px;
		height: 60px;
		display: inline-block;
	}

</style>

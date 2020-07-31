(function()
{
	var scriptLocation;
	window.gcen=
	{

		_scriptName : "gcenmap.js",

		_getScriptLocation : function()
		{
			if (scriptLocation != undefined)
			{
				return scriptLocation;
			}
			
			scriptLocation = "";
			var isOL = new RegExp("(^|(.*?\\/))(" + gcen._scriptName + ")(\\?|$)");

			var scripts = document.getElementsByTagName('script');
			for ( var i = 0, len = scripts.length; i < len; i++)
			{
				var src = scripts[i].getAttribute('src');
				if (src)
				{
					var match = src.match(isOL);
					if (match)
					{
						scriptLocation = match[1];
						break;
					}
				}
			}
			return scriptLocation;
		}
	};
	window.gcen.api={};
	
	var jsfiles = new Array(
			"system.js",
			"basetype.js",
			"excanvas.js",
			"maps.js"
			); // etc.

	var agent = navigator.userAgent;
	
	
	//2018.12.13 ������ /�����е� ����� �� �ε� �ȵǴ� �κ� ����
	var docWrite = (agent.match("MSIE") || agent.match("Safari")  || agent.match("Firefox") || agent.indexOf("iPhone") > -1 || agent.indexOf("iPad") > -1);
	
	if(docWrite)
	{
		var allScriptTags = new Array(jsfiles.length);
	}
	var host = gcen._getScriptLocation() + "lib/";	
	for ( var i = 0, len = jsfiles.length; i < len; i++)
	{
		if (docWrite)
		{
			allScriptTags[i] = "<script src='" + host + jsfiles[i] + "'></script>";
		}
		else
		{
			var s = document.createElement("script");
			s.src = host + jsfiles[i];
			var h = document.getElementsByTagName("head").length ? document.getElementsByTagName("head")[0] : document.body;
			h.appendChild(s);
		}
	}
	
	if (docWrite)
	{
		document.write(allScriptTags.join(""));
	}
})();

/**
 * Constant: VERSION_NUMBER
 */
gcen.VERSION_NUMBER = "Gcenmap 1.0";

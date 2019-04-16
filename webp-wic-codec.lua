-- scaffold geniefile for webp-wic-codec

webp-wic-codec_script = path.getabsolute(path.getdirectory(_SCRIPT))
webp-wic-codec_root = path.join(webp-wic-codec_script, "webp-wic-codec")

webp-wic-codec_includedirs = {
	path.join(webp-wic-codec_script, "config"),
	webp-wic-codec_root,
}

webp-wic-codec_libdirs = {}
webp-wic-codec_links = {}
webp-wic-codec_defines = {}

----
return {
	_add_includedirs = function()
		includedirs { webp-wic-codec_includedirs }
	end,

	_add_defines = function()
		defines { webp-wic-codec_defines }
	end,

	_add_libdirs = function()
		libdirs { webp-wic-codec_libdirs }
	end,

	_add_external_links = function()
		links { webp-wic-codec_links }
	end,

	_add_self_links = function()
		links { "webp-wic-codec" }
	end,

	_create_projects = function()

project "webp-wic-codec"
	kind "StaticLib"
	language "C++"
	flags {}

	includedirs {
		webp-wic-codec_includedirs,
	}

	defines {}

	files {
		path.join(webp-wic-codec_script, "config", "**.h"),
		path.join(webp-wic-codec_root, "**.h"),
		path.join(webp-wic-codec_root, "**.cpp"),
	}

end, -- _create_projects()
}

---

project "lunasvg"
	kind "StaticLib"
	language "C++"
	cppdialect "C++17"
	staticruntime "off"

	targetdir ("bin/" .. OutputDir .. "/%{prj.name}")
    objdir ("bin-int/" .. OutputDir .. "/%{prj.name}")

    files
    {
        "source/lunasvg.cpp",
        "source/element.cpp",
        "source/property.cpp",
        "source/parser.cpp",
        "source/layoutcontext.cpp",
        "source/canvas.cpp",
        "source/clippathelement.cpp",
        "source/defselement.cpp",
        "source/gelement.cpp",
        "source/geometryelement.cpp",
        "source/graphicselement.cpp",
        "source/maskelement.cpp",
        "source/markerelement.cpp",
        "source/paintelement.cpp",
        "source/stopelement.cpp",
        "source/styledelement.cpp",
        "source/styleelement.cpp",
        "source/svgelement.cpp",
        "source/symbolelement.cpp",
        "source/useelement.cpp",

        "3rdparty/plutovg/plutovg.c",
        "3rdparty/plutovg/plutovg-paint.c",
        "3rdparty/plutovg/plutovg-geometry.c",
        "3rdparty/plutovg/plutovg-blend.c",
        "3rdparty/plutovg/plutovg-rle.c",
        "3rdparty/plutovg/plutovg-dash.c",
        "3rdparty/plutovg/plutovg-ft-raster.c",
        "3rdparty/plutovg/plutovg-ft-stroker.c",
        "3rdparty/plutovg/plutovg-ft-math.c",
    }

    includedirs
	{
        "include",
		"source",
        "3rdparty/plutovg",
	}

    filter "system:windows"
		systemversion "latest"

    filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"
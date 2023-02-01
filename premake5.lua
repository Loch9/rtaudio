project "rtaudio"
	kind "StaticLib"
	language "C++"
	staticruntime "off"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
		"RtAudio.cpp",
		"RtAudio.h",
		"rtaudio_c.cpp",
		"rtaudio_c.h",
		"include/asio.cpp",
		"include/asio.h",
		"include/asiodrivers.cpp",
		"include/asiodrivers.h",
		"include/asiodrvr.h",
		"include/asiolist.cpp",
		"include/asiolist.h",
		"include/asiosys.h",
		"include/dsound.h",
		"include/functiondiscoverykeys_devpkey.h",
		"include/ginclude.h",
		"include/iasiodrv.h",
		"include/iasiothiscallresolver.cpp",
		"include/iasiothiscallresolver.h",
		"include/soundcard.h",
	}

	defines
	{
		"_CRT_SECURE_NO_WARNINGS"
	}

	filter "system:windows"
		systemversion "latest"
		cppdialect "C++17"

	filter "system:linux"
		pic "on"
		systemversion "latest"
		cppdialect "C++17"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"

	filter "configurations:Dist"
		runtime "Release"
		optimize "on"
        	symbols "off"

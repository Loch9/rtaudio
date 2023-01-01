project "rtaudio"
	kind "StaticLib"
	language "C++"

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

	filter "system:windows"
		systemversion "latest"
		cppdialect "C++17"
		staticruntime "on"

	filter "system:linux"
		pic "on"
		systemversion "latest"
		cppdialect "C++17"
		staticruntime "on"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"

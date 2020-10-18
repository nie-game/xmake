platform("windowsclangcross")
    set_hosts("linux")
    set_archs("x86_64")
    set_formats ("static", "$(name).lib")
    set_formats ("object", "$(name).o")
    set_formats ("shared", "$(name).dll")
    set_formats ("symbol", "$(name).sym")
    set_toolchains("clang")


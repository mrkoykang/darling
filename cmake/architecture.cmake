macro(generate_architecture)
    if (TARGET_x86_64)
        set(APPLE_ARCH_64BIT "x86_64")
    elseif (TARGET_ARM64)
        set(APPLE_ARCH_64BIT "arm64")
    else ()
        set(APPLE_ARCH_64BIT "")
    endif ()

    if (TARGET_i386)
        set(APPLE_ARCH_32BIT "i386")
    else ()
        set(APPLE_ARCH_32BIT "")
    endif ()

    if (TARGET_x86_64)
        set(BUILD_TARGET_64BIT TRUE)
        set(APPLE_TARGET_TRIPLET_64BIT "x86_64-apple-darwin20")
    elseif (TARGET_ARM64)
        set(BUILD_TARGET_64BIT TRUE)
        set(APPLE_TARGET_TRIPLET_64BIT "arm64-apple-darwin20")
    else ()
        set(BUILD_TARGET_64BIT FALSE)
        set(APPLE_TARGET_TRIPLET_64BIT "")
    endif ()
    if (TARGET_i386)
        set(BUILD_TARGET_32BIT TRUE)
        set(APPLE_TARGET_TRIPLET_32BIT "i386-apple-darwin20")
    else ()
        set(BUILD_TARGET_32BIT FALSE)
        set(APPLE_TARGET_TRIPLET_32BIT "")
    endif ()

    if (BUILD_TARGET_64BIT)
        set(APPLE_TARGET_TRIPLET_PRIMARY ${APPLE_TARGET_TRIPLET_64BIT})
    elseif (BUILD_TARGET_32BIT)
        set(APPLE_TARGET_TRIPLET_PRIMARY ${APPLE_TARGET_TRIPLET_32BIT})
    else ()
        set(APPLE_TARGET_TRIPLET_PRIMARY "")
    endif ()
endmacro()

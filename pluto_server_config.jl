(
    # Julia Compiler options: DEFAULTS, on purpose.
    # Upstream pluto-on-binder uses pkgimages="no", optimize=1 to make
    # LIVE precompilation faster. This image pre-bakes all package caches
    # at build time instead, so the workers must run with the SAME flags
    # the bake used (defaults) or Julia rejects the caches and
    # re-precompiles everything -- which is exactly the multi-minute hang
    # this image exists to remove.

    # Pluto security options:
    # Disable authentication – jupyter/binder already does its own auth, no need to add more.
    require_secret_for_open_links=false,
    require_secret_for_access=false,
    # Disable the warning message about running code from unknown sources when exiting Safe Preview mode (https://github.com/fonsp/Pluto.jl/pull/2563)
    warn_about_untrusted_code=false,

    # Pluto misc options:
    # Don't try to start Firefox when the server launches
    launch_browser=false,
    # Don't show the "a newer version of Pluto is available" message
    dismiss_update_notification=true,
    # Don't show the file picker at the top of the notebook (because all files stored on binder will be lost). Instead, just show a big download button so users can store the .jl file locally.
    show_file_system=false,
)

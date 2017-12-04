# Define custom utilities
# Test for OSX with [ -n "$IS_OSX" ]

# OpenBLAS version for systems that use it.
OPENBLAS_VERSION=0.2.18

function build_fftw {
    build_simple fftw 3.3.6-pl2 http://www.fftw.org
}


function pre_build {
    if [ -n "$IS_OSX" ]; then
        :
    else
        export CC="gcc -fPIC"
        build_openblas
        build_fftw
    fi
}

function run_tests {
    :
}

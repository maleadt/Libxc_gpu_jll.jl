# Use baremodule to shave off a few KB from the serialized `.ji` file
baremodule Libxc_GPU_jll
using Base
using Base: UUID
using LazyArtifacts
Base.include(@__MODULE__, joinpath("..", ".pkg", "platform_augmentation.jl"))
import JLLWrappers

JLLWrappers.@generate_main_file_header("Libxc_GPU")
JLLWrappers.@generate_main_file("Libxc_GPU", UUID("25af9330-9b41-55d4-a324-1a83c0a0a1ac"))
end  # module Libxc_GPU_jll

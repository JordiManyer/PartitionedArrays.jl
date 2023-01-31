using Documenter
using Literate
using PartitionedArrays

examples_jl  = joinpath(@__DIR__,"examples.jl")
src_dir = joinpath(@__DIR__,"src") 
Literate.markdown(examples_jl,src_dir)

makedocs(
    strict=true,
    sitename = "PartitionedArrays.jl",
    format = Documenter.HTML(
        assets = ["assets/custom.css", "assets/favicon.ico",],
    ),
    modules = [PartitionedArrays],
    pages = [
        "Introduction" => "index.md",
        "usage.md",
        "examples.md",
        "Reference" =>[
                       "reference/backends.md",
                       "reference/arraymethods.md",
                       "reference/primitives.md",
                       "reference/partition.md",
                       "reference/pvector.md",
                       "reference/psparsematrix.md",
                       "reference/ptimer.md",
                       "reference/advanced.md",
                       "reference/helpers.md",
                      ],
        "refindex.md",
    ],
)

deploydocs(
    repo = "github.com/fverdugo/PartitionedArrays.jl.git",
    push_preview = true,
)

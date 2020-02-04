using Weave

basedir = joinpath(".", "src")

for file in readdir(basedir)
    filename = file |> splitext |> first
    input = joinpath(basedir, file)
    output = joinpath(filename * ".ipynb")

    convert_doc(input, output)
end

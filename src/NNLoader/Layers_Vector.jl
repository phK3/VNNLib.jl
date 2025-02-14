function (N::Network)(x :: AbstractVector)
    for L in N.layers
        x = L(x)
    end
    return x
end

function (L::Dense)(x :: AbstractVector)
    return L.W * x .+ L.b
end

function (L::ReLU)(x :: AbstractVector)
    return max.(x,0.0)
end
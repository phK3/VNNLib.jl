abstract type Layer end

struct Network
    layers::Vector{Layer}
end

struct Dense{N<:Number,WN<:AbstractMatrix{N},BN<:AbstractVector{N}} <: Layer
    W::WN
    b::BN
end

struct ReLU <: Layer end
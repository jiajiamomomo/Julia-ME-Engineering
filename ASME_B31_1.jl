function minwallthk(P::T, Do::T, SE::T, W::T, y::T, A::T)::T where {T<:AbstractFloat}
return P * Do / 2 / (SE * W + P * y) + A
end
minwallthk(P::AbstractFloat, Do::AbstractFloat, SE::AbstractFloat, W::AbstractFloat, y::AbstractFloat, A::AbstractFloat) = minwallthk(promote(P, Do, SE, W, y, A)...)

P=10.e0
Do=10.f0
SE=100.f0
W=1.f0
y=.4f0
A=0.375f0
println(typeof(minwallthk(P, Do, SE, W, y, A)))

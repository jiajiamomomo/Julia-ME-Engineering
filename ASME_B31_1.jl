"""
    minwallthkDo(P, Do, SE, W, y, A)
Minimum Wall Thickness per ASME B31.1 paras. 104.1.2 eq.(7), in. (mm)
P: internal design pressure, psig [kPa (gage)]
Do: outside diameter of pipe, in. (mm)
SE: maximum allowable stress in material, psi (MPa)
W: weld strength reduction factor
y: coefficient in Table 104.1.2-1
A: additional thickness, in. (mm)
"""
function minwallthkDo(P::T, Do::T, SE::T, W::T, y::T, A::T)::T where {T<:AbstractFloat}
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

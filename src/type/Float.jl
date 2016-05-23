#=
   generally follows Simon Byrne's type Single from his DoubleDouble module
=#

immutable Float{T<:SysFloat} <: Real
    hi::T      # high order part (precision T)
               # wash away autogenerated constructors 
    Float{T}(hi::T) = new(hi)                          # new should not be parameterized
end

# matching an external constructor to the parameterized internal constructor is necessary
Float{T<:SysFloat}(hi::T) = Float{T}(hi) # the RHS must be parameterized

# conversions

convert{T<:SysFloat}(::Type{Float{T}}, a::T) = Float{T}(a)
convert{T<:SysFloat}(::Type{Float{T}}, x::FloatFloat{T}) = Float(x.hi)
convert{T<:SysFloat}(::Type{Float{T}}, x::Float{T}) = x # needed because Float <: FloatingPoint

for T in (:Int32, :Int64, :Integer, :AbstractFloat, :Real)
  @eval convert{T<:SysFloat}(::Type{Float{T}}, x::($T)) = Float(convert(($T),x))
end  

convert{T<:SysFloat}(::Type{BigFloat}, x::Single{T}) = @BigFloat(x.hi)
convert{T<:SysFloat}(::Type{BigInt}, x::Single{T}) = @BigInt(x.hi)
convert{T<:SysFloat}(::Type{Rational{BigInt}}, x::Single{T}) = convert(Rational{BigInt}, @BigFloat(x.hi))

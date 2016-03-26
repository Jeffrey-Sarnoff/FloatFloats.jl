@inline mulby2{T<:Real}(a::T) = a*(one(T)+one(T))

function mulby2{T<:Real}(a::FloatFloat{T})
    FloatFloat{T}(mulby2(a.hi), mulby2(a.lo))
end

function mulpow2{T<:Real,I<:Integer}(a::FloatFloat{T}, powof2::I)
     FloatFloat{T}( ldexp(a.hi, powof2), ldexp(a.lo, powof2) )
end


function (sqr){T<:Real}(a::FloatFloat{T})
  t1,t2 = eftMul(a.hi,a.hi)
  t3 = a.hi * a.lo
  t5 = t3 + t3
  t6 = t2 + t5
  t1,t6 = eftAddGTE(t1,t6)
  FloatFloat{T}(t1,t6)
end

function (*){T<:Real}(a::FloatFloat{T}, b::FloatFloat{T})
  t1,t2 = eftMul(a.hi,b.hi)
  t3 = a.hi * b.lo
  t4 = a.lo * b.hi
  t5 = t3 + t4
  t6 = t2 + t5
  t1,t6 = eftAddGTE(t1,t6)
  FloatFloat{T}(t1,t6)
end

function (*){T<:Real}(a::FloatFloat{T}, b::T)
  t1,t2 = eftMul(a.hi,b)
  t4 = a.lo * b
  t6 = t2 + t4
  t1,t6 = eftAddGTE(t1,t6)
  FloatFloat{T}(t1,t6)
end

(*){T<:Real}(a::T, b::FloatFloat{T}) = (*)(b,a)
(*){T<:Real}(a::FloatFloat{T}, b::Signed) = (*)(a, convert(T,b))
(*){T<:Real}(a::Signed, b::FloatFloat{T}) = (*)(convert(T,a), b)

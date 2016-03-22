module FloatFloat

import Base: hash, string, 
    show, showcompact, showall,
    convert, promote_rule,
    isnan, isinf, isfinite, issubnormal,
    isequal, isless, 
    (==),(!=),(<),(<=),(>=),(>),
    (+),(-),(*),(/),(\),(%),(^)

import JAS: StdFloat

export FF32, FF64, FF128,
    iszero, isnonzero, ispos, isneg, isnonneg,
    hash

using ErrorfreeArithmetic
using AccurateArithmetic

include("type/FF.jl")
include("type/io.jl")

end # module

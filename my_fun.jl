function suma_exp(nterms,exp=1)
    x=0
    for i in 1:nterms
        x=(x+i)^exp
    end
    return x
end


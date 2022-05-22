# The is_bad_version API is already defined for you.
# @param {Integer} version
# @return {boolean} whether the version is bad
# def is_bad_version(version):

# @param {Integer} n
# @return {Integer}
def first_bad_version(n)
    if n == 1
        return n[0]
    else
        return f(n,0,n-1)
    end
end

def f(n,l,r)
    m = (r-l)/2 +l
    if l>r
        return
    elsif is_bad_version(m+1) == true and is_bad_version(m) == false
        return m+1
    elsif is_bad_version(m+1) == true
         return f(n,l,m-1)
    else
        return f(n,m+1,r)
    end

end

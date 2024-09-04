function [p_mod_pm_mod_m] = pmod(p, pm, m)
    [q, r] = deconv(p, pm);
    p_mod_pm_mod_m = mod(r(end-length(pm)+2:end), m);
end
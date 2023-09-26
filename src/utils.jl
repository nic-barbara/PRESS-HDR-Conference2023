function get_step_jacobians(
    m::Model, 
    d::Data;
    ϵ::Number = 1e-6,
    centred::Bool = true,
)

    nx = 2*m.nv + m.na
    nu = m.nu

    A_T = zeros(nx, nx)
    B_T = zeros(nu, nx)
    mjd_transitionFD(m, d, ϵ, centred, A_T, B_T, C_NULL, C_NULL)

    return A_T', B_T'
end
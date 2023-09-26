using LinearAlgebra
using MatrixEquations
using MuJoCo

include("utils.jl")
init_visualiser()

# Get the model
model = load_model(string(@__DIR__,"/cartpole.xml"))
data = init_data(model)

# Controller design parameters
Q = diagm([1, 10, 1, 5])
R = diagm([1])
S = zeros(2model.nv, model.nu)

# Compute LQR gain K
A, B = get_step_jacobians(model, data)
_, _, K, _ = ared(A,B,R,Q,S)

function controller(model, data)
    state = vcat(data.qpos, data.qvel)
    data.ctrl .= -K * state
end

# Simulate
visualise!(model, data; controller)
# PRESS HDR Conference 2023

This repository contains a short example of setting up a Julia project for robotics research using [MuJoCo.jl](https://github.com/JamieMair/MuJoCo.jl). Note that `MuJoCo.jl` is still under development and usage may change in the future!

## Installation and usage

To install and play around with this package, you will need to:

1. Clone this repository with (for example):

        git clone https://github.com/nic-barbara/PRESS-HDR-Conference2023.git

2. Install Julia. An easy way to do this is via [`juliaup`](https://github.com/JuliaLang/juliaup). For Mac or Linux, install with

        curl -fsSL https://install.julialang.org | sh
    For Windows, use

        winget install julia -s msstore

3. Open a terminal and navigate to the directory in which you cloned the repository. Start up a Julia session by typing `julia` in your terminal.

4. Enter the package manager by typing `]` into the Julia REPL. You can now install all the dependencies for this project with:

        pkg> activate .
        pkg> instantiate

5. You are now ready to run the program, which will simulate a cart-pole system balancing its pendulum upright. Hit `Backspace` in the terminal to exit the package manager, and run the code with

        julia> include("src/cartpole_lqr.jl")

    after it compiles everything, you should now see a cart-pole system balancing on your screen.

6. Have fun with it! Press `F1` to see the menu of available options. A particularly fun experiment is to double-click on the pole to select it, then right-click+CTRL to apply a force. See if it remains balanced!

## Contact

For any questions, please contact Nic Barbara at nicholas.barbara@sydney.edu.au
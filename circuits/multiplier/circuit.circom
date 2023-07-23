pragma circom_version 1.0.0;

component owncircuit = (input x, input y) => {
    signal a = and(x, y);
    signal b = not(y);
    signal p = or(a, b);
    return p;
};

component and = (input x, input y) => {
    return x * y;
};

component or = (input x, input y) => {
    return x + y - x * y;
};

component not = (input in) => {
    return 1 + in - 2 * in;
};

component main = owncircuit;

operation Main() : Result {
    // Allocate a Qubit
    use q = Qubit();

    // Put the qubit into superposition
    H(q);

    // Measure the qubit
    let result = M(q);

    // Reset the qubit
    Reset(q);

    // Return the result
    return result;
}
operation Main() : Unit {
    use q = Qubit();

    Message($"The qubit is in state {M(q)}");

    let result = FlipAQubit(q);

    Message($"The qubit is in state {M(q)}");

    Reset(q);

    return result;
}

operation FlipAQubit(q: Qubit) : Unit is Adj + Ctl {
    // Apply the Pauli-X gate to the qubit to flip it from (|0⟩ to |1⟩ and |1⟩ to |0⟩
    // The operation is marked as Adj and Ctl, meaning it supports adjoint and controlled variants.
    X(q);
}
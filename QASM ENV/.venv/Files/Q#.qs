namespace qs.medirBit {


@EntryPoint()
operation MedirQuBit() : Result{
    use q = Qubit();

    H(q);

    let result = M(q);

    Message("{M(q)}");
   
    return result;
    }}

// Behaviorial

module mux(a,b,sel,f);

// Structural or Behavioral

// output f;
// input a,b,sel;
// wire f1,f2,nsel;

// and g1(f1,a,nsel),
//     g2(f2,b,sel);

// or g3(f,f1,f2);

// not g4(nsel,sel);




// Procedural

// output f;
// input a,b,sel;
// reg f; // reg datatype is used to indicate that it holds it's previous value, not necessarily indicating a resistor.

// always @(a or b or sel) // Re-evaluate f when a, b, or sel changes
//     if(sel) f = b;
//     else f = a;


// Continous Assignments

output f;
input a,b,sel;

assign f = sel ? b : a;


endmodule
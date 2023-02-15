// Add short description of what's being tested


interface in_adders (input int b,c);
    // input int b,c; Does not work this way specify direct in header!
    // Gives warning when declarations are made in header - see log
    // More warnings when hierarchy check is done
    
endinterface

// module add_2_nums(
//     in_adders aci,
//     output int a
//     //input int b,c
// );
                        
//     // function logic add_2_numbers (input logic b,c);
//     //     add_2_numbers = b + c;
//     // endfunction

//     always_comb a = aci.b + aci.c;

// endmodule

// module mult_2_nums(
//     in_adders aci,
//     output int a
//     //input int b,c
// );
//     // function logic mult_2_numbers (input logic b,c);
//     //     mult_2_numbers = b * c;
//     // endfunction

//     always_comb a = aci.b * aci.c;

// endmodule

// module top(
//     output int a,
//     input int b,c
// );
//     // in_adders aci (.*);
//     // add_2_nums a2n (.*);
//     // mult_2_nums m2n (.*);

//     in_adders aci (
//       //  .a(a),
//         .b(b),
//         .c(c)
//     );

//     add_2_nums a2n (
//         .aci(aci)
//     );

//     mult_2_nums m2n (
//         .aci(aci)
//     );

//     //Output addition of all output from modules in module top

//     assign a = a2n.a + m2n.a; // change to assign

// endmodule


// Have two always_comb blocks in module top
module top(
    output int a,
    input int b,c
);
    // in_adders aci (.*);
    // add_2_nums a2n (.*);
    // mult_2_nums m2n (.*);

    in_adders aci (
      //  .a(a),
        .b(b),
        .c(c)
    );

    logic [31:0] x; 
    logic [31:0] y;

    always_comb begin : add_2_numbers
        x = aci.b + aci.c;
    end: add_2_numbers

    always_comb begin : mult_2_numbers
        y = aci.b * aci.c;
    end: mult_2_numbers

    assign a = x + y;

endmodule
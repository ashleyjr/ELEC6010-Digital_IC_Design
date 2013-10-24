module example1; 

integer  A, B, C;

initial
  begin
    A = 3;
    B = 5;
    $display( A, B, C );
    C = A+B;
    $display( A, B, C );
    for ( A = 3 ; A > 0 ; A = A-1 )
      begin
        C = C*B;
        $display( A, B , C );
      end
  end
endmodule

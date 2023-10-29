`timescale 1ns / 1ps


module main(
    input CLK,
	 input CE,
	 input CD,
	 input SV,
	 output [3:0] out
    );


reg [3:0] current_value;
reg [3:0] next_value;

initial
begin
	current_value = 4'b0000;
end


always @(posedge CLK or negedge SV)
begin
	if ( SV == 0) 
	begin
		if ( CD == 0 ) current_value = 4'b0000;
		else current_value = 4'b1111;
	end
	else if ( CE == 1 )	current_value = next_value;
end


always @ (current_value or CD)
begin
	if (CD == 0)
	begin
		case(current_value)
			4'b0000 : next_value = 4'b0001; //0 kod Aikena
			4'b0001 : next_value = 4'b0010; //1 
			4'b0010 : next_value = 4'b0011; //2
			4'b0011 : next_value = 4'b0100; //3
			4'b0100 : next_value = 4'b1011; //4
			4'b1011 : next_value = 4'b1100; //5
			4'b1100 : next_value = 4'b1101; //6
			4'b1101 : next_value = 4'b1110; //7
			4'b1110 : next_value = 4'b1111; //8
			4'b1111 : next_value = 4'b0000; //9
		endcase
	end
	else
	begin
		case(current_value)
			4'b0000 : next_value = 4'b1111; //0 kod Aikena
			4'b0001 : next_value = 4'b0000; //1 
			4'b0010 : next_value = 4'b0001; //2
			4'b0011 : next_value = 4'b0010; //3
			4'b0100 : next_value = 4'b0011; //4
			4'b1011 : next_value = 4'b0100; //5
			4'b1100 : next_value = 4'b1011; //6
			4'b1101 : next_value = 4'b1100; //7
			4'b1110 : next_value = 4'b1101; //8
			4'b1111 : next_value = 4'b1110; //9
		endcase
	end
end




assign out = current_value;

endmodule
`timescale 1ns / 1ps


module main(
    input [7:0] liczbaA,
    input [7:0] liczbaB,
	 input [1:0] wybor,
	 input bitP,
	 output reg[7:0] wynik,
	 output C,
	 output EVEN,
	 output Z,
	 output OV
    );

reg [7:0] pw;
reg z1;
reg z2;
reg zw;
reg ov;

task sumator(input la, lb, p, output wynik, prze);
	begin
		prze = (la & lb) | (la & p) | (p & lb);
		wynik = (la ^ lb) ^ p;
	end
endtask

task roznica(input la, lb, p, output wynik, prze);
	begin
		prze = (~la & lb) | (lb & p) | (~la & p);
		wynik = (~la & ~lb & p) | (~la & lb & ~p) | (la & ~lb & ~p) | (la & lb & p);
	end
endtask

always @(wybor or liczbaB or liczbaA or bitP)
begin
	pw = 0;
	ov = 0;

	if (wybor == 2'b00)
	begin
		z1 = liczbaA[7];
		z2 = liczbaB[7];
		
		sumator(liczbaA[0],liczbaB[0],bitP,wynik[0], pw[0]);
		sumator(liczbaA[1],liczbaB[1],pw[0],wynik[1], pw[1]);
		sumator(liczbaA[2],liczbaB[2],pw[1],wynik[2], pw[2]);
		sumator(liczbaA[3],liczbaB[3],pw[2],wynik[3], pw[3]);
		sumator(liczbaA[4],liczbaB[4],pw[3],wynik[4], pw[4]);
		sumator(liczbaA[5],liczbaB[5],pw[4],wynik[5], pw[5]);
		sumator(liczbaA[6],liczbaB[6],pw[5],wynik[6], pw[6]);
		sumator(liczbaA[7],liczbaB[7],pw[6],wynik[7], pw[7]);
		
		zw = wynik[7];
		ov = (~z1 & ~z2 & zw) | (z1 & z2 & ~zw);
	end
	
	else if(wybor == 2'b01)
	begin
		z1 = liczbaA[7];
		z2 = liczbaB[7];
	
		roznica(liczbaA[0],liczbaB[0],bitP,wynik[0], pw[0]);
		roznica(liczbaA[1],liczbaB[1],pw[0],wynik[1], pw[1]);
		roznica(liczbaA[2],liczbaB[2],pw[1],wynik[2], pw[2]);
		roznica(liczbaA[3],liczbaB[3],pw[2],wynik[3], pw[3]);
		roznica(liczbaA[4],liczbaB[4],pw[3],wynik[4], pw[4]);
		roznica(liczbaA[5],liczbaB[5],pw[4],wynik[5], pw[5]);
		roznica(liczbaA[6],liczbaB[6],pw[5],wynik[6], pw[6]);
		roznica(liczbaA[7],liczbaB[7],pw[6],wynik[7], pw[7]);
		
		zw = wynik[7];
		ov = (~z1 & z2 & zw) | (z1 & ~z2 & zw);
	end
	
	else if(wybor == 2'b10)
	begin
		wynik = liczbaA | liczbaB;
	end
	
	else if(wybor == 2'b11)
	begin
		wynik = liczbaA & liczbaB;
	end
end
	 

assign C = pw[7];
assign EVEN = ^wynik;
assign Z = (wynik == 0);
assign OV = ov;

endmodule

/************************************************************************************
*     The UART design files are owned and controlled by Eleptic Technologies    	*
*	  and must be used only for laboratory experiments for the course "Computer  	*
*     Architecture" offered in Habib University. It is not allowed to edit these 	*
*	  files without prior permission from Eleptic Technologies. Furthermore, the 	*
*	  design files can only be used with the Eleptic Technologies devices and/or 	*
*	  software. Use with non-Eleptic devices or softwares is strictly prohibited 	*
*     and immediately terminates your license.                                 		*
*                                                              		                *
*	  File Name:	tx_rx_controller.v												*
*	  Developer:	Hasan Baig														*
*	  Vendor: 		Eleptic Technologies											*
*	  Date:			July 10, 2018.													*
*																					*
*     (c) Copyright 2018-2019 Eleptic Technologies,                                 *
*     All rights reserved.                                          	            *
************************************************************************************/

module tx_rx_controller
(
	input 				clk, 
	input				reset, 
	
	input		[7:0]	data_to_tx,
	
	input		[7:0]	data_received,	// tie to dout port of rx
	output	reg			tx_start,		// tie to tx_start port of tx
	output	reg	[7:0]	frame_out		// tie to din port of tx
	
);

reg [7:0] data_to_tx_last_St;

reg	send_tx_start;






always @ (posedge clk , posedge reset)
begin
	if(reset)
	begin
		data_to_tx_last_St	<=	8'd0;
		frame_out		<=	8'd0;		
		tx_start		<=	1'b0;		
	end
	
	else
	begin
	

		if ( (data_to_tx != data_to_tx_last_St))
		begin
			frame_out		<=	data_to_tx; //{4'b0000,PE_T1,PE_T2,2'b00};
			tx_start		<=	1'b1;
			data_to_tx_last_St	<=	data_to_tx;
			
		end
	
		else
		begin
			tx_start		<=	1'b0;
			frame_out		<=	frame_out;
			data_to_tx_last_St	<=	data_to_tx;
			
		end	
	end
end




/*
always @ (send_tx_start)
begin
	if(send_tx_start == 1)
		tx_start		=	1'b1;
	else
		tx_start		=	1'b0;
end
*/
endmodule

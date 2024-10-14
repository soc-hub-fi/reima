`define POSITION(position, input_width)((input_width==10 || input_width==8)? 0:position)

`define AXIS10(input_width, pixel_width, read_ram_index_minus_1, read_ram_index_plus_1, read_ram_index, position, index) (      index==1?  ram_pipe[ read_ram_index       	][ (input_width+ ( (`POSITION(position, input_width))	    *	pixel_width)) 	 			   	            +:PIXEL_WIDTH10]: \
                                                                                                                                index==2?  ram_pipe[ read_ram_index       	][ (input_width+ ( (`POSITION(position, input_width))	    *	pixel_width)) 	 			   	            +:PIXEL_WIDTH10]: \
                                                                                                                                index==3?  ram_pipe[ read_ram_index    	 	][ (input_width+ ( (`POSITION(position, input_width))	    *	pixel_width)) 			   		            +:PIXEL_WIDTH10]: \
                                                                                                                                index==4?  ram_pipe[ read_ram_index         ][ (input_width+ ( (`POSITION(position, input_width))	    *	pixel_width))                	            +:PIXEL_WIDTH10]:10'd0\
                                                                                                                                )

`define AXISx10(input_width, pixel_width, read_ram_index_minus_1, read_ram_index_plus_1, read_ram_index, position, index) (     index==1?  ram_pipe[ read_ram_index       	][((input_width+ ( (`POSITION(position, input_width))	    *	pixel_width)) - pixel_width) 	            +:PIXEL_WIDTH10]: \
                                                                                                                                index==2?  ram_pipe[ read_ram_index       	][ (input_width+ ( (`POSITION(position, input_width)+1)	    *	pixel_width)) 					            +:PIXEL_WIDTH10]: \
                                                                                                                                index==3?  ram_pipe[ read_ram_index       	][((input_width+ ( (`POSITION(position, input_width)) 	    *	pixel_width)) - pixel_width) 	            +:PIXEL_WIDTH10]: \
                                                                                                                                index==4?  ram_pipe[ read_ram_index       	][ (input_width+ ( (`POSITION(position, input_width)+1)	    *	pixel_width)) 					            +:PIXEL_WIDTH10]:10'd0\
                                                                                                                                )

`define AXISy10(input_width, pixel_width, read_ram_index_minus_1, read_ram_index_plus_1, read_ram_index, position, index) (     index==1?  ram_pipe[ read_ram_index_minus_1 ][ (input_width+ ( (`POSITION(position, input_width))	    *	pixel_width)) 					            +:PIXEL_WIDTH10]: \
                                                                                                                                index==2?  ram_pipe[ read_ram_index_plus_1  ][ (input_width+ ( (`POSITION(position, input_width))	    *	pixel_width)) 					            +:PIXEL_WIDTH10]: \
                                                                                                                                index==3?  ram_pipe[ read_ram_index_minus_1 ][ (input_width+ ( (`POSITION(position, input_width))	    *	pixel_width)) 					            +:PIXEL_WIDTH10]: \
                                                                                                                                index==4?  ram_pipe[ read_ram_index_plus_1  ][ (input_width+ ( (`POSITION(position, input_width))	    *	pixel_width)) 					            +:PIXEL_WIDTH10]:10'd0\
                                                                                                                                )

`define AXISxy10(input_width, pixel_width, read_ram_index_minus_1, read_ram_index_plus_1, read_ram_index, position, index) (    index==1?  ram_pipe[ read_ram_index_minus_1 ][ (input_width+ ( (`POSITION(position, input_width))       *   pixel_width)) 					            +:PIXEL_WIDTH10]: \
                                                                                                                                index==2?  ram_pipe[ read_ram_index_plus_1  ][ (input_width+ ( (`POSITION(position, input_width))       *   pixel_width)) 					            +:PIXEL_WIDTH10]: \
                                                                                                                                index==3?  ram_pipe[ read_ram_index         ][ (input_width+ ( (`POSITION(position, input_width)+1)     *   pixel_width)) 					            +:PIXEL_WIDTH10]: \
                                                                                                                                index==4?  ram_pipe[ read_ram_index         ][((input_width+ ( (`POSITION(position, input_width))       *   pixel_width)) - pixel_width) 	            +:PIXEL_WIDTH10]:10'd0 \
                                                                                                                                )

`define AXISuv10(input_width, pixel_width, read_ram_index_minus_1, read_ram_index_plus_1, read_ram_index, position, index) (    index==1?  ram_pipe[ read_ram_index_minus_1 ][((input_width+ ( (`POSITION(position, input_width))       *	pixel_width)) - pixel_width)	            +:PIXEL_WIDTH10]: \
                                                                                                                                index==2?  ram_pipe[ read_ram_index_plus_1  ][((input_width+ ( (`POSITION(position, input_width))       *	pixel_width)) - pixel_width)	            +:PIXEL_WIDTH10]: \
                                                                                                                                index==3?  ram_pipe[ read_ram_index_minus_1 ][ (input_width+ ( (`POSITION(position, input_width)+1)     *	pixel_width))					            +:PIXEL_WIDTH10]: \
                                                                                                                                index==4?  ram_pipe[ read_ram_index_plus_1  ][ (input_width+ ( (`POSITION(position, input_width)+1)     *	pixel_width))					            +:PIXEL_WIDTH10]:10'd0\
                                                                                                                                )

`define AXIS8(input_width, pixel_width, read_ram_index_minus_1, read_ram_index_plus_1, read_ram_index, position, index) (       index==1?  ram_pipe[ read_ram_index       	][ (input_width+ ( (`POSITION(position, input_width))	    *	pixel_width)) 	 			   	            +:PIXEL_WIDTH8]: \
                                                                                                                                index==2?  ram_pipe[ read_ram_index       	][ (input_width+ ( (`POSITION(position, input_width))	    *	pixel_width)) 	 			   	            +:PIXEL_WIDTH8]: \
                                                                                                                                index==3?  ram_pipe[ read_ram_index    	 	][ (input_width+ ( (`POSITION(position, input_width))	    *	pixel_width)) 			   		            +:PIXEL_WIDTH8]: \
                                                                                                                                index==4?  ram_pipe[ read_ram_index         ][ (input_width+ ( (`POSITION(position, input_width))	    *	pixel_width))                	            +:PIXEL_WIDTH8]:8'd0\
                                                                                                                                )

`define AXISx8(input_width, pixel_width, read_ram_index_minus_1, read_ram_index_plus_1, read_ram_index, position, index) (      index==1?  ram_pipe[ read_ram_index       	][((input_width+ ( (`POSITION(position, input_width))	    *	pixel_width)) - pixel_width) 	            +:PIXEL_WIDTH8]: \
                                                                                                                                index==2?  ram_pipe[ read_ram_index       	][ (input_width+ ( (`POSITION(position, input_width)+1)	    *	pixel_width)) 					            +:PIXEL_WIDTH8]: \
                                                                                                                                index==3?  ram_pipe[ read_ram_index       	][((input_width+ ( (`POSITION(position, input_width)) 	    *	pixel_width)) - pixel_width) 	            +:PIXEL_WIDTH8]: \
                                                                                                                                index==4?  ram_pipe[ read_ram_index       	][ (input_width+ ( (`POSITION(position, input_width)+1)	    *	pixel_width)) 					            +:PIXEL_WIDTH8]:8'd0\
                                                                                                                                )

`define AXISy8(input_width, pixel_width, read_ram_index_minus_1, read_ram_index_plus_1, read_ram_index, position, index) (      index==1?  ram_pipe[ read_ram_index_minus_1 ][ (input_width+ ( (`POSITION(position, input_width))	    *	pixel_width)) 					            +:PIXEL_WIDTH8]: \
                                                                                                                                index==2?  ram_pipe[ read_ram_index_plus_1  ][ (input_width+ ( (`POSITION(position, input_width))	    *	pixel_width)) 					            +:PIXEL_WIDTH8]: \
                                                                                                                                index==3?  ram_pipe[ read_ram_index_minus_1 ][ (input_width+ ( (`POSITION(position, input_width))	    *	pixel_width)) 					            +:PIXEL_WIDTH8]: \
                                                                                                                                index==4?  ram_pipe[ read_ram_index_plus_1  ][ (input_width+ ( (`POSITION(position, input_width))	    *	pixel_width)) 					            +:PIXEL_WIDTH8]:8'd0\
                                                                                                                                )

`define AXISxy8(input_width, pixel_width, read_ram_index_minus_1, read_ram_index_plus_1, read_ram_index, position, index) (     index==1?  ram_pipe[ read_ram_index_minus_1 ][ (input_width+ ( (`POSITION(position, input_width))        *   pixel_width)) 					            +:PIXEL_WIDTH8]: \
                                                                                                                                index==2?  ram_pipe[ read_ram_index_plus_1  ][ (input_width+ ( (`POSITION(position, input_width))        *   pixel_width)) 					            +:PIXEL_WIDTH8]: \
                                                                                                                                index==3?  ram_pipe[ read_ram_index         ][ (input_width+ ( (`POSITION(position, input_width)+1)      *   pixel_width)) 					            +:PIXEL_WIDTH8]: \
                                                                                                                                index==4?  ram_pipe[ read_ram_index         ][((input_width+ ( (`POSITION(position, input_width))        *   pixel_width)) - pixel_width) 	            +:PIXEL_WIDTH8]:8'd0 \
                                                                                                                                )

`define AXISuv8(input_width, pixel_width, read_ram_index_minus_1, read_ram_index_plus_1, read_ram_index, position, index) (     index==1?  ram_pipe[ read_ram_index_minus_1 ][((input_width+ ( (`POSITION(position, input_width))        *	pixel_width))  - pixel_width)	            +:PIXEL_WIDTH8]: \
                                                                                                                                index==2?  ram_pipe[ read_ram_index_plus_1  ][((input_width+ ( (`POSITION(position, input_width))        *	pixel_width))  - pixel_width)	            +:PIXEL_WIDTH8]: \
                                                                                                                                index==3?  ram_pipe[ read_ram_index_minus_1 ][ (input_width+ ( (`POSITION(position, input_width)+1)      *	pixel_width))					            +:PIXEL_WIDTH8]: \
                                                                                                                                index==4?  ram_pipe[ read_ram_index_plus_1  ][ (input_width+ ( (`POSITION(position, input_width)+1)      *	pixel_width))					            +:PIXEL_WIDTH8]:8'd0\
                                                                                                                                )


`define RGB_LOCATE(input_width, pixel_width, read_ram_index_minus_1, read_ram_index_plus_1, read_ram_index, position, index, axis) (  (pixel_width==10)? ( \
                                                                                                                                    (axis==".")?  (`AXIS10(input_width, pixel_width, read_ram_index_minus_1, read_ram_index_plus_1, read_ram_index, position, index  )):   \
                                                                                                                                    (axis=="x")?  (`AXISx10(input_width, pixel_width, read_ram_index_minus_1, read_ram_index_plus_1, read_ram_index, position, index )):   \
                                                                                                                                    (axis=="y")?  (`AXISy10(input_width, pixel_width, read_ram_index_minus_1, read_ram_index_plus_1, read_ram_index, position, index )):   \
                                                                                                                                    (axis=="xy")? (`AXISxy10(input_width, pixel_width, read_ram_index_minus_1, read_ram_index_plus_1, read_ram_index, position, index)):   \
                                                                                                                                    (axis=="uv")? (`AXISuv10(input_width, pixel_width, read_ram_index_minus_1, read_ram_index_plus_1, read_ram_index, position, index)):10'd0):\
                                                                                                                                    (pixel_width==8)? ( \
                                                                                                                                    (axis==".")?  ({2'd0, `AXIS8(input_width, pixel_width, read_ram_index_minus_1, read_ram_index_plus_1, read_ram_index, position, index  )}):  \
                                                                                                                                    (axis=="x")?  ({2'd0, `AXISx8(input_width, pixel_width, read_ram_index_minus_1, read_ram_index_plus_1, read_ram_index, position, index )}):  \
                                                                                                                                    (axis=="y")?  ({2'd0, `AXISy8(input_width, pixel_width, read_ram_index_minus_1, read_ram_index_plus_1, read_ram_index, position, index )}):  \
                                                                                                                                    (axis=="xy")? ({2'd0, `AXISxy8(input_width, pixel_width, read_ram_index_minus_1, read_ram_index_plus_1, read_ram_index, position, index)}):  \
                                                                                                                                    (axis=="uv")? ({2'd0, `AXISuv8(input_width, pixel_width, read_ram_index_minus_1, read_ram_index_plus_1, read_ram_index, position, index)}):10'd0):10'd0\
                                                                                                                                    )
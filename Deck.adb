with Ada.Calendar;
use Ada.Calendar;

package body Deck is

	function Draw return Card is
		Result : Index_Type := Random(Index_Generator);
	begin
		while Backing(Result).In_Deck = False loop
			Result := Random(Index_Generator);
		end loop;
		Backing(Result).In_Deck := False;
		return Card(Backing(Result));
	end Draw;

begin
	Reset(Index_Generator, Integer(Seconds(Clock)));
end Deck;
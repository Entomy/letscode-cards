package body Cards is

	function Image(Self : Card) return String is
	begin
		case Self.Face is
			when 11 => return " JACK of " & Self.Suit'Image;
			when 12 => return " QUEEN of " & Self.Suit'Image;
			when 13 => return " KING of " & Self.Suit'Image;
			when 14 => return " ACE of " & Self.Suit'Image;
			when others => return Self.Face'Image & " of " & Self.Suit'Image;
		end case;
	end Image;

end Cards;
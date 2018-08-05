with Cards, Ada.Numerics.Discrete_Random;
use Cards;

package Deck is

	function Draw return Card;

private
	type Index_Type is range 1 .. 52;

	package Random_Index is new Ada.Numerics.Discrete_Random(Index_Type);
	use Random_Index;

	Index_Generator : Random_Index.Generator;

	type Deck_Card is new Card with record
		In_Deck : Boolean := True;
	end record;

	type Card_Array is array(Index_Type) of Deck_Card;

	Backing : Card_Array := (
		Deck_Card'(2, Heart, others => <>),
		Deck_Card'(3, Heart, others => <>),
		Deck_Card'(4, Heart, others => <>),
		Deck_Card'(5, Heart, others => <>),
		Deck_Card'(6, Heart, others => <>),
		Deck_Card'(7, Heart, others => <>),
		Deck_Card'(8, Heart, others => <>),
		Deck_Card'(9, Heart, others => <>),
		Deck_Card'(10, Heart, others => <>),
		Deck_Card'(11, Heart, others => <>),
		Deck_Card'(12, Heart, others => <>),
		Deck_Card'(13, Heart, others => <>),
		Deck_Card'(14, Heart, others => <>),
		Deck_Card'(2, Spade, others => <>),
		Deck_Card'(3, Spade, others => <>),
		Deck_Card'(4, Spade, others => <>),
		Deck_Card'(5, Spade, others => <>),
		Deck_Card'(6, Spade, others => <>),
		Deck_Card'(7, Spade, others => <>),
		Deck_Card'(8, Spade, others => <>),
		Deck_Card'(9, Spade, others => <>),
		Deck_Card'(10, Spade, others => <>),
		Deck_Card'(11, Spade, others => <>),
		Deck_Card'(12, Spade, others => <>),
		Deck_Card'(13, Spade, others => <>),
		Deck_Card'(14, Spade, others => <>),
		Deck_Card'(2, Diamond, others => <>),
		Deck_Card'(3, Diamond, others => <>),
		Deck_Card'(4, Diamond, others => <>),
		Deck_Card'(5, Diamond, others => <>),
		Deck_Card'(6, Diamond, others => <>),
		Deck_Card'(7, Diamond, others => <>),
		Deck_Card'(8, Diamond, others => <>),
		Deck_Card'(9, Diamond, others => <>),
		Deck_Card'(10, Diamond, others => <>),
		Deck_Card'(11, Diamond, others => <>),
		Deck_Card'(12, Diamond, others => <>),
		Deck_Card'(13, Diamond, others => <>),
		Deck_Card'(14, Diamond, others => <>),
		Deck_Card'(2, Club, others => <>),
		Deck_Card'(3, Club, others => <>),
		Deck_Card'(4, Club, others => <>),
		Deck_Card'(5, Club, others => <>),
		Deck_Card'(6, Club, others => <>),
		Deck_Card'(7, Club, others => <>),
		Deck_Card'(8, Club, others => <>),
		Deck_Card'(9, Club, others => <>),
		Deck_Card'(10, Club, others => <>),
		Deck_Card'(11, Club, others => <>),
		Deck_Card'(12, Club, others => <>),
		Deck_Card'(13, Club, others => <>),
		Deck_Card'(14, Club, others => <>)
	);

end Deck;
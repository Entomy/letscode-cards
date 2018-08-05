package Cards is

	type Face_Type is range 2 .. 14;

	type Suit_Type is (Heart, Spade, Diamond, Club);

	type Card is tagged record
		Face : Face_Type;
		Suit : Suit_Type;
	end record;

	function Image(Self : Card) return String;

end Cards;
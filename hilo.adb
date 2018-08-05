with Ada.Text_IO, Cards, Deck;
use Ada.Text_IO, Cards, Deck;

procedure HiLo is
	Old_Card : Card;
	New_Card : Card;

	First_Draw : Boolean := True;

	type Choice_Type is (Higher, Lower);

	Choice : Choice_Type;

	Input : Character;

begin
	Old_Card := Deck.Draw;
	loop
		New_Card := Deck.Draw;
		if First_Draw then
			First_Draw := False;
		else
			if Choice = Higher and then New_Card.Face > Old_Card.Face then
				Put_Line("You were right!");
			elsif Choice = Lower and then New_Card.Face < Old_Card.Face then
				Put_Line("You were right!");
			else
				Put_Line("You were wrong!");
			end if;
		end if;
		Put_Line("Drew: " & Image(New_Card));
		<<EnterChoice>>
		Put("[H]igher or [L]ower? ");
		Get_Immediate(Input);
		case Input is
			when 'h' | 'H' => Choice := Higher;
			when 'l' | 'L' => Choice := Lower;
			when 'q' | 'Q' => return;
			when others =>
				New_Line;
				goto EnterChoice;
		end case;
		New_Line;
		Old_Card := New_Card;
	end loop;
end HiLo;

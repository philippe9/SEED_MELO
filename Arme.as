package 
{

	public class Arme
	{
		private var _degats:int;
		private var _chance:int;

		public function Arme()
		{
			degats = 20;
			chance = 5;
		}
		public function get degats():int
		{
			return _degats;
		}
		public function get chance():int
		{
			return _chance;
		}
		public function set degats(value:int):void
		{
			_degats = value;
		}
		public function set chance(value:int):void
		{
			_chance = value;
		}

		public function frapper(cible:Personnage):void
		{
			var degatsAppliques:int = degats;
			// On jette un dé à 100 faces : si le résultat est inférieur ouégal à la chance de coup critique, l'attaque fait un coup critique!
			if (Math.random() * 100 <= chance)
			{
				trace("Critique !");
				// On double les dégâts !
				degatsAppliques *=  2;
			}
			// On applique les dégâts
			cible.sante -=  degatsAppliques;
		}
	}

}
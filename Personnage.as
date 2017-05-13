package  {
	
	public class Personnage {
          private var _sante:int;
		  private var _armeEquipee:Arme;
		  
		public function Personnage() {
			sante = 100;
			
		}

         public function get sante():int
		 {
			 return _sante;
		}
		
		public function set armeEquipee(value:Arme):void
		{
			_armeEquipee=value;
		}
		
         public function get armeEquipee():Arme
		 {
			 return _armeEquipee;
		}
		
		public function set sante(value:int):void
		{
			_sante=value;
		}
		
		public function attaque(cible:Personnage):void
		{
			var degatsApplique:int=armeEquipee.degats;
			
			if (armeEquipee == null)
            {
                 trace("Aucune arme équipée : l'attaque échoue.");
             }
              else
             {
	             armeEquipee.frapper(cible); // Nous appelons la nouvelle méthode ici
               if (cible.sante <= 0)
               {
                 trace("La cible est décédée.");
                   }
                    else
                  {
                   trace("Il reste " + cible.sante + " PV à la cible.");
                   }
                 }
		}
	}
	
}

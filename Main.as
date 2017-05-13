package  {
	
	import flash.display.MovieClip;
	
	
	public class Main extends MovieClip {
		
		
		public function Main() {
	 var moi:Personnage=new Personnage();
	 var mechant:Personnage=new Personnage();
	 
	 var excalibur:Arme= new Arme();
	 var smallsword:Arme= new Arme();
	 
			excalibur.degats=80;
			excalibur.chance=20;
			
			smallsword.degats=40;
			smallsword.chance=10;
			moi.armeEquipee=excalibur;
			mechant.armeEquipee=smallsword;
			trace("Le mechant attaque");
			mechant.attaque(moi);
			
			trace("Me voici");
			moi.attaque(mechant);
							
		}
	}
	
}

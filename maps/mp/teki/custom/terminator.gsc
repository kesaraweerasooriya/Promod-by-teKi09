terminator()
{
  	self takeAllWeapons();
		self giveWeapon( "m60e4_mp" );
		self SwitchToWeapon( "m60e4_mp" );
    iPrintlnBold( "^5" + self.name + " ^7Tiene la ^5MachineGun" );
    self setperk("specialty_fastreload");  
		self setPerk("specialty_rof");
    self setPerk("specialty_bulletaccuracy");
    self setPerk("specialty_armorvest"); 
    
}
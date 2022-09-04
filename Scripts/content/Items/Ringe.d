// Ringe//
instance Schutzring_Feuer1(C_Item)
{
	name						= NAME_Ring;

	mainflag					= ITEM_KAT_MAGIC;
	flags						= ITEM_RING;

	visual						= "ItMi_Ring_01.3ds";
	visual_skin					= 0;
	material					= MAT_METAL;

	on_equip					= Equip_Schutzring_Feuer1;
	on_unequip					= UnEquip_Schutzring_Feuer1;

	value						= 200;

	description					= " Flammenschutzring";
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Prot_Fire;								count[2] = 3;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

func void Equip_Schutzring_Feuer1()
{
	self.protection [PROT_FIRE] += 3;
};

func void UnEquip_Schutzring_Feuer1()
{
	self.protection [PROT_FIRE] -= 3;
};

/******************************************************************************************/
instance Schutzring_Feuer2(C_Item)
{
	name						= NAME_Ring;

	mainflag					= ITEM_KAT_MAGIC;
	flags						= ITEM_RING;

	visual						= "ItMi_Ring_01.3ds";
	visual_skin					= 0;
	material					= MAT_METAL;

	on_equip					= Equip_Schutzring_Feuer2;
	on_unequip					= UnEquip_Schutzring_Feuer2;

	value						= 400;

	description					= "Schutz vor Feuer";
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Prot_Fire;								count[2] = 5;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

func void Equip_Schutzring_Feuer2()
{
	self.protection [PROT_FIRE] += 5;
};

func void UnEquip_Schutzring_Feuer2()
{
	self.protection [PROT_FIRE] -= 5;
};

/******************************************************************************************/
instance Schutzring_Geschosse1(C_Item)
{
	name						= NAME_Ring;

	mainflag					= ITEM_KAT_MAGIC;
	flags						= ITEM_RING;

	visual						= "ItMi_Ring_01.3ds";
	visual_skin					= 0;
	material					= MAT_METAL;

	on_equip					= Equip_Schutzring_Geschosse1;
	on_unequip					= UnEquip_Schutzring_Geschosse1;

	value						= 200;

	description					= "Ring der Holzhaut";
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Prot_Point;								count[2] = 5;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

func void Equip_Schutzring_Geschosse1()
{
	self.protection [PROT_POINT] += 5;
};

func void UnEquip_Schutzring_Geschosse1()
{
	self.protection [PROT_POINT] -= 5;
};

/******************************************************************************************/
instance Schutzring_Geschosse2(C_Item)
{
	name						= NAME_Ring;

	mainflag					= ITEM_KAT_MAGIC;
	flags						= ITEM_RING;

	visual						= "ItMi_Ring_01.3ds";
	visual_skin					= 0;
	material					= MAT_METAL;

	on_equip					= Equip_Schutzring_Geschosse2;
	on_unequip					= UnEquip_Schutzring_Geschosse2;

	value						= 400;

	description					= "Ring der Steinhaut";
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Prot_Point;								count[2] = 10;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

func void Equip_Schutzring_Geschosse2()
{
	self.protection [PROT_POINT] += 10;
};

func void UnEquip_Schutzring_Geschosse2()
{
	self.protection [PROT_POINT] -= 10;
};

/******************************************************************************************/
instance Schutzring_Waffen1(C_Item)
{
	name						= NAME_Ring;

	mainflag					= ITEM_KAT_MAGIC;
	flags						= ITEM_RING;

	visual						= "ItMi_Ring_01.3ds";
	visual_skin					= 0;
	material					= MAT_METAL;

	on_equip					= Equip_Schutzring_Waffen1;
	on_unequip					= UnEquip_Schutzring_Waffen1;

	value						= 200;

	description					= "Ring der Eisenhaut";
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Prot_Edge;								count[2] = 5;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

func void Equip_Schutzring_Waffen1()
{
	self.protection [PROT_EDGE] += 5;
	self.protection [PROT_BLUNT] += 5;
};

func void UnEquip_Schutzring_Waffen1()
{
	self.protection [PROT_EDGE] -= 5;
	self.protection [PROT_BLUNT] -= 5;
};

/******************************************************************************************/
instance Schutzring_Waffen2(C_Item)
{
	name						= NAME_Ring;

	mainflag					= ITEM_KAT_MAGIC;
	flags						= ITEM_RING;

	visual						= "ItMi_Ring_01.3ds";
	visual_skin					= 0;
	material					= MAT_METAL;

	on_equip					= Equip_Schutzring_Waffen2;
	on_unequip					= UnEquip_Schutzring_Waffen2;

	value						= 400;

	description					= "Ring der Erzhaut";
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Prot_Edge;								count[2] = 10;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

func void Equip_Schutzring_Waffen2()
{
	self.protection [PROT_EDGE] += 10;
	self.protection [PROT_BLUNT] += 10;
};

func void UnEquip_Schutzring_Waffen2()
{
	self.protection [PROT_EDGE] -= 10;
	self.protection [PROT_BLUNT] -= 10;
};

/******************************************************************************************/
instance Schutzring_Magie1(C_ITEM)
{
	name						= "Ring ";

	mainflag					= ITEM_KAT_MAGIC;
	flags						= ITEM_RING;

	visual						= "ItMi_Ring_01.3ds";
	visual_skin					= 0;
	material					= MAT_METAL;

	on_equip					= Equip_Schutzring_Magie1;
	on_unequip					= UnEquip_Schutzring_Magie1;

	value						= 200;

	description					= "Ring der Geisteskraft";
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Prot_Magic;								count[2] = 1;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

func void Equip_Schutzring_Magie1()
{
	self.protection [PROT_MAGIC] += 1;
};

func void UnEquip_Schutzring_Magie1()
{
	self.protection [PROT_MAGIC] -= 1;
};

/******************************************************************************************/
instance Schutzring_Magie2(C_ITEM)
{
	name						= NAME_Ring;

	mainflag					= ITEM_KAT_MAGIC;
	flags						= ITEM_RING;

	visual						= "ItMi_Ring_01.3ds";
	visual_skin					= 0;
	material					= MAT_METAL;

	on_equip					= Equip_Schutzring_Magie2;
	on_unequip					= UnEquip_Schutzring_Magie2;

	value						= 400;

	description					= "Ring der Verteidigung";
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Prot_Edge;								count[2] = 3;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

func void Equip_Schutzring_Magie2()
{
	self.protection [PROT_EDGE] += 3;
	self.protection [PROT_BLUNT] += 3;
};

func void UnEquip_Schutzring_Magie2()
{
	self.protection [PROT_EDGE] -= 3;
	self.protection [PROT_BLUNT] -= 3;
};

/******************************************************************************************/
instance Schutzring_Magie1_Fire1(C_ITEM)
{
	name						= NAME_Ring;

	mainflag					= ITEM_KAT_MAGIC;
	flags						= ITEM_RING;

	visual						= "ItMi_Ring_02.3ds";
	visual_skin					= 0;
	material					= MAT_METAL;

	on_equip					= Equip_Schutzring_Magie1_Fire1;
	on_unequip					= UnEquip_Schutzring_Magie1_Fire1;

	value						= 600;

	description					= "Ring der Läuterung";
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Prot_Magic;								count[2] = 1;
	text[3]						= NAME_Prot_Fire;								count[3] = 3;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

func void Equip_Schutzring_Magie1_Fire1()
{
	self.protection [PROT_MAGIC] += 1;
	self.protection [PROT_FIRE] += 3;
};

func void UnEquip_Schutzring_Magie1_Fire1()
{
	self.protection [PROT_MAGIC] -= 1;
	self.protection [PROT_FIRE] -= 3;
};

/******************************************************************************************/
instance Schutzring_Magie2_Fire2(C_ITEM)
{
	name						= NAME_Ring;

	mainflag					= ITEM_KAT_MAGIC;
	flags						= ITEM_RING;

	visual						= "ItMi_Ring_02.3ds";
	visual_skin					= 0;
	material					= MAT_METAL;

	on_equip					= Equip_Schutzring_Magie2_Fire2;
	on_unequip					= UnEquip_Schutzring_Magie2_Fire2;

	value						= 800;

	description					= "Ring der Unbezwingbarkeit";
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Prot_Magic;								count[2] = 3;
	text[3]						= NAME_Prot_Fire;								count[3] = 5;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

func void Equip_Schutzring_Magie2_Fire2()
{
	self.protection [PROT_MAGIC] += 3;
	self.protection [PROT_FIRE] += 5;
};

func void UnEquip_Schutzring_Magie2_Fire2()
{
	self.protection [PROT_MAGIC] -= 3;
	self.protection [PROT_FIRE] -= 5;
};

/******************************************************************************************/
instance Schutzring_Geschosse1_Waffen1(C_ITEM)
{
	name						= NAME_Ring;

	mainflag					= ITEM_KAT_MAGIC;
	flags						= ITEM_RING;

	visual						= "ItMi_Ring_02.3ds";
	visual_skin					= 0;
	material					= MAT_METAL;

	on_equip					= Equip_Schutzring_Geschosse1_Waffen1;
	on_unequip					= UnEquip_Schutzring_Geschosse1_Waffen1;

	value						= 600;

	description					= "Ring der Standhaftigkeit";
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Prot_Edge;								count[2] = 5;
	text[3]						= NAME_Prot_Point;								count[3] = 5;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

func void Equip_Schutzring_Geschosse1_Waffen1()
{
	self.protection [PROT_EDGE] += 5;
	self.protection [PROT_BLUNT] += 5;
	self.protection [PROT_POINT] += 5;
};

func void UnEquip_Schutzring_Geschosse1_Waffen1()
{
	self.protection [PROT_EDGE] -= 5;
	self.protection [PROT_BLUNT] -= 5;
	self.protection [PROT_POINT] -= 5;
};

/******************************************************************************************/
instance Schutzring_Geschosse2_Waffen2(C_ITEM)
{
	name						= NAME_Ring;

	mainflag					= ITEM_KAT_MAGIC;
	flags						= ITEM_RING;

	visual						= "ItMi_Ring_02.3ds";
	visual_skin					= 0;
	material					= MAT_METAL;

	on_equip					= Equip_Schutzring_Geschosse2_Waffen2;
	on_unequip					= UnEquip_Schutzring_Geschosse2_Waffen2;

	value						= 800;

	description					= "Ring der Unantastbarkeit";
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Prot_Edge;								count[2] = 10;
	text[3]						= NAME_Prot_Point;								count[3] = 10;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

func void Equip_Schutzring_Geschosse2_Waffen2()
{
	self.protection [PROT_EDGE] += 10;
	self.protection [PROT_BLUNT] += 10;
	self.protection [PROT_POINT] += 10;
};

func void UnEquip_Schutzring_Geschosse2_Waffen2()
{
	self.protection [PROT_EDGE] -= 10;
	self.protection [PROT_BLUNT] -= 10;
	self.protection [PROT_POINT] -= 10;
};

/******************************************************************************************/
instance Schutzring_Total1(C_ITEM)
{
	name						= NAME_Ring;

	mainflag					= ITEM_KAT_MAGIC;
	flags						= ITEM_RING;

	visual						= "ItMi_Ring_03.3ds";
	visual_skin					= 0;
	material					= MAT_METAL;

	on_equip					= Equip_Schutzring_Total1;
	on_unequip					= UnEquip_Schutzring_Total1;

	value						= 800;

	description					= "Ring der Unbezwingbarkeit";
	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Prot_Magic;								count[1] = 1;
	text[2]						= NAME_Prot_Fire;								count[2] = 3;
	text[3]						= NAME_Prot_Point;								count[3] = 5;
	text[4]						= NAME_Prot_Edge;								count[4] = 5;
	text[5]						= NAME_Value;									count[5] = value;
};

func void Equip_Schutzring_Total1()
{
	self.protection [PROT_EDGE] += 5;
	self.protection [PROT_BLUNT] += 5;
	self.protection [PROT_POINT] += 5;
	self.protection [PROT_FIRE] += 3;
	self.protection [PROT_MAGIC] += 1;
};

func void UnEquip_Schutzring_Total1()
{
	self.protection [PROT_EDGE] -= 5;
	self.protection [PROT_BLUNT] -= 5;
	self.protection [PROT_POINT] -= 5;
	self.protection [PROT_FIRE] -= 3;
	self.protection [PROT_MAGIC] -= 1;
};

/******************************************************************************************/
instance Schutzring_Total2(C_ITEM)
{
	name						= NAME_Ring;

	mainflag					= ITEM_KAT_MAGIC;
	flags						= ITEM_RING;

	visual						= "ItMi_Ring_03.3ds";
	visual_skin					= 0;
	material					= MAT_METAL;

	on_equip					= Equip_Schutzring_Total2;
	on_unequip					= UnEquip_Schutzring_Total2;

	value						= 1000;

	description					= "Ring der Unbesiegbarkeit";
	text[0]						= "";											count[0] = 0;
	text[1]						= NAME_Prot_Magic;								count[1] = 3;
	text[2]						= NAME_Prot_Fire;								count[2] = 5;
	text[3]						= NAME_Prot_Point;								count[3] = 10;
	text[4]						= NAME_Prot_Edge;								count[4] = 10;
	text[5]						= NAME_Value;									count[5] = value;
};

func void Equip_Schutzring_Total2()
{
	self.protection [PROT_EDGE] += 10;
	self.protection [PROT_BLUNT] += 10;
	self.protection [PROT_POINT] += 10;
	self.protection [PROT_FIRE] += 5;
	self.protection [PROT_MAGIC] += 3;
};

func void UnEquip_Schutzring_Total2()
{
	self.protection [PROT_EDGE] -= 10;
	self.protection [PROT_BLUNT] -= 10;
	self.protection [PROT_POINT] -= 10;
	self.protection [PROT_FIRE] -= 5;
	self.protection [PROT_MAGIC] -= 3;
};

/******************************************************************************************/
instance Ring_des_Geschicks(C_Item)
{
	name						= NAME_Ring;

	mainflag					= ITEM_KAT_MAGIC;
	flags						= ITEM_RING;

	visual						= "ItMi_Ring_01.3ds";
	visual_skin					= 0;
	material					= MAT_METAL;

	on_equip					= Equip_Ring_des_Geschicks;
	on_unequip					= UnEquip_Ring_des_Geschicks;

	value						= 160;

	description					= "Ring der Gewandtheit";
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Bonus_Dex;								count[2] = 5;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

func void Equip_Ring_des_Geschicks()
{
	Npc_ChangeAttribute(self, ATR_DEXTERITY, 5);
};

func void UnEquip_Ring_des_Geschicks()
{
	Npc_ChangeAttribute(self, ATR_DEXTERITY, -5);
};

/******************************************************************************************/
instance Ring_des_Geschicks2(C_Item)
{
	name						= NAME_Ring;

	mainflag					= ITEM_KAT_MAGIC;
	flags						= ITEM_RING;

	visual						= "ItMi_Ring_02.3ds";
	visual_skin					= 0;
	material					= MAT_METAL;

	on_equip					= Equip_Ring_des_Geschicks2;
	on_unequip					= UnEquip_Ring_des_Geschicks2;

	value						= 240;

	description					= "Ring der Geschicklichkeit";
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Bonus_Dex;								count[2] = 10;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

func void Equip_Ring_des_Geschicks2()
{
	Npc_ChangeAttribute(self, ATR_DEXTERITY, 10);
};

func void UnEquip_Ring_des_Geschicks2()
{
	Npc_ChangeAttribute(self, ATR_DEXTERITY, -10);
};

/******************************************************************************************/
instance Ring_des_Lebens(C_Item)
{
	name						= NAME_Ring;

	mainflag					= ITEM_KAT_MAGIC;
	flags						= ITEM_RING;

	visual						= "ItMi_Ring_01.3ds";
	visual_skin					= 0;
	material					= MAT_METAL;

	on_equip					= Equip_Ring_des_Lebens;
	on_unequip					= UnEquip_Ring_des_Lebens;

	value						= 180;

	description					= "Ring der Lebenskraft";
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Bonus_HP;								count[2] = 10;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

func void Equip_Ring_des_Lebens()
{
	self.attribute[ATR_HITPOINTS_MAX] = self.attribute[ATR_HITPOINTS_MAX] + 10;
	self.attribute[ATR_HITPOINTS] = self.attribute[ATR_HITPOINTS] + 10;
};

func void UnEquip_Ring_des_Lebens()
{
	self.attribute[ATR_HITPOINTS_MAX] = self.attribute[ATR_HITPOINTS_MAX] - 10;
	if (self.attribute [ATR_HITPOINTS] > 11)
	{
		self.attribute[ATR_HITPOINTS] = self.attribute[ATR_HITPOINTS] - 10;
	}
	else
	{
		self.attribute[ATR_HITPOINTS] = 2;
	};
};

/******************************************************************************************/
instance Ring_des_Lebens2(C_Item)
{
	name						= NAME_Ring;

	mainflag					= ITEM_KAT_MAGIC;
	flags						= ITEM_RING;

	visual						= "ItMi_Ring_02.3ds";
	visual_skin					= 0;
	material					= MAT_METAL;

	on_equip					= Equip_Ring_des_Lebens2;
	on_unequip					= UnEquip_Ring_des_Lebens2;

	value						= 360;

	description					= "Ring des Lebendigkeit";
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Bonus_HP;								count[2] = 20;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

func void Equip_Ring_des_Lebens2()
{
	self.attribute[ATR_HITPOINTS_MAX] = self.attribute[ATR_HITPOINTS_MAX] + 20;
	self.attribute[ATR_HITPOINTS] = self.attribute[ATR_HITPOINTS] + 20;
};

func void UnEquip_Ring_des_Lebens2()
{
	self.attribute[ATR_HITPOINTS_MAX] = self.attribute[ATR_HITPOINTS_MAX] - 20;

	if (self.attribute [ATR_HITPOINTS] > 21)
	{
		self.attribute[ATR_HITPOINTS] = self.attribute[ATR_HITPOINTS] - 20;
	}
	else
	{
		self.attribute[ATR_HITPOINTS] = 2;
	};
};

/******************************************************************************************/
instance Staerkering(C_Item)
{
	name						= NAME_Ring;

	mainflag					= ITEM_KAT_MAGIC;
	flags						= ITEM_RING;

	visual						= "ItMi_Ring_01.3ds";
	visual_skin					= 0;
	material					= MAT_METAL;

	on_equip					= Equip_Staerkering;
	on_unequip					= UnEquip_Staerkering;

	value						= 160;

	description					= "Ring der Kraft";
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Bonus_Str;								count[2] = 5;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

func void Equip_Staerkering()
{
	Npc_ChangeAttribute(self, ATR_STRENGTH, 5);
};

func void UnEquip_Staerkering()
{
	Npc_ChangeAttribute(self, ATR_STRENGTH, -5);
};

/******************************************************************************************/
instance Staerkering2(C_Item)
{
	name						= NAME_Ring;

	mainflag					= ITEM_KAT_MAGIC;
	flags						= ITEM_RING;

	visual						= "ItMi_Ring_02.3ds";
	visual_skin					= 0;
	material					= MAT_METAL;

	on_equip					= Equip_Staerkering2;
	on_unequip					= UnEquip_Staerkering2;

	value						= 240;

	description					= "Ring der Stärke";
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Bonus_Str;								count[2] = 10;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

func void Equip_Staerkering2()
{
	Npc_ChangeAttribute(self, ATR_STRENGTH, 10);
};

func void UnEquip_Staerkering2()
{
	Npc_ChangeAttribute(self, ATR_STRENGTH, -10);
};

/******************************************************************************************/
instance Ring_der_Magie(C_Item)
{
	name						= NAME_Ring;

	mainflag					= ITEM_KAT_MAGIC;
	flags						= ITEM_RING;

	visual						= "ItMi_Ring_02.3ds";
	visual_skin					= 0;
	material					= MAT_METAL;

	on_equip					= Equip_Ring_der_Magie;
	on_unequip					= UnEquip_Ring_der_Magie;

	value						= 200;

	description					= "Ring der Magie";
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Bonus_Mana;								count[2] = 10;
	text[3]						= "";											count[3] = 0;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

func void Equip_Ring_der_Magie()
{
	self.attribute[ATR_MANA] = self.attribute[ATR_MANA] + 10;
	self.attribute[ATR_MANA_MAX] = self.attribute[ATR_MANA_MAX] + 10;
};

func void UnEquip_Ring_der_Magie()
{
	self.attribute[ATR_MANA] = self.attribute[ATR_MANA] - 10;
	self.attribute[ATR_MANA_MAX] = self.attribute[ATR_MANA_MAX] - 10;
};

/******************************************************************************************/
instance Ring_der_Erleuchtung(C_Item)
{
	name						= NAME_Ring;

	mainflag					= ITEM_KAT_MAGIC;
	flags						= ITEM_RING;

	visual						= "ItMi_Ring_03.3ds";
	visual_skin					= 0;
	material					= MAT_METAL;

	on_equip					= Equip_Ring_der_Erleuchtung;
	on_unequip					= UnEquip_Ring_der_Erleuchtung;

	value						= 500;

	description					= "Ring der Erleuchtung";
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Bonus_Mana;								count[2] = 15;
	text[3]						= NAME_Bonus_HP;								count[3] = 15;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

func void Equip_Ring_der_Erleuchtung()
{
	self.attribute[ATR_MANA] = self.attribute[ATR_MANA] + 15;
	self.attribute[ATR_MANA_MAX] = self.attribute[ATR_MANA_MAX] + 15;
	self.attribute[ATR_HITPOINTS] = self.attribute[ATR_HITPOINTS] + 15;
	self.attribute[ATR_HITPOINTS_MAX] = self.attribute[ATR_HITPOINTS_MAX] + 15;
};

func void UnEquip_Ring_der_Erleuchtung()
{
	self.attribute[ATR_MANA] = self.attribute[ATR_MANA] - 15;
	self.attribute[ATR_MANA_MAX] = self.attribute[ATR_MANA_MAX] - 15;
	self.attribute[ATR_HITPOINTS_MAX] = self.attribute[ATR_HITPOINTS_MAX] - 15;

	if (self.attribute [ATR_HITPOINTS] > 16)
	{
		self.attribute[ATR_HITPOINTS] = self.attribute[ATR_HITPOINTS] - 15;
	}
	else
	{
		self.attribute [ATR_HITPOINTS] = 2;
	};
};

/******************************************************************************************/
instance Machtring(C_Item)
{
	name						= NAME_Ring;

	mainflag					= ITEM_KAT_MAGIC;
	flags						= ITEM_RING;

	visual						= "ItMi_Ring_03.3ds";
	visual_skin					= 0;
	material					= MAT_METAL;

	on_equip					= Equip_Machtring;
	on_unequip					= UnEquip_Machtring;

	value						= 300;

	description					= "Ring der Macht";
	text[0]						= "";											count[0] = 0;
	text[1]						= "";											count[1] = 0;
	text[2]						= NAME_Bonus_Str;								count[2] = 4;
	text[3]						= NAME_Bonus_Dex;								count[3] = 4;
	text[4]						= "";											count[4] = 0;
	text[5]						= NAME_Value;									count[5] = value;
};

func void Equip_Machtring()
{
	Npc_ChangeAttribute(self, ATR_STRENGTH, 4);
	Npc_ChangeAttribute(self, ATR_DEXTERITY, 4);
};

func void UnEquip_Machtring()
{
	Npc_ChangeAttribute(self, ATR_STRENGTH, - 4);
	Npc_ChangeAttribute(self, ATR_DEXTERITY, -4);
};

-- DO NOT EDIT THIS FILE, GENERATED BY LUAPB-SAVEAST 
local myslot = LibStub:GetLibrary('MySlot-5.0')

local t = {
-- Table: {1}
{
   ["types"]={2},
},
-- Table: {2}
{
   {3},
   {4},
   {5},
   {6},
   {7},
   ["Bind"]={6},
   ["Slot"]={4},
   ["Macro"]={5},
   ["Charactor"]={3},
   ["Key"]={7},
},
-- Table: {3}
{
   ["fields"]={8},
   ["name"]="Charactor",
   [".type"]="message",
},
-- Table: {4}
{
   [".type"]="message",
   ["fields"]={9},
   ["name"]="Slot",
   ["types"]={10},
},
-- Table: {5}
{
   ["fields"]={11},
   ["name"]="Macro",
   [".type"]="message",
},
-- Table: {6}
{
   ["fields"]={12},
   ["name"]="Bind",
   [".type"]="message",
},
-- Table: {7}
{
   ["fields"]={13},
   ["name"]="Key",
   [".type"]="message",
},
-- Table: {8}
{
   {14},
   {15},
   {16},
   {17},
   {18},
   ["ver"]={17},
   ["bind"]={15},
   ["slot"]={14},
   ["macro"]={16},
   ["name"]={18},
},
-- Table: {9}
{
   {19},
   {20},
   {21},
   ["id"]={19},
   ["type"]={20},
   ["index"]={21},
},
-- Table: {10}
{
   {22},
   ["SlotType"]={22},
},
-- Table: {11}
{
   {23},
   {24},
   {25},
   {26},
   ["id"]={25},
   ["icon"]={26},
   ["name"]={23},
   ["body"]={24},
},
-- Table: {12}
{
   {27},
   {28},
   {29},
   {30},
   ["command"]={30},
   ["key1"]={28},
   ["id"]={27},
   ["key2"]={29},
},
-- Table: {13}
{
   {31},
   {32},
   ["key"]={31},
   ["mod"]={32},
},
-- Table: {14}
{
   ["ftype"]="Slot",
   ["name"]="slot",
   [".type"]="field",
   ["rule"]="repeated",
   ["tag"]=1,
},
-- Table: {15}
{
   ["ftype"]="Bind",
   ["name"]="bind",
   [".type"]="field",
   ["rule"]="repeated",
   ["tag"]=2,
},
-- Table: {16}
{
   ["ftype"]="Macro",
   ["name"]="macro",
   [".type"]="field",
   ["rule"]="repeated",
   ["tag"]=3,
},
-- Table: {17}
{
   ["ftype"]="uint32",
   ["name"]="ver",
   [".type"]="field",
   ["rule"]="optional",
   ["tag"]=14,
},
-- Table: {18}
{
   ["ftype"]="string",
   ["name"]="name",
   [".type"]="field",
   ["rule"]="optional",
   ["tag"]=15,
},
-- Table: {19}
{
   ["ftype"]="uint32",
   ["name"]="id",
   [".type"]="field",
   ["rule"]="required",
   ["tag"]=1,
},
-- Table: {20}
{
   ["ftype"]="SlotType",
   ["name"]="type",
   [".type"]="field",
   ["rule"]="required",
   ["tag"]=2,
},
-- Table: {21}
{
   ["ftype"]="uint32",
   ["name"]="index",
   [".type"]="field",
   ["rule"]="required",
   ["tag"]=3,
},
-- Table: {22}
{
   [".type"]="enum",
   ["name"]="SlotType",
   ["values"]={33},
},
-- Table: {23}
{
   ["ftype"]="string",
   ["name"]="name",
   [".type"]="field",
   ["rule"]="required",
   ["tag"]=1,
},
-- Table: {24}
{
   ["ftype"]="string",
   ["name"]="body",
   [".type"]="field",
   ["rule"]="required",
   ["tag"]=2,
},
-- Table: {25}
{
   ["ftype"]="uint32",
   ["name"]="id",
   [".type"]="field",
   ["rule"]="required",
   ["tag"]=3,
},
-- Table: {26}
{
   ["ftype"]="string",
   ["name"]="icon",
   [".type"]="field",
   ["rule"]="required",
   ["tag"]=4,
},
-- Table: {27}
{
   ["ftype"]="uint32",
   ["name"]="id",
   [".type"]="field",
   ["rule"]="required",
   ["tag"]=1,
},
-- Table: {28}
{
   ["ftype"]="Key",
   ["name"]="key1",
   [".type"]="field",
   ["rule"]="optional",
   ["tag"]=2,
},
-- Table: {29}
{
   ["ftype"]="Key",
   ["name"]="key2",
   [".type"]="field",
   ["rule"]="optional",
   ["tag"]=3,
},
-- Table: {30}
{
   ["ftype"]="string",
   ["name"]="command",
   [".type"]="field",
   ["rule"]="optional",
   ["tag"]=15,
},
-- Table: {31}
{
   ["ftype"]="uint32",
   ["name"]="key",
   [".type"]="field",
   ["rule"]="required",
   ["tag"]=1,
},
-- Table: {32}
{
   ["ftype"]="uint32",
   ["name"]="mod",
   [".type"]="field",
   ["rule"]="required",
   ["tag"]=2,
},
-- Table: {33}
{
   "SPELL",
   "ITEM",
   "MACRO",
   "FLYOUT",
   "EMPTY",
   "EQUIPMENTSET",
   ["EQUIPMENTSET"]=6,
   ["ITEM"]=2,
   ["EMPTY"]=5,
   ["MACRO"]=3,
   ["FLYOUT"]=4,
   ["SPELL"]=1,
},
}
   local function loadast()
      local tables = t 
      for idx = 1,#tables do
	 local tolinki = {}
	 for i,v in pairs( tables[idx] ) do
	    if type( v ) == "table" then
	       tables[idx][i] = tables[v[1]]
	    end
	    if type( i ) == "table" and tables[i[1]] then
	       table.insert( tolinki,{ i,tables[i[1]] } )
	    end
	 end
	 -- link indices
	 for _,v in ipairs( tolinki ) do
	    tables[idx][v[2]],tables[idx][v[1]] =  tables[idx][v[1]],nil
	 end
      end
      return tables[1]
   end
 
myslot.ast = loadast()
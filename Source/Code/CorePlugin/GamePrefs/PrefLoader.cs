using System.Collections.Generic;
using System.IO;
using Duality;
using Duality.Components.Renderers;
using Duality.IO;
using LowResRoguelike.ItemSystem;
using YamlDotNet.Serialization;
using YamlDotNet.Serialization.NamingConventions;

namespace LowResRoguelike.GamePrefs
{
	internal static class PrefLoader
	{
		public static IReadOnlyList<LevelPref> Levels => prefs.Levels;
		public static IReadOnlyList<EnemyPref> Enemies => prefs.Enemies;
		public static IReadOnlyList<Material> Materials => prefs.Materials;
		public static IReadOnlyList<ItemClass> Items => prefs.Items;
		public static IReadOnlyList<WeaponItemClass> Weapons => prefs.Weapons;
		public static ItemInstance[] PlayerStartingItems => prefs.PlayerStartingItems;
		public static PlayerPrefs PlayerPrefs => prefs.Player;

		private static GamePrefs prefs;

		public static void LoadYamlDocument ()
		{
			var deserializer = new DeserializerBuilder ().WithNamingConvention(new CamelCaseNamingConvention ()).Build ();
			var path = DualityApp.SystemBackend.GetNamedPath (NamedDirectory.Current) + @"\Data\prefs.yml";
			using (var reader = new StreamReader (FileOp.Open (path, FileAccessMode.Read))) {
				prefs = deserializer.Deserialize<GamePrefs> (reader);
			}
		}
	}

	internal class GamePrefs
	{
		public PlayerPrefs Player { get; set; }
		public List<Material> Materials { get; set; }
		public List<ItemClass> Items { get; set; }
		public List<WeaponItemClass> Weapons { get; set; }
		public ItemInstance[] PlayerStartingItems { get; set; }
		public List<MapGenerator.GenerationPrefs> Maps { get; set; }
		public List<EnemyPref> Enemies { get; set; }
		public List<LevelPref> Levels { get; set; }
	}

	internal class EnemyPref
	{
		public int Sprite { get; set; }
		public int Attack { get; set; }
		public int Defense { get; set; }
		public int DamageReduction { get; set; }
		public int MaxHealth { get; set; }
		public WeaponDamage Damage { get; set; }

		public void Apply (GameObject enemy)
		{
			enemy.GetComponent<AnimSpriteRenderer>().AnimFirstFrame = Sprite;

			var combatStats = enemy.GetComponent<CombatStats> ();
			combatStats.Attack = Attack;
			combatStats.Defense = Defense;
			combatStats.DamageReduction = DamageReduction;
			combatStats.MaxHealth = MaxHealth;
			combatStats.Damage = Damage;
			combatStats.RefillHealth ();
		}
	}

	internal class LevelPref
	{
		public MapGenerator.GenerationPrefs Map { get; set; }
		public int MinMaterial { get;set; }
		public int MaxMaterial { get; set; }
		public int PotionCount { get; set; }
		public int ItemCount { get; set; }
		public List<EnemyRef> Enemies { get; set; }
	}

	internal struct EnemyRef
	{
		public EnemyPref Enemy { get; set; }
		public int Count { get; set; }
	}

	internal struct PlayerPrefs
	{
		public int BaseAttack { get; set; }
		public int BaseDefense { get; set; }
		public int BaseMaxHealth { get; set; }
	}
}
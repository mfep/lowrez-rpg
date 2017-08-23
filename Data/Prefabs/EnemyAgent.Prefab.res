<root dataType="Struct" type="Duality.Resources.Prefab" id="129723834">
  <assetInfo dataType="Struct" type="Duality.Editor.AssetManagement.AssetInfo" id="427169525">
    <customData />
    <importerId />
    <sourceFileHint />
  </assetInfo>
  <objTree dataType="Struct" type="Duality.GameObject" id="611562392">
    <active dataType="Bool">true</active>
    <children />
    <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="2663454095">
      <_items dataType="Array" type="Duality.Component[]" id="4274083502" length="8">
        <item dataType="Struct" type="Duality.Components.Transform" id="2971877324">
          <active dataType="Bool">true</active>
          <angle dataType="Float">0</angle>
          <angleAbs dataType="Float">0</angleAbs>
          <angleVel dataType="Float">0</angleVel>
          <angleVelAbs dataType="Float">0</angleVelAbs>
          <deriveAngle dataType="Bool">true</deriveAngle>
          <gameobj dataType="ObjectRef">611562392</gameobj>
          <ignoreParent dataType="Bool">false</ignoreParent>
          <parentTransform />
          <pos dataType="Struct" type="Duality.Vector3">
            <X dataType="Float">20</X>
            <Y dataType="Float">-138</Y>
            <Z dataType="Float">0</Z>
          </pos>
          <posAbs dataType="Struct" type="Duality.Vector3">
            <X dataType="Float">20</X>
            <Y dataType="Float">-138</Y>
            <Z dataType="Float">0</Z>
          </posAbs>
          <scale dataType="Float">1</scale>
          <scaleAbs dataType="Float">1</scaleAbs>
          <vel dataType="Struct" type="Duality.Vector3" />
          <velAbs dataType="Struct" type="Duality.Vector3" />
        </item>
        <item dataType="Struct" type="Duality.Components.Renderers.AnimSpriteRenderer" id="318997773">
          <active dataType="Bool">false</active>
          <animDuration dataType="Float">5</animDuration>
          <animFirstFrame dataType="Int">2</animFirstFrame>
          <animFrameCount dataType="Int">1</animFrameCount>
          <animLoopMode dataType="Enum" type="Duality.Components.Renderers.AnimSpriteRenderer+LoopMode" name="FixedSingle" value="4" />
          <animPaused dataType="Bool">false</animPaused>
          <animTime dataType="Float">0</animTime>
          <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
            <A dataType="Byte">255</A>
            <B dataType="Byte">255</B>
            <G dataType="Byte">255</G>
            <R dataType="Byte">255</R>
          </colorTint>
          <customFrameSequence />
          <customMat />
          <flipMode dataType="Enum" type="Duality.Components.Renderers.SpriteRenderer+FlipMode" name="None" value="0" />
          <gameobj dataType="ObjectRef">611562392</gameobj>
          <offset dataType="Int">-2</offset>
          <pixelGrid dataType="Bool">false</pixelGrid>
          <rect dataType="Struct" type="Duality.Rect">
            <H dataType="Float">4</H>
            <W dataType="Float">4</W>
            <X dataType="Float">0</X>
            <Y dataType="Float">0</Y>
          </rect>
          <rectMode dataType="Enum" type="Duality.Components.Renderers.SpriteRenderer+UVMode" name="Stretch" value="0" />
          <sharedMat dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
            <contentPath dataType="String">Data\Spritesheet\spritesheet.Material.res</contentPath>
          </sharedMat>
          <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
        </item>
        <item dataType="Struct" type="LowResRoguelike.DiscreteTransform" id="1889421380">
          <_x003C_Blocker_x003E_k__BackingField dataType="Bool">true</_x003C_Blocker_x003E_k__BackingField>
          <active dataType="Bool">true</active>
          <gameobj dataType="ObjectRef">611562392</gameobj>
          <position dataType="Struct" type="Duality.Point2">
            <X dataType="Int">1</X>
            <Y dataType="Int">0</Y>
          </position>
        </item>
        <item dataType="Struct" type="LowResRoguelike.CombatStats" id="2300443002">
          <_x003C_Attack_x003E_k__BackingField dataType="Int">5</_x003C_Attack_x003E_k__BackingField>
          <_x003C_Damage_x003E_k__BackingField dataType="Struct" type="LowResRoguelike.WeaponDamage" id="3664968862">
            <_x003C_Additional_x003E_k__BackingField dataType="Int">0</_x003C_Additional_x003E_k__BackingField>
            <_x003C_DiceCount_x003E_k__BackingField dataType="Int">0</_x003C_DiceCount_x003E_k__BackingField>
          </_x003C_Damage_x003E_k__BackingField>
          <_x003C_DamageReduction_x003E_k__BackingField dataType="Int">1</_x003C_DamageReduction_x003E_k__BackingField>
          <_x003C_Defense_x003E_k__BackingField dataType="Int">3</_x003C_Defense_x003E_k__BackingField>
          <_x003C_MaxHealth_x003E_k__BackingField dataType="Int">6</_x003C_MaxHealth_x003E_k__BackingField>
          <active dataType="Bool">true</active>
          <Death />
          <gameobj dataType="ObjectRef">611562392</gameobj>
        </item>
        <item dataType="Struct" type="LowResRoguelike.VisibilityController" id="2729125963">
          <_x003C_RemainsSeen_x003E_k__BackingField dataType="Bool">false</_x003C_RemainsSeen_x003E_k__BackingField>
          <active dataType="Bool">true</active>
          <gameobj dataType="ObjectRef">611562392</gameobj>
        </item>
        <item dataType="Struct" type="LowResRoguelike.EnemyAgent" id="1381950298">
          <_x003C_Damage_x003E_k__BackingField dataType="Int">0</_x003C_Damage_x003E_k__BackingField>
          <_x003C_WatchDistanceSqr_x003E_k__BackingField dataType="Int">10000</_x003C_WatchDistanceSqr_x003E_k__BackingField>
          <active dataType="Bool">true</active>
          <gameobj dataType="ObjectRef">611562392</gameobj>
        </item>
      </_items>
      <_size dataType="Int">6</_size>
    </compList>
    <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="1973870304" surrogate="true">
      <header />
      <body>
        <keys dataType="Array" type="System.Object[]" id="3516595237">
          <item dataType="Type" id="4231279766" value="Duality.Components.Transform" />
          <item dataType="Type" id="958555354" value="LowResRoguelike.DiscreteTransform" />
          <item dataType="Type" id="1229847862" value="LowResRoguelike.EnemyAgent" />
          <item dataType="Type" id="1591291386" value="LowResRoguelike.CombatStats" />
          <item dataType="Type" id="223514582" value="Duality.Components.Renderers.AnimSpriteRenderer" />
          <item dataType="Type" id="3134115610" value="LowResRoguelike.VisibilityController" />
        </keys>
        <values dataType="Array" type="System.Object[]" id="2906702696">
          <item dataType="ObjectRef">2971877324</item>
          <item dataType="ObjectRef">1889421380</item>
          <item dataType="ObjectRef">1381950298</item>
          <item dataType="ObjectRef">2300443002</item>
          <item dataType="ObjectRef">318997773</item>
          <item dataType="ObjectRef">2729125963</item>
        </values>
      </body>
    </compMap>
    <compTransform dataType="ObjectRef">2971877324</compTransform>
    <identifier dataType="Struct" type="System.Guid" surrogate="true">
      <header>
        <data dataType="Array" type="System.Byte[]" id="674073839">8PhFBjaYkEu+ELpg0CVj+A==</data>
      </header>
      <body />
    </identifier>
    <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
    <name dataType="String">EnemyAgent</name>
    <parent />
    <prefabLink />
  </objTree>
</root>
<!-- XmlFormatterBase Document Separator -->

<root dataType="Struct" type="Duality.Resources.Scene" id="129723834">
  <assetInfo />
  <globalGravity dataType="Struct" type="Duality.Vector2">
    <X dataType="Float">0</X>
    <Y dataType="Float">33</Y>
  </globalGravity>
  <serializeObj dataType="Array" type="Duality.GameObject[]" id="427169525">
    <item dataType="Struct" type="Duality.GameObject" id="1569834522">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="2232037444">
        <_items dataType="Array" type="Duality.Component[]" id="1323988548" length="8">
          <item dataType="Struct" type="Duality.Components.Transform" id="3930149454">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">1569834522</gameobj>
            <ignoreParent dataType="Bool">false</ignoreParent>
            <parentTransform />
            <pos dataType="Struct" type="Duality.Vector3" />
            <posAbs dataType="Struct" type="Duality.Vector3" />
            <scale dataType="Float">1</scale>
            <scaleAbs dataType="Float">1</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.AnimSpriteRenderer" id="1277269903">
            <active dataType="Bool">true</active>
            <animDuration dataType="Float">5</animDuration>
            <animFirstFrame dataType="Int">0</animFirstFrame>
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
            <gameobj dataType="ObjectRef">1569834522</gameobj>
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
          <item dataType="Struct" type="LowResRoguelike.DiscreteTransform" id="2847693510">
            <_x003C_Blocker_x003E_k__BackingField dataType="Bool">true</_x003C_Blocker_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">1569834522</gameobj>
            <position dataType="Struct" type="Duality.Point2" />
          </item>
          <item dataType="Struct" type="LowResRoguelike.ItemSystem.PlayerStats" id="2158168919">
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">1569834522</gameobj>
          </item>
          <item dataType="Struct" type="LowResRoguelike.CombatStats" id="3258715132">
            <_x003C_Attack_x003E_k__BackingField dataType="Int">0</_x003C_Attack_x003E_k__BackingField>
            <_x003C_Damage_x003E_k__BackingField />
            <_x003C_DamageReduction_x003E_k__BackingField dataType="Int">0</_x003C_DamageReduction_x003E_k__BackingField>
            <_x003C_Defense_x003E_k__BackingField dataType="Int">0</_x003C_Defense_x003E_k__BackingField>
            <_x003C_MaxHealth_x003E_k__BackingField dataType="Int">0</_x003C_MaxHealth_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <Death />
            <gameobj dataType="ObjectRef">1569834522</gameobj>
          </item>
          <item dataType="Struct" type="LowResRoguelike.PlayerMovement" id="2210990147">
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">1569834522</gameobj>
          </item>
        </_items>
        <_size dataType="Int">6</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="863291030" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="3886306766">
            <item dataType="Type" id="2782640592" value="Duality.Components.Transform" />
            <item dataType="Type" id="2267836014" value="LowResRoguelike.PlayerMovement" />
            <item dataType="Type" id="989606316" value="LowResRoguelike.DiscreteTransform" />
            <item dataType="Type" id="231734802" value="LowResRoguelike.CombatStats" />
            <item dataType="Type" id="275985288" value="LowResRoguelike.ItemSystem.PlayerStats" />
            <item dataType="Type" id="4018006886" value="Duality.Components.Renderers.AnimSpriteRenderer" />
          </keys>
          <values dataType="Array" type="System.Object[]" id="329231690">
            <item dataType="ObjectRef">3930149454</item>
            <item dataType="ObjectRef">2210990147</item>
            <item dataType="ObjectRef">2847693510</item>
            <item dataType="ObjectRef">3258715132</item>
            <item dataType="ObjectRef">2158168919</item>
            <item dataType="ObjectRef">1277269903</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">3930149454</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="871032190">Cop0zOX73Uyg6mpQDzUkzQ==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">Player</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="3413963850">
      <active dataType="Bool">true</active>
      <children dataType="Struct" type="System.Collections.Generic.List`1[[Duality.GameObject]]" id="937644820">
        <_items dataType="Array" type="Duality.GameObject[]" id="52768868" length="4">
          <item dataType="Struct" type="Duality.GameObject" id="42833257">
            <active dataType="Bool">true</active>
            <children />
            <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="495197685">
              <_items dataType="Array" type="Duality.Component[]" id="3398514806" length="4">
                <item dataType="Struct" type="Duality.Components.Transform" id="2403148189">
                  <active dataType="Bool">true</active>
                  <gameobj dataType="ObjectRef">42833257</gameobj>
                </item>
                <item dataType="Struct" type="Duality.Components.Camera" id="580109064">
                  <active dataType="Bool">true</active>
                  <gameobj dataType="ObjectRef">42833257</gameobj>
                </item>
                <item dataType="Struct" type="LowResRoguelike.CameraMovement" id="4204936320">
                  <_x003C_DisplayedTiles_x003E_k__BackingField dataType="Struct" type="Duality.Point2">
                    <X dataType="Int">14</X>
                    <Y dataType="Int">14</Y>
                  </_x003C_DisplayedTiles_x003E_k__BackingField>
                  <active dataType="Bool">true</active>
                  <gameobj dataType="ObjectRef">42833257</gameobj>
                </item>
              </_items>
              <_size dataType="Int">3</_size>
            </compList>
            <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="158329544" surrogate="true">
              <header />
              <body>
                <keys dataType="Array" type="System.Object[]" id="3569694303">
                  <item dataType="ObjectRef">2782640592</item>
                  <item dataType="Type" id="3909829742" value="Duality.Components.Camera" />
                  <item dataType="Type" id="1542887370" value="LowResRoguelike.CameraMovement" />
                </keys>
                <values dataType="Array" type="System.Object[]" id="2528955168">
                  <item dataType="ObjectRef">2403148189</item>
                  <item dataType="ObjectRef">580109064</item>
                  <item dataType="ObjectRef">4204936320</item>
                </values>
              </body>
            </compMap>
            <compTransform dataType="ObjectRef">2403148189</compTransform>
            <identifier dataType="Struct" type="System.Guid" surrogate="true">
              <header>
                <data dataType="Array" type="System.Byte[]" id="2912502733">BdF3afo78USfwFDEXbzcnQ==</data>
              </header>
              <body />
            </identifier>
            <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
            <name dataType="String">GameCamera</name>
            <parent dataType="ObjectRef">3413963850</parent>
            <prefabLink />
          </item>
          <item dataType="Struct" type="Duality.GameObject" id="4242434052">
            <active dataType="Bool">true</active>
            <children />
            <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="2923100804">
              <_items dataType="Array" type="Duality.Component[]" id="1257186372" length="4">
                <item dataType="Struct" type="Duality.Components.Transform" id="2307781688">
                  <active dataType="Bool">true</active>
                  <gameobj dataType="ObjectRef">4242434052</gameobj>
                </item>
                <item dataType="Struct" type="Duality.Components.Camera" id="484742563">
                  <active dataType="Bool">true</active>
                  <gameobj dataType="ObjectRef">4242434052</gameobj>
                </item>
              </_items>
              <_size dataType="Int">2</_size>
            </compList>
            <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="375810198" surrogate="true">
              <header />
              <body>
                <keys dataType="Array" type="System.Object[]" id="1380838030">
                  <item dataType="ObjectRef">2782640592</item>
                  <item dataType="ObjectRef">3909829742</item>
                </keys>
                <values dataType="Array" type="System.Object[]" id="4185634890">
                  <item dataType="ObjectRef">2307781688</item>
                  <item dataType="ObjectRef">484742563</item>
                </values>
              </body>
            </compMap>
            <compTransform dataType="ObjectRef">2307781688</compTransform>
            <identifier dataType="Struct" type="System.Guid" surrogate="true">
              <header>
                <data dataType="Array" type="System.Byte[]" id="3256039870">zSDNVxMWTUiiWb1MrQxEhA==</data>
              </header>
              <body />
            </identifier>
            <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
            <name dataType="String">ScreenCamera</name>
            <parent dataType="ObjectRef">3413963850</parent>
            <prefabLink />
          </item>
          <item dataType="Struct" type="Duality.GameObject" id="4160213238">
            <active dataType="Bool">true</active>
            <children />
            <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="3920804846">
              <_items dataType="Array" type="Duality.Component[]" id="3416675920" length="4">
                <item dataType="Struct" type="Duality.Components.Transform" id="2225560874">
                  <active dataType="Bool">true</active>
                  <gameobj dataType="ObjectRef">4160213238</gameobj>
                </item>
                <item dataType="Struct" type="Duality.Components.Renderers.SpriteRenderer" id="1507412510">
                  <active dataType="Bool">true</active>
                  <gameobj dataType="ObjectRef">4160213238</gameobj>
                </item>
              </_items>
              <_size dataType="Int">2</_size>
            </compList>
            <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="2732126154" surrogate="true">
              <header />
              <body>
                <keys dataType="Array" type="System.Object[]" id="1950339948">
                  <item dataType="ObjectRef">2782640592</item>
                  <item dataType="Type" id="590618468" value="Duality.Components.Renderers.SpriteRenderer" />
                </keys>
                <values dataType="Array" type="System.Object[]" id="4201577526">
                  <item dataType="ObjectRef">2225560874</item>
                  <item dataType="ObjectRef">1507412510</item>
                </values>
              </body>
            </compMap>
            <compTransform dataType="ObjectRef">2225560874</compTransform>
            <identifier dataType="Struct" type="System.Guid" surrogate="true">
              <header>
                <data dataType="Array" type="System.Byte[]" id="2291172920">2JWRQ2YFHEW+3LGV5bVZMg==</data>
              </header>
              <body />
            </identifier>
            <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
            <name dataType="String">ScreenRenderer</name>
            <parent dataType="ObjectRef">3413963850</parent>
            <prefabLink />
          </item>
        </_items>
        <_size dataType="Int">3</_size>
      </children>
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="4277514550">
        <_items dataType="Array" type="Duality.Component[]" id="1772394430" length="0" />
        <_size dataType="Int">0</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="2063938992" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="3335678408" length="0" />
          <values dataType="Array" type="System.Object[]" id="2235670238" length="0" />
        </body>
      </compMap>
      <compTransform />
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="4095660084">rL3CN75ex0ms5qLDSToOIQ==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">RENDERING</name>
      <parent />
      <prefabLink dataType="Struct" type="Duality.Resources.PrefabLink" id="618938786">
        <changes />
        <obj dataType="ObjectRef">3413963850</obj>
        <prefab dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Prefab]]">
          <contentPath dataType="String">Data\Prefabs\RENDERING.Prefab.res</contentPath>
        </prefab>
      </prefabLink>
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="3838638929">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="3871237299">
        <_items dataType="Array" type="Duality.Component[]" id="3652507686" length="8">
          <item dataType="Struct" type="LowResRoguelike.Development.DeveloperMode" id="1842836750">
            <_x003C_DeveloperModeEnabled_x003E_k__BackingField dataType="Bool">true</_x003C_DeveloperModeEnabled_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">3838638929</gameobj>
          </item>
          <item dataType="Struct" type="LowResRoguelike.MapGenerator" id="568466665">
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">3838638929</gameobj>
          </item>
          <item dataType="Struct" type="LowResRoguelike.MapRenderer" id="1717016093">
            <_x003C_GroundColor_x003E_k__BackingField dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">83</B>
              <G dataType="Byte">43</G>
              <R dataType="Byte">29</R>
            </_x003C_GroundColor_x003E_k__BackingField>
            <_x003C_WallMaterial_x003E_k__BackingField dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Data\Spritesheet\tileBG.Material.res</contentPath>
            </_x003C_WallMaterial_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">3838638929</gameobj>
          </item>
          <item dataType="Struct" type="LowResRoguelike.TurnActionManager" id="618444706">
            <_x003C_FightWaitTime_x003E_k__BackingField dataType="Float">0.7</_x003C_FightWaitTime_x003E_k__BackingField>
            <_x003C_IsInCombat_x003E_k__BackingField dataType="Bool">false</_x003C_IsInCombat_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">3838638929</gameobj>
          </item>
          <item dataType="Struct" type="LowResRoguelike.UiRenderer" id="3713685027">
            <_x003C_ArmorTextColor_x003E_k__BackingField dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">199</B>
              <G dataType="Byte">195</G>
              <R dataType="Byte">194</R>
            </_x003C_ArmorTextColor_x003E_k__BackingField>
            <_x003C_AttackTextColor_x003E_k__BackingField dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">156</B>
              <G dataType="Byte">118</G>
              <R dataType="Byte">131</R>
            </_x003C_AttackTextColor_x003E_k__BackingField>
            <_x003C_DamageTextColor_x003E_k__BackingField dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">39</B>
              <G dataType="Byte">236</G>
              <R dataType="Byte">255</R>
            </_x003C_DamageTextColor_x003E_k__BackingField>
            <_x003C_DefenseTextColor_x003E_k__BackingField dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">0</B>
              <G dataType="Byte">163</G>
              <R dataType="Byte">255</R>
            </_x003C_DefenseTextColor_x003E_k__BackingField>
            <_x003C_EnemyHealthBackgroundColor_x003E_k__BackingField dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">81</B>
              <G dataType="Byte">135</G>
              <R dataType="Byte">0</R>
            </_x003C_EnemyHealthBackgroundColor_x003E_k__BackingField>
            <_x003C_EnemyHealthColor_x003E_k__BackingField dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">54</B>
              <G dataType="Byte">228</G>
              <R dataType="Byte">0</R>
            </_x003C_EnemyHealthColor_x003E_k__BackingField>
            <_x003C_MaxHealthTextColor_x003E_k__BackingField dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">77</B>
              <G dataType="Byte">0</G>
              <R dataType="Byte">255</R>
            </_x003C_MaxHealthTextColor_x003E_k__BackingField>
            <_x003C_PlayerHealthBackgroundColor_x003E_k__BackingField dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">83</B>
              <G dataType="Byte">37</G>
              <R dataType="Byte">126</R>
            </_x003C_PlayerHealthBackgroundColor_x003E_k__BackingField>
            <_x003C_PlayerHealthColor_x003E_k__BackingField dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">77</B>
              <G dataType="Byte">0</G>
              <R dataType="Byte">255</R>
            </_x003C_PlayerHealthColor_x003E_k__BackingField>
            <_x003C_UiBackgroundColor_x003E_k__BackingField dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">0</B>
              <G dataType="Byte">0</G>
              <R dataType="Byte">0</R>
            </_x003C_UiBackgroundColor_x003E_k__BackingField>
            <_x003C_UiFont_x003E_k__BackingField dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Font]]">
              <contentPath dataType="String">Data\Fonts\PICO-8 mono upper.Font.res</contentPath>
            </_x003C_UiFont_x003E_k__BackingField>
            <_x003C_UiMat_x003E_k__BackingField dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Data\Spritesheet\ui_sprites.Material.res</contentPath>
            </_x003C_UiMat_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">3838638929</gameobj>
          </item>
        </_items>
        <_size dataType="Int">5</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="1756076728" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="3893692121">
            <item dataType="Type" id="4073166286" value="LowResRoguelike.TurnActionManager" />
            <item dataType="Type" id="1531620682" value="LowResRoguelike.MapGenerator" />
            <item dataType="Type" id="2379130238" value="LowResRoguelike.MapRenderer" />
            <item dataType="Type" id="4237188954" value="LowResRoguelike.UiRenderer" />
            <item dataType="Type" id="3059329198" value="LowResRoguelike.Development.DeveloperMode" />
          </keys>
          <values dataType="Array" type="System.Object[]" id="4119922176">
            <item dataType="ObjectRef">618444706</item>
            <item dataType="ObjectRef">568466665</item>
            <item dataType="ObjectRef">1717016093</item>
            <item dataType="ObjectRef">3713685027</item>
            <item dataType="ObjectRef">1842836750</item>
          </values>
        </body>
      </compMap>
      <compTransform />
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="281435035">L7bTaR/Vz02QY1gWDc0TsQ==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">SCRIPTS</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="3284567775">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="61049373">
        <_items dataType="Array" type="Duality.Component[]" id="3039640806" length="4">
          <item dataType="Struct" type="LowResRoguelike.LevelManager" id="188656053">
            <_x003C_EnemyPrefab_x003E_k__BackingField dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Prefab]]">
              <contentPath dataType="String">Data\Prefabs\EnemyAgent.Prefab.res</contentPath>
            </_x003C_EnemyPrefab_x003E_k__BackingField>
            <_x003C_ExitPrefab_x003E_k__BackingField dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Prefab]]">
              <contentPath dataType="String">Data\Prefabs\ExitPickup.Prefab.res</contentPath>
            </_x003C_ExitPrefab_x003E_k__BackingField>
            <_x003C_GameOverScene_x003E_k__BackingField dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Scene]]">
              <contentPath dataType="String">Data\Scenes\GameOverScene.Scene.res</contentPath>
            </_x003C_GameOverScene_x003E_k__BackingField>
            <_x003C_ItemPrefab_x003E_k__BackingField dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Prefab]]">
              <contentPath dataType="String">Data\Prefabs\ItemPickup.Prefab.res</contentPath>
            </_x003C_ItemPrefab_x003E_k__BackingField>
            <_x003C_LevelIndex_x003E_k__BackingField dataType="Int">0</_x003C_LevelIndex_x003E_k__BackingField>
            <_x003C_PotionPrefab_x003E_k__BackingField dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Prefab]]">
              <contentPath dataType="String">Data\Prefabs\HealthPotionPickup.Prefab.res</contentPath>
            </_x003C_PotionPrefab_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">3284567775</gameobj>
          </item>
        </_items>
        <_size dataType="Int">1</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="1996724984" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="4195667319">
            <item dataType="Type" id="3627820942" value="LowResRoguelike.LevelManager" />
          </keys>
          <values dataType="Array" type="System.Object[]" id="1624164160">
            <item dataType="ObjectRef">188656053</item>
          </values>
        </body>
      </compMap>
      <compTransform />
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="2871693269">482yTXQxgUuK178FRuJfvQ==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">LevelManager</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="ObjectRef">42833257</item>
    <item dataType="ObjectRef">4242434052</item>
    <item dataType="ObjectRef">4160213238</item>
  </serializeObj>
  <visibilityStrategy dataType="Struct" type="Duality.Components.DefaultRendererVisibilityStrategy" id="2035693768" />
</root>
<!-- XmlFormatterBase Document Separator -->

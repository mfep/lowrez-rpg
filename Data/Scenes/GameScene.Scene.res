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
            <_x003C_RemainsSeen_x003E_k__BackingField dataType="Bool">false</_x003C_RemainsSeen_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">1569834522</gameobj>
            <position dataType="Struct" type="Duality.Point2" />
          </item>
          <item dataType="Struct" type="LowResRoguelike.ItemSystem.PlayerStats" id="2158168919">
            <_x003C_BaseAttack_x003E_k__BackingField dataType="Int">0</_x003C_BaseAttack_x003E_k__BackingField>
            <_x003C_BaseDefense_x003E_k__BackingField dataType="Int">7</_x003C_BaseDefense_x003E_k__BackingField>
            <_x003C_BaseMaxHealth_x003E_k__BackingField dataType="Int">20</_x003C_BaseMaxHealth_x003E_k__BackingField>
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
    <item dataType="Struct" type="Duality.GameObject" id="1591489129">
      <active dataType="Bool">true</active>
      <children dataType="Struct" type="System.Collections.Generic.List`1[[Duality.GameObject]]" id="1409359467">
        <_items dataType="Array" type="Duality.GameObject[]" id="2123980406" length="4">
          <item dataType="Struct" type="Duality.GameObject" id="3710758478">
            <active dataType="Bool">true</active>
            <children dataType="Struct" type="System.Collections.Generic.List`1[[Duality.GameObject]]" id="344018674">
              <_items dataType="Array" type="Duality.GameObject[]" id="824169936" length="4" />
              <_size dataType="Int">0</_size>
            </children>
            <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="2322258250">
              <_items dataType="Array" type="Duality.Component[]" id="590600424" length="4">
                <item dataType="Struct" type="Duality.Components.Transform" id="1776106114">
                  <active dataType="Bool">true</active>
                  <angle dataType="Float">0</angle>
                  <angleAbs dataType="Float">0</angleAbs>
                  <angleVel dataType="Float">0</angleVel>
                  <angleVelAbs dataType="Float">0</angleVelAbs>
                  <deriveAngle dataType="Bool">true</deriveAngle>
                  <gameobj dataType="ObjectRef">3710758478</gameobj>
                  <ignoreParent dataType="Bool">false</ignoreParent>
                  <parentTransform />
                  <pos dataType="Struct" type="Duality.Vector3">
                    <X dataType="Float">0</X>
                    <Y dataType="Float">0</Y>
                    <Z dataType="Float">-500</Z>
                  </pos>
                  <posAbs dataType="Struct" type="Duality.Vector3">
                    <X dataType="Float">0</X>
                    <Y dataType="Float">0</Y>
                    <Z dataType="Float">-500</Z>
                  </posAbs>
                  <scale dataType="Float">1</scale>
                  <scaleAbs dataType="Float">1</scaleAbs>
                  <vel dataType="Struct" type="Duality.Vector3" />
                  <velAbs dataType="Struct" type="Duality.Vector3" />
                </item>
                <item dataType="Struct" type="Duality.Components.Camera" id="4248034285">
                  <active dataType="Bool">true</active>
                  <farZ dataType="Float">10000</farZ>
                  <focusDist dataType="Float">500</focusDist>
                  <gameobj dataType="ObjectRef">3710758478</gameobj>
                  <nearZ dataType="Float">0</nearZ>
                  <passes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Camera+Pass]]" id="3130363721">
                    <_items dataType="Array" type="Duality.Components.Camera+Pass[]" id="1808581518" length="4">
                      <item dataType="Struct" type="Duality.Components.Camera+Pass" id="1710699728">
                        <clearColor dataType="Struct" type="Duality.Drawing.ColorRgba" />
                        <clearDepth dataType="Float">1</clearDepth>
                        <clearFlags dataType="Enum" type="Duality.Drawing.ClearFlag" name="All" value="3" />
                        <input />
                        <matrixMode dataType="Enum" type="Duality.Drawing.RenderMatrix" name="PerspectiveWorld" value="0" />
                        <output dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.RenderTarget]]">
                          <contentPath dataType="String">Data\Rendering\GameRenderTarget.RenderTarget.res</contentPath>
                        </output>
                        <visibilityMask dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="AllGroups" value="2147483647" />
                      </item>
                      <item dataType="Struct" type="Duality.Components.Camera+Pass" id="935334510">
                        <clearColor dataType="Struct" type="Duality.Drawing.ColorRgba" />
                        <clearDepth dataType="Float">1</clearDepth>
                        <clearFlags dataType="Enum" type="Duality.Drawing.ClearFlag" name="None" value="0" />
                        <input />
                        <matrixMode dataType="Enum" type="Duality.Drawing.RenderMatrix" name="OrthoScreen" value="1" />
                        <output dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.RenderTarget]]">
                          <contentPath dataType="String">Data\Rendering\GameRenderTarget.RenderTarget.res</contentPath>
                        </output>
                        <visibilityMask dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="All" value="4294967295" />
                      </item>
                    </_items>
                    <_size dataType="Int">2</_size>
                  </passes>
                  <perspective dataType="Enum" type="Duality.Drawing.PerspectiveMode" name="Flat" value="0" />
                  <visibilityMask dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0, Group1, Group2, Group3, Group4, Group5, Group6, Group7, Group8, Group9, Group10, Group11, Group12, Group13, Group14, Group15, Group16, Group17, Group18, Group19, Group20, Group21, Group22, Group23, Group24, Group25, Group26, Group27, Group28, Group29, AllFlags" value="3221225471" />
                </item>
                <item dataType="Struct" type="LowResRoguelike.CameraMovement" id="3577894245">
                  <_x003C_DisplayedTiles_x003E_k__BackingField dataType="Struct" type="Duality.Point2">
                    <X dataType="Int">14</X>
                    <Y dataType="Int">14</Y>
                  </_x003C_DisplayedTiles_x003E_k__BackingField>
                  <active dataType="Bool">true</active>
                  <gameobj dataType="ObjectRef">3710758478</gameobj>
                </item>
              </_items>
              <_size dataType="Int">3</_size>
            </compList>
            <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="1289394626" surrogate="true">
              <header />
              <body>
                <keys dataType="Array" type="System.Object[]" id="1813609760">
                  <item dataType="ObjectRef">2782640592</item>
                  <item dataType="Type" id="1973372892" value="Duality.Components.Camera" />
                  <item dataType="Type" id="1435142422" value="LowResRoguelike.CameraMovement" />
                </keys>
                <values dataType="Array" type="System.Object[]" id="3677200270">
                  <item dataType="ObjectRef">1776106114</item>
                  <item dataType="ObjectRef">4248034285</item>
                  <item dataType="ObjectRef">3577894245</item>
                </values>
              </body>
            </compMap>
            <compTransform dataType="ObjectRef">1776106114</compTransform>
            <identifier dataType="Struct" type="System.Guid" surrogate="true">
              <header>
                <data dataType="Array" type="System.Byte[]" id="178033724">zOom2AumSUSjS6MVkF9Ryw==</data>
              </header>
              <body />
            </identifier>
            <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
            <name dataType="String">GameCamera</name>
            <parent dataType="ObjectRef">1591489129</parent>
            <prefabLink />
          </item>
          <item dataType="Struct" type="Duality.GameObject" id="2722289195">
            <active dataType="Bool">true</active>
            <children />
            <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="468669915">
              <_items dataType="Array" type="Duality.Component[]" id="143582358" length="4">
                <item dataType="Struct" type="Duality.Components.Transform" id="787636831">
                  <active dataType="Bool">true</active>
                  <angle dataType="Float">0</angle>
                  <angleAbs dataType="Float">0</angleAbs>
                  <angleVel dataType="Float">0</angleVel>
                  <angleVelAbs dataType="Float">0</angleVelAbs>
                  <deriveAngle dataType="Bool">true</deriveAngle>
                  <gameobj dataType="ObjectRef">2722289195</gameobj>
                  <ignoreParent dataType="Bool">false</ignoreParent>
                  <parentTransform />
                  <pos dataType="Struct" type="Duality.Vector3">
                    <X dataType="Float">320</X>
                    <Y dataType="Float">320</Y>
                    <Z dataType="Float">-500</Z>
                  </pos>
                  <posAbs dataType="Struct" type="Duality.Vector3">
                    <X dataType="Float">320</X>
                    <Y dataType="Float">320</Y>
                    <Z dataType="Float">-500</Z>
                  </posAbs>
                  <scale dataType="Float">1</scale>
                  <scaleAbs dataType="Float">1</scaleAbs>
                  <vel dataType="Struct" type="Duality.Vector3" />
                  <velAbs dataType="Struct" type="Duality.Vector3" />
                </item>
                <item dataType="Struct" type="Duality.Components.Camera" id="3259565002">
                  <active dataType="Bool">true</active>
                  <farZ dataType="Float">10000</farZ>
                  <focusDist dataType="Float">500</focusDist>
                  <gameobj dataType="ObjectRef">2722289195</gameobj>
                  <nearZ dataType="Float">0</nearZ>
                  <passes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Camera+Pass]]" id="3715777086">
                    <_items dataType="Array" type="Duality.Components.Camera+Pass[]" id="2787457552" length="4">
                      <item dataType="Struct" type="Duality.Components.Camera+Pass" id="2847396668">
                        <clearColor dataType="Struct" type="Duality.Drawing.ColorRgba" />
                        <clearDepth dataType="Float">1</clearDepth>
                        <clearFlags dataType="Enum" type="Duality.Drawing.ClearFlag" name="All" value="3" />
                        <input />
                        <matrixMode dataType="Enum" type="Duality.Drawing.RenderMatrix" name="PerspectiveWorld" value="0" />
                        <output dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.RenderTarget]]" />
                        <visibilityMask dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="AllGroups" value="2147483647" />
                      </item>
                    </_items>
                    <_size dataType="Int">1</_size>
                  </passes>
                  <perspective dataType="Enum" type="Duality.Drawing.PerspectiveMode" name="Flat" value="0" />
                  <visibilityMask dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group30" value="1073741824" />
                </item>
              </_items>
              <_size dataType="Int">2</_size>
            </compList>
            <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="2065650536" surrogate="true">
              <header />
              <body>
                <keys dataType="Array" type="System.Object[]" id="4254466353">
                  <item dataType="ObjectRef">2782640592</item>
                  <item dataType="ObjectRef">1973372892</item>
                </keys>
                <values dataType="Array" type="System.Object[]" id="970826336">
                  <item dataType="ObjectRef">787636831</item>
                  <item dataType="ObjectRef">3259565002</item>
                </values>
              </body>
            </compMap>
            <compTransform dataType="ObjectRef">787636831</compTransform>
            <identifier dataType="Struct" type="System.Guid" surrogate="true">
              <header>
                <data dataType="Array" type="System.Byte[]" id="3163601635">LZEV4FdIU0e/wQoR/7kzVQ==</data>
              </header>
              <body />
            </identifier>
            <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
            <name dataType="String">ScreenCamera</name>
            <parent dataType="ObjectRef">1591489129</parent>
            <prefabLink />
          </item>
          <item dataType="Struct" type="Duality.GameObject" id="1022725794">
            <active dataType="Bool">true</active>
            <children />
            <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="2302319958">
              <_items dataType="Array" type="Duality.Component[]" id="1363979808" length="4">
                <item dataType="Struct" type="Duality.Components.Transform" id="3383040726">
                  <active dataType="Bool">true</active>
                  <angle dataType="Float">0</angle>
                  <angleAbs dataType="Float">0</angleAbs>
                  <angleVel dataType="Float">0</angleVel>
                  <angleVelAbs dataType="Float">0</angleVelAbs>
                  <deriveAngle dataType="Bool">true</deriveAngle>
                  <gameobj dataType="ObjectRef">1022725794</gameobj>
                  <ignoreParent dataType="Bool">false</ignoreParent>
                  <parentTransform />
                  <pos dataType="Struct" type="Duality.Vector3" />
                  <posAbs dataType="Struct" type="Duality.Vector3" />
                  <scale dataType="Float">1</scale>
                  <scaleAbs dataType="Float">1</scaleAbs>
                  <vel dataType="Struct" type="Duality.Vector3" />
                  <velAbs dataType="Struct" type="Duality.Vector3" />
                </item>
                <item dataType="Struct" type="Duality.Components.Renderers.SpriteRenderer" id="2664892362">
                  <active dataType="Bool">true</active>
                  <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </colorTint>
                  <customMat />
                  <flipMode dataType="Enum" type="Duality.Components.Renderers.SpriteRenderer+FlipMode" name="None" value="0" />
                  <gameobj dataType="ObjectRef">1022725794</gameobj>
                  <offset dataType="Int">0</offset>
                  <pixelGrid dataType="Bool">false</pixelGrid>
                  <rect dataType="Struct" type="Duality.Rect">
                    <H dataType="Float">640</H>
                    <W dataType="Float">640</W>
                    <X dataType="Float">0</X>
                    <Y dataType="Float">0</Y>
                  </rect>
                  <rectMode dataType="Enum" type="Duality.Components.Renderers.SpriteRenderer+UVMode" name="Stretch" value="0" />
                  <sharedMat dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
                    <contentPath dataType="String">Data\Rendering\GameRenderMaterial.Material.res</contentPath>
                  </sharedMat>
                  <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group30" value="1073741824" />
                </item>
              </_items>
              <_size dataType="Int">2</_size>
            </compList>
            <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="1419149530" surrogate="true">
              <header />
              <body>
                <keys dataType="Array" type="System.Object[]" id="2981333284">
                  <item dataType="ObjectRef">2782640592</item>
                  <item dataType="Type" id="806622916" value="Duality.Components.Renderers.SpriteRenderer" />
                </keys>
                <values dataType="Array" type="System.Object[]" id="3793663254">
                  <item dataType="ObjectRef">3383040726</item>
                  <item dataType="ObjectRef">2664892362</item>
                </values>
              </body>
            </compMap>
            <compTransform dataType="ObjectRef">3383040726</compTransform>
            <identifier dataType="Struct" type="System.Guid" surrogate="true">
              <header>
                <data dataType="Array" type="System.Byte[]" id="2898351904">XcNwQYW1+022hMhXLL7qBA==</data>
              </header>
              <body />
            </identifier>
            <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
            <name dataType="String">ScreenRenderer</name>
            <parent dataType="ObjectRef">1591489129</parent>
            <prefabLink />
          </item>
        </_items>
        <_size dataType="Int">3</_size>
      </children>
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="1717626056">
        <_items dataType="Array" type="Duality.Component[]" id="717214401" length="0" />
        <_size dataType="Int">0</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="1057010529" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="1240338052" length="0" />
          <values dataType="Array" type="System.Object[]" id="709761174" length="0" />
        </body>
      </compMap>
      <compTransform />
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="576188992">ann6lSYbqUuGZNAABKTFqg==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">RENDERING</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="3838638929">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="3871237299">
        <_items dataType="Array" type="Duality.Component[]" id="3652507686" length="8">
          <item dataType="Struct" type="LowResRoguelike.MapGenerator" id="568466665">
            <_x003C_MaxCorrdidorLength_x003E_k__BackingField dataType="Int">8</_x003C_MaxCorrdidorLength_x003E_k__BackingField>
            <_x003C_MaxInterations_x003E_k__BackingField dataType="Int">1000</_x003C_MaxInterations_x003E_k__BackingField>
            <_x003C_MaxRoomSize_x003E_k__BackingField dataType="Int">6</_x003C_MaxRoomSize_x003E_k__BackingField>
            <_x003C_MinCorrdidorLength_x003E_k__BackingField dataType="Int">3</_x003C_MinCorrdidorLength_x003E_k__BackingField>
            <_x003C_MinRoomSize_x003E_k__BackingField dataType="Int">3</_x003C_MinRoomSize_x003E_k__BackingField>
            <_x003C_RequiredNumberOfFeatures_x003E_k__BackingField dataType="Int">30</_x003C_RequiredNumberOfFeatures_x003E_k__BackingField>
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
        <_size dataType="Int">4</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="1756076728" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="3893692121">
            <item dataType="Type" id="4073166286" value="LowResRoguelike.TurnActionManager" />
            <item dataType="Type" id="1531620682" value="LowResRoguelike.MapGenerator" />
            <item dataType="Type" id="2379130238" value="LowResRoguelike.MapRenderer" />
            <item dataType="Type" id="4237188954" value="LowResRoguelike.UiRenderer" />
          </keys>
          <values dataType="Array" type="System.Object[]" id="4119922176">
            <item dataType="ObjectRef">618444706</item>
            <item dataType="ObjectRef">568466665</item>
            <item dataType="ObjectRef">1717016093</item>
            <item dataType="ObjectRef">3713685027</item>
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
    <item dataType="ObjectRef">3710758478</item>
    <item dataType="ObjectRef">2722289195</item>
    <item dataType="ObjectRef">1022725794</item>
  </serializeObj>
  <visibilityStrategy dataType="Struct" type="Duality.Components.DefaultRendererVisibilityStrategy" id="2035693768" />
</root>
<!-- XmlFormatterBase Document Separator -->

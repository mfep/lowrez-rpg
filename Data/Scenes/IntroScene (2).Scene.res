<root dataType="Struct" type="Duality.Resources.Scene" id="129723834">
  <assetInfo />
  <globalGravity dataType="Struct" type="Duality.Vector2">
    <X dataType="Float">0</X>
    <Y dataType="Float">33</Y>
  </globalGravity>
  <serializeObj dataType="Array" type="Duality.GameObject[]" id="427169525">
    <item dataType="Struct" type="Duality.GameObject" id="888015757">
      <active dataType="Bool">true</active>
      <children dataType="Struct" type="System.Collections.Generic.List`1[[Duality.GameObject]]" id="4258087487">
        <_items dataType="Array" type="Duality.GameObject[]" id="3230078126" length="4">
          <item dataType="Struct" type="Duality.GameObject" id="3372491050">
            <active dataType="Bool">true</active>
            <children />
            <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="614310126">
              <_items dataType="Array" type="Duality.Component[]" id="498805840" length="4">
                <item dataType="Struct" type="Duality.Components.Transform" id="1437838686">
                  <active dataType="Bool">true</active>
                  <gameobj dataType="ObjectRef">3372491050</gameobj>
                </item>
                <item dataType="Struct" type="Duality.Components.Camera" id="3909766857">
                  <active dataType="Bool">true</active>
                  <gameobj dataType="ObjectRef">3372491050</gameobj>
                </item>
              </_items>
              <_size dataType="Int">2</_size>
            </compList>
            <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="1331853770" surrogate="true">
              <header />
              <body>
                <keys dataType="Array" type="System.Object[]" id="2077258348">
                  <item dataType="Type" id="1516102500" value="Duality.Components.Transform" />
                  <item dataType="Type" id="847596054" value="Duality.Components.Camera" />
                </keys>
                <values dataType="Array" type="System.Object[]" id="3952365622">
                  <item dataType="ObjectRef">1437838686</item>
                  <item dataType="ObjectRef">3909766857</item>
                </values>
              </body>
            </compMap>
            <compTransform dataType="ObjectRef">1437838686</compTransform>
            <identifier dataType="Struct" type="System.Guid" surrogate="true">
              <header>
                <data dataType="Array" type="System.Byte[]" id="3698420536">fm8Kpw6CeU62KuwdabVMLQ==</data>
              </header>
              <body />
            </identifier>
            <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
            <name dataType="String">GameCamera</name>
            <parent dataType="ObjectRef">888015757</parent>
            <prefabLink />
          </item>
          <item dataType="Struct" type="Duality.GameObject" id="165279837">
            <active dataType="Bool">true</active>
            <children />
            <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="2811606429">
              <_items dataType="Array" type="Duality.Component[]" id="2739798758" length="4">
                <item dataType="Struct" type="Duality.Components.Transform" id="2525594769">
                  <active dataType="Bool">true</active>
                  <gameobj dataType="ObjectRef">165279837</gameobj>
                </item>
                <item dataType="Struct" type="Duality.Components.Camera" id="702555644">
                  <active dataType="Bool">true</active>
                  <gameobj dataType="ObjectRef">165279837</gameobj>
                </item>
              </_items>
              <_size dataType="Int">2</_size>
            </compList>
            <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="4237538552" surrogate="true">
              <header />
              <body>
                <keys dataType="Array" type="System.Object[]" id="393026295">
                  <item dataType="ObjectRef">1516102500</item>
                  <item dataType="ObjectRef">847596054</item>
                </keys>
                <values dataType="Array" type="System.Object[]" id="2563667520">
                  <item dataType="ObjectRef">2525594769</item>
                  <item dataType="ObjectRef">702555644</item>
                </values>
              </body>
            </compMap>
            <compTransform dataType="ObjectRef">2525594769</compTransform>
            <identifier dataType="Struct" type="System.Guid" surrogate="true">
              <header>
                <data dataType="Array" type="System.Byte[]" id="1626068821">+bOo23FYhEuzqIqveBAtIA==</data>
              </header>
              <body />
            </identifier>
            <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
            <name dataType="String">ScreenCamera</name>
            <parent dataType="ObjectRef">888015757</parent>
            <prefabLink />
          </item>
          <item dataType="Struct" type="Duality.GameObject" id="168656554">
            <active dataType="Bool">true</active>
            <children />
            <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="1000622190">
              <_items dataType="Array" type="Duality.Component[]" id="2762798672" length="4">
                <item dataType="Struct" type="Duality.Components.Transform" id="2528971486">
                  <active dataType="Bool">true</active>
                  <gameobj dataType="ObjectRef">168656554</gameobj>
                </item>
                <item dataType="Struct" type="Duality.Components.Renderers.SpriteRenderer" id="1810823122">
                  <active dataType="Bool">true</active>
                  <gameobj dataType="ObjectRef">168656554</gameobj>
                </item>
              </_items>
              <_size dataType="Int">2</_size>
            </compList>
            <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="1230835658" surrogate="true">
              <header />
              <body>
                <keys dataType="Array" type="System.Object[]" id="3153903084">
                  <item dataType="ObjectRef">1516102500</item>
                  <item dataType="Type" id="3501527652" value="Duality.Components.Renderers.SpriteRenderer" />
                </keys>
                <values dataType="Array" type="System.Object[]" id="1490018102">
                  <item dataType="ObjectRef">2528971486</item>
                  <item dataType="ObjectRef">1810823122</item>
                </values>
              </body>
            </compMap>
            <compTransform dataType="ObjectRef">2528971486</compTransform>
            <identifier dataType="Struct" type="System.Guid" surrogate="true">
              <header>
                <data dataType="Array" type="System.Byte[]" id="4047007928">PjULAwaKBUuNxYNm0nIfkQ==</data>
              </header>
              <body />
            </identifier>
            <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
            <name dataType="String">ScreenRenderer</name>
            <parent dataType="ObjectRef">888015757</parent>
            <prefabLink />
          </item>
        </_items>
        <_size dataType="Int">3</_size>
      </children>
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="351588576">
        <_items dataType="Array" type="Duality.Component[]" id="4264933877" length="0" />
        <_size dataType="Int">0</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="1032046317" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="727794724" length="0" />
          <values dataType="Array" type="System.Object[]" id="3608930582" length="0" />
        </body>
      </compMap>
      <compTransform />
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="3535627808">2E3xPh9RB0aIYFv8F7VTUg==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">RENDERING</name>
      <parent />
      <prefabLink dataType="Struct" type="Duality.Resources.PrefabLink" id="341228662">
        <changes />
        <obj dataType="ObjectRef">888015757</obj>
        <prefab dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Prefab]]">
          <contentPath dataType="String">Data\Prefabs\RENDERING.Prefab.res</contentPath>
        </prefab>
      </prefabLink>
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="664818535">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="4150264901">
        <_items dataType="Array" type="Duality.Component[]" id="4027634902" length="4">
          <item dataType="Struct" type="LowResRoguelike.SceneLoader" id="1144249017">
            <_x003C_SceneAfter_x003E_k__BackingField dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Scene]]">
              <contentPath dataType="String">Data\Scenes\GameScene.Scene.res</contentPath>
            </_x003C_SceneAfter_x003E_k__BackingField>
            <_x003C_SwitchTime_x003E_k__BackingField dataType="Float">1</_x003C_SwitchTime_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">664818535</gameobj>
          </item>
        </_items>
        <_size dataType="Int">1</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="3566917672" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="1932497967">
            <item dataType="Type" id="3042588398" value="LowResRoguelike.SceneLoader" />
          </keys>
          <values dataType="Array" type="System.Object[]" id="2223314848">
            <item dataType="ObjectRef">1144249017</item>
          </values>
        </body>
      </compMap>
      <compTransform />
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="3688790205">mBJ6N9qsNEGVObxs3lJPyw==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">SceneLoader</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="4259548895">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="549614109">
        <_items dataType="Array" type="Duality.Component[]" id="640752870" length="4">
          <item dataType="Struct" type="Duality.Components.Transform" id="2324896531">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">4259548895</gameobj>
            <ignoreParent dataType="Bool">false</ignoreParent>
            <parentTransform />
            <pos dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">14</X>
              <Y dataType="Float">15</Y>
              <Z dataType="Float">0</Z>
            </pos>
            <posAbs dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">14</X>
              <Y dataType="Float">15</Y>
              <Z dataType="Float">0</Z>
            </posAbs>
            <scale dataType="Float">1</scale>
            <scaleAbs dataType="Float">1</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.TextRenderer" id="1707210421">
            <active dataType="Bool">true</active>
            <blockAlign dataType="Enum" type="Duality.Alignment" name="TopLeft" value="5" />
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customMat />
            <gameobj dataType="ObjectRef">4259548895</gameobj>
            <iconMat dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]" />
            <offset dataType="Int">0</offset>
            <text dataType="Struct" type="Duality.Drawing.FormattedText" id="2018772965">
              <flowAreas />
              <fonts dataType="Array" type="Duality.ContentRef`1[[Duality.Resources.Font]][]" id="3758364310">
                <item dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Font]]">
                  <contentPath dataType="String">Data\Fonts\PICO-8 mono upper.Font.res</contentPath>
                </item>
              </fonts>
              <icons />
              <lineAlign dataType="Enum" type="Duality.Alignment" name="Center" value="0" />
              <maxHeight dataType="Int">0</maxHeight>
              <maxWidth dataType="Int">0</maxWidth>
              <sourceText dataType="String">rogue4096</sourceText>
              <wrapMode dataType="Enum" type="Duality.Drawing.FormattedText+WrapMode" name="Word" value="1" />
            </text>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
          </item>
        </_items>
        <_size dataType="Int">2</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="1646983928" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="1902490999">
            <item dataType="ObjectRef">1516102500</item>
            <item dataType="Type" id="1175529358" value="Duality.Components.Renderers.TextRenderer" />
          </keys>
          <values dataType="Array" type="System.Object[]" id="2094516032">
            <item dataType="ObjectRef">2324896531</item>
            <item dataType="ObjectRef">1707210421</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">2324896531</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="2007664597">08zhhgKXvUKR2Oy4c88psQ==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">TextRenderer</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="3130629151">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="559951581">
        <_items dataType="Array" type="Duality.Component[]" id="3263873126" length="4">
          <item dataType="Struct" type="Duality.Components.Transform" id="1195976787">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">3130629151</gameobj>
            <ignoreParent dataType="Bool">false</ignoreParent>
            <parentTransform />
            <pos dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">24</X>
              <Y dataType="Float">25</Y>
              <Z dataType="Float">0</Z>
            </pos>
            <posAbs dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">24</X>
              <Y dataType="Float">25</Y>
              <Z dataType="Float">0</Z>
            </posAbs>
            <scale dataType="Float">1</scale>
            <scaleAbs dataType="Float">1</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.AnimSpriteRenderer" id="2838064532">
            <active dataType="Bool">true</active>
            <animDuration dataType="Float">5</animDuration>
            <animFirstFrame dataType="Int">0</animFirstFrame>
            <animFrameCount dataType="Int">1</animFrameCount>
            <animLoopMode dataType="Enum" type="Duality.Components.Renderers.AnimSpriteRenderer+LoopMode" name="Loop" value="1" />
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
            <gameobj dataType="ObjectRef">3130629151</gameobj>
            <offset dataType="Int">0</offset>
            <pixelGrid dataType="Bool">false</pixelGrid>
            <rect dataType="Struct" type="Duality.Rect">
              <H dataType="Float">16</H>
              <W dataType="Float">16</W>
              <X dataType="Float">0</X>
              <Y dataType="Float">0</Y>
            </rect>
            <rectMode dataType="Enum" type="Duality.Components.Renderers.SpriteRenderer+UVMode" name="Stretch" value="0" />
            <sharedMat dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Data\Spritesheet\spritesheet.Material.res</contentPath>
            </sharedMat>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
          </item>
        </_items>
        <_size dataType="Int">2</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="117373048" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="3391861687">
            <item dataType="ObjectRef">1516102500</item>
            <item dataType="Type" id="2193807758" value="Duality.Components.Renderers.AnimSpriteRenderer" />
          </keys>
          <values dataType="Array" type="System.Object[]" id="3790609728">
            <item dataType="ObjectRef">1195976787</item>
            <item dataType="ObjectRef">2838064532</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">1195976787</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="695326613">69vFllzKskeJYeYAwgldRg==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">AnimSpriteRenderer</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="ObjectRef">168656554</item>
    <item dataType="ObjectRef">165279837</item>
    <item dataType="ObjectRef">3372491050</item>
  </serializeObj>
  <visibilityStrategy dataType="Struct" type="Duality.Components.DefaultRendererVisibilityStrategy" id="2035693768" />
</root>
<!-- XmlFormatterBase Document Separator -->

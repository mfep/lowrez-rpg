<root dataType="Struct" type="Duality.Resources.Scene" id="129723834">
  <assetInfo />
  <globalGravity dataType="Struct" type="Duality.Vector2">
    <X dataType="Float">0</X>
    <Y dataType="Float">33</Y>
  </globalGravity>
  <serializeObj dataType="Array" type="Duality.GameObject[]" id="427169525">
    <item dataType="Struct" type="Duality.GameObject" id="1856152726">
      <active dataType="Bool">true</active>
      <children dataType="Struct" type="System.Collections.Generic.List`1[[Duality.GameObject]]" id="864019136">
        <_items dataType="Array" type="Duality.GameObject[]" id="1374139676" length="4">
          <item dataType="Struct" type="Duality.GameObject" id="518232333">
            <active dataType="Bool">true</active>
            <children />
            <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="1927447265">
              <_items dataType="Array" type="Duality.Component[]" id="1512696686" length="4">
                <item dataType="Struct" type="Duality.Components.Transform" id="2878547265">
                  <active dataType="Bool">true</active>
                  <gameobj dataType="ObjectRef">518232333</gameobj>
                </item>
                <item dataType="Struct" type="Duality.Components.Camera" id="1055508140">
                  <active dataType="Bool">true</active>
                  <gameobj dataType="ObjectRef">518232333</gameobj>
                </item>
              </_items>
              <_size dataType="Int">2</_size>
            </compList>
            <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="4048137760" surrogate="true">
              <header />
              <body>
                <keys dataType="Array" type="System.Object[]" id="2403648363">
                  <item dataType="Type" id="3046804598" value="Duality.Components.Transform" />
                  <item dataType="Type" id="532599066" value="Duality.Components.Camera" />
                </keys>
                <values dataType="Array" type="System.Object[]" id="7409352">
                  <item dataType="ObjectRef">2878547265</item>
                  <item dataType="ObjectRef">1055508140</item>
                </values>
              </body>
            </compMap>
            <compTransform dataType="ObjectRef">2878547265</compTransform>
            <identifier dataType="Struct" type="System.Guid" surrogate="true">
              <header>
                <data dataType="Array" type="System.Byte[]" id="771399777">8N2+Ul3I9kSbPoRSA6sECw==</data>
              </header>
              <body />
            </identifier>
            <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
            <name dataType="String">GameCamera</name>
            <parent dataType="ObjectRef">1856152726</parent>
            <prefabLink />
          </item>
          <item dataType="Struct" type="Duality.GameObject" id="3091276709">
            <active dataType="Bool">true</active>
            <children />
            <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="2022419465">
              <_items dataType="Array" type="Duality.Component[]" id="3868735118" length="4">
                <item dataType="Struct" type="Duality.Components.Transform" id="1156624345">
                  <active dataType="Bool">true</active>
                  <gameobj dataType="ObjectRef">3091276709</gameobj>
                </item>
                <item dataType="Struct" type="Duality.Components.Camera" id="3628552516">
                  <active dataType="Bool">true</active>
                  <gameobj dataType="ObjectRef">3091276709</gameobj>
                </item>
              </_items>
              <_size dataType="Int">2</_size>
            </compList>
            <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="3063272000" surrogate="true">
              <header />
              <body>
                <keys dataType="Array" type="System.Object[]" id="2414590659">
                  <item dataType="ObjectRef">3046804598</item>
                  <item dataType="ObjectRef">532599066</item>
                </keys>
                <values dataType="Array" type="System.Object[]" id="1272068280">
                  <item dataType="ObjectRef">1156624345</item>
                  <item dataType="ObjectRef">3628552516</item>
                </values>
              </body>
            </compMap>
            <compTransform dataType="ObjectRef">1156624345</compTransform>
            <identifier dataType="Struct" type="System.Guid" surrogate="true">
              <header>
                <data dataType="Array" type="System.Byte[]" id="299699433">0mFYhxmsfUK1K5PPE5B5Cg==</data>
              </header>
              <body />
            </identifier>
            <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
            <name dataType="String">ScreenCamera</name>
            <parent dataType="ObjectRef">1856152726</parent>
            <prefabLink />
          </item>
          <item dataType="Struct" type="Duality.GameObject" id="1237375646">
            <active dataType="Bool">true</active>
            <children />
            <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="806083590">
              <_items dataType="Array" type="Duality.Component[]" id="1472705920" length="4">
                <item dataType="Struct" type="Duality.Components.Transform" id="3597690578">
                  <active dataType="Bool">true</active>
                  <gameobj dataType="ObjectRef">1237375646</gameobj>
                </item>
                <item dataType="Struct" type="Duality.Components.Renderers.SpriteRenderer" id="2879542214">
                  <active dataType="Bool">true</active>
                  <gameobj dataType="ObjectRef">1237375646</gameobj>
                </item>
              </_items>
              <_size dataType="Int">2</_size>
            </compList>
            <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="1268484410" surrogate="true">
              <header />
              <body>
                <keys dataType="Array" type="System.Object[]" id="1459892084">
                  <item dataType="ObjectRef">3046804598</item>
                  <item dataType="Type" id="2322052516" value="Duality.Components.Renderers.SpriteRenderer" />
                </keys>
                <values dataType="Array" type="System.Object[]" id="4215400438">
                  <item dataType="ObjectRef">3597690578</item>
                  <item dataType="ObjectRef">2879542214</item>
                </values>
              </body>
            </compMap>
            <compTransform dataType="ObjectRef">3597690578</compTransform>
            <identifier dataType="Struct" type="System.Guid" surrogate="true">
              <header>
                <data dataType="Array" type="System.Byte[]" id="3800908624">oJ6p4mmbz0SriTChW/8L8Q==</data>
              </header>
              <body />
            </identifier>
            <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
            <name dataType="String">ScreenRenderer</name>
            <parent dataType="ObjectRef">1856152726</parent>
            <prefabLink />
          </item>
        </_items>
        <_size dataType="Int">3</_size>
      </children>
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="1271757390">
        <_items dataType="Array" type="Duality.Component[]" id="4143621906" length="0" />
        <_size dataType="Int">0</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="2694873692" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="3357440056" length="0" />
          <values dataType="Array" type="System.Object[]" id="3436485342" length="0" />
        </body>
      </compMap>
      <compTransform />
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="2017384036">MO+3GBVB+0uW2je+UhSqXQ==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">RENDERING</name>
      <parent />
      <prefabLink dataType="Struct" type="Duality.Resources.PrefabLink" id="456836178">
        <changes />
        <obj dataType="ObjectRef">1856152726</obj>
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
              <contentPath dataType="String">Data\Scenes\IntroScene (2).Scene.res</contentPath>
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
              <Y dataType="Float">10</Y>
              <Z dataType="Float">0</Z>
            </pos>
            <posAbs dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">14</X>
              <Y dataType="Float">10</Y>
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
              <B dataType="Byte">154</B>
              <G dataType="Byte">224</G>
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
              <sourceText dataType="String">made with</sourceText>
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
            <item dataType="ObjectRef">3046804598</item>
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
    <item dataType="Struct" type="Duality.GameObject" id="3817693832">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="4209290510">
        <_items dataType="Array" type="Duality.Component[]" id="91622864" length="4">
          <item dataType="Struct" type="Duality.Components.Transform" id="1883041468">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">3817693832</gameobj>
            <ignoreParent dataType="Bool">false</ignoreParent>
            <parentTransform />
            <pos dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">32</X>
              <Y dataType="Float">36</Y>
              <Z dataType="Float">0</Z>
            </pos>
            <posAbs dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">32</X>
              <Y dataType="Float">36</Y>
              <Z dataType="Float">0</Z>
            </posAbs>
            <scale dataType="Float">1</scale>
            <scaleAbs dataType="Float">1</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3" />
            <velAbs dataType="Struct" type="Duality.Vector3" />
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.SpriteRenderer" id="1164893104">
            <active dataType="Bool">true</active>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customMat />
            <flipMode dataType="Enum" type="Duality.Components.Renderers.SpriteRenderer+FlipMode" name="None" value="0" />
            <gameobj dataType="ObjectRef">3817693832</gameobj>
            <offset dataType="Int">0</offset>
            <pixelGrid dataType="Bool">false</pixelGrid>
            <rect dataType="Struct" type="Duality.Rect">
              <H dataType="Float">32</H>
              <W dataType="Float">32</W>
              <X dataType="Float">-16</X>
              <Y dataType="Float">-16</Y>
            </rect>
            <rectMode dataType="Enum" type="Duality.Components.Renderers.SpriteRenderer+UVMode" name="Stretch" value="0" />
            <sharedMat dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:DualityIcon</contentPath>
            </sharedMat>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
          </item>
        </_items>
        <_size dataType="Int">2</_size>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="593424714" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="963402956">
            <item dataType="ObjectRef">3046804598</item>
            <item dataType="ObjectRef">2322052516</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="3494749942">
            <item dataType="ObjectRef">1883041468</item>
            <item dataType="ObjectRef">1164893104</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">1883041468</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="206976728">CCZby9ZShkSNw3owxbyjBg==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">SpriteRenderer</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="ObjectRef">1237375646</item>
    <item dataType="ObjectRef">3091276709</item>
    <item dataType="ObjectRef">518232333</item>
  </serializeObj>
  <visibilityStrategy dataType="Struct" type="Duality.Components.DefaultRendererVisibilityStrategy" id="2035693768" />
</root>
<!-- XmlFormatterBase Document Separator -->

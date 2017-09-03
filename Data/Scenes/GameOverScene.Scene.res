<root dataType="Struct" type="Duality.Resources.Scene" id="129723834">
  <assetInfo />
  <globalGravity dataType="Struct" type="Duality.Vector2">
    <X dataType="Float">0</X>
    <Y dataType="Float">33</Y>
  </globalGravity>
  <serializeObj dataType="Array" type="Duality.GameObject[]" id="427169525">
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
                  <gameobj dataType="ObjectRef">3710758478</gameobj>
                </item>
                <item dataType="Struct" type="Duality.Components.Camera" id="4248034285">
                  <active dataType="Bool">true</active>
                  <gameobj dataType="ObjectRef">3710758478</gameobj>
                </item>
              </_items>
              <_size dataType="Int">2</_size>
            </compList>
            <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="1289394626" surrogate="true">
              <header />
              <body>
                <keys dataType="Array" type="System.Object[]" id="1813609760">
                  <item dataType="Type" id="1973372892" value="Duality.Components.Transform" />
                  <item dataType="Type" id="1435142422" value="Duality.Components.Camera" />
                </keys>
                <values dataType="Array" type="System.Object[]" id="3677200270">
                  <item dataType="ObjectRef">1776106114</item>
                  <item dataType="ObjectRef">4248034285</item>
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
                  <gameobj dataType="ObjectRef">2722289195</gameobj>
                </item>
                <item dataType="Struct" type="Duality.Components.Camera" id="3259565002">
                  <active dataType="Bool">true</active>
                  <gameobj dataType="ObjectRef">2722289195</gameobj>
                </item>
              </_items>
              <_size dataType="Int">2</_size>
            </compList>
            <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="2065650536" surrogate="true">
              <header />
              <body>
                <keys dataType="Array" type="System.Object[]" id="4254466353">
                  <item dataType="ObjectRef">1973372892</item>
                  <item dataType="ObjectRef">1435142422</item>
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
                  <gameobj dataType="ObjectRef">1022725794</gameobj>
                </item>
                <item dataType="Struct" type="Duality.Components.Renderers.SpriteRenderer" id="2664892362">
                  <active dataType="Bool">true</active>
                  <gameobj dataType="ObjectRef">1022725794</gameobj>
                </item>
              </_items>
              <_size dataType="Int">2</_size>
            </compList>
            <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="1419149530" surrogate="true">
              <header />
              <body>
                <keys dataType="Array" type="System.Object[]" id="2981333284">
                  <item dataType="ObjectRef">1973372892</item>
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
      <prefabLink dataType="Struct" type="Duality.Resources.PrefabLink" id="752268374">
        <changes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Resources.PrefabLink+VarMod]]" id="1527881567">
          <_items dataType="Array" type="Duality.Resources.PrefabLink+VarMod[]" id="2722994286" length="4">
            <item dataType="Struct" type="Duality.Resources.PrefabLink+VarMod">
              <childIndex dataType="Struct" type="System.Collections.Generic.List`1[[System.Int32]]" id="430620684">
                <_items dataType="Array" type="System.Int32[]" id="3227958436">2, 0, 0, 0</_items>
                <_size dataType="Int">1</_size>
              </childIndex>
              <componentType dataType="ObjectRef">806622916</componentType>
              <prop dataType="MemberInfo" id="3078925046" value="P:Duality.Components.Renderers.SpriteRenderer:AlignToPixelGrid" />
              <val dataType="Bool">true</val>
            </item>
          </_items>
          <_size dataType="Int">1</_size>
        </changes>
        <obj dataType="ObjectRef">1591489129</obj>
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
            <_x003C_SwitchTime_x003E_k__BackingField dataType="Float">2</_x003C_SwitchTime_x003E_k__BackingField>
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
              <Y dataType="Float">27</Y>
              <Z dataType="Float">0</Z>
            </pos>
            <posAbs dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">14</X>
              <Y dataType="Float">27</Y>
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
              <sourceText dataType="String">GAME OVER</sourceText>
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
            <item dataType="ObjectRef">1973372892</item>
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
    <item dataType="ObjectRef">3710758478</item>
    <item dataType="ObjectRef">2722289195</item>
    <item dataType="ObjectRef">1022725794</item>
  </serializeObj>
  <visibilityStrategy dataType="Struct" type="Duality.Components.DefaultRendererVisibilityStrategy" id="2035693768" />
</root>
<!-- XmlFormatterBase Document Separator -->

<root dataType="Struct" type="Duality.Resources.Prefab" id="129723834">
  <assetInfo dataType="Struct" type="Duality.Editor.AssetManagement.AssetInfo" id="427169525">
    <customData />
    <importerId />
    <sourceFileHint />
  </assetInfo>
  <objTree dataType="Struct" type="Duality.GameObject" id="1339327032">
    <active dataType="Bool">true</active>
    <children />
    <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="3903441583">
      <_items dataType="Array" type="Duality.Component[]" id="3680914414">
        <item dataType="Struct" type="Duality.Components.Transform" id="3699641964">
          <active dataType="Bool">true</active>
          <angle dataType="Float">0</angle>
          <angleAbs dataType="Float">0</angleAbs>
          <angleVel dataType="Float">0</angleVel>
          <angleVelAbs dataType="Float">0</angleVelAbs>
          <deriveAngle dataType="Bool">true</deriveAngle>
          <gameobj dataType="ObjectRef">1339327032</gameobj>
          <ignoreParent dataType="Bool">false</ignoreParent>
          <parentTransform />
          <pos dataType="Struct" type="Duality.Vector3" />
          <posAbs dataType="Struct" type="Duality.Vector3" />
          <scale dataType="Float">1</scale>
          <scaleAbs dataType="Float">1</scaleAbs>
          <vel dataType="Struct" type="Duality.Vector3" />
          <velAbs dataType="Struct" type="Duality.Vector3" />
        </item>
        <item dataType="Struct" type="Duality.Components.Renderers.SpriteRenderer" id="2981493600">
          <active dataType="Bool">false</active>
          <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
            <A dataType="Byte">255</A>
            <B dataType="Byte">51</B>
            <G dataType="Byte">119</G>
            <R dataType="Byte">72</R>
          </colorTint>
          <customMat />
          <flipMode dataType="Enum" type="Duality.Components.Renderers.SpriteRenderer+FlipMode" name="None" value="0" />
          <gameobj dataType="ObjectRef">1339327032</gameobj>
          <offset dataType="Int">-1</offset>
          <pixelGrid dataType="Bool">false</pixelGrid>
          <rect dataType="Struct" type="Duality.Rect">
            <H dataType="Float">4</H>
            <W dataType="Float">4</W>
            <X dataType="Float">0</X>
            <Y dataType="Float">0</Y>
          </rect>
          <rectMode dataType="Enum" type="Duality.Components.Renderers.SpriteRenderer+UVMode" name="Stretch" value="0" />
          <sharedMat dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
            <contentPath dataType="String">Default:Material:Checkerboard</contentPath>
          </sharedMat>
          <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
        </item>
        <item dataType="Struct" type="LowResRoguelike.DiscreteTransform" id="2617186020">
          <_x003C_Blocker_x003E_k__BackingField dataType="Bool">false</_x003C_Blocker_x003E_k__BackingField>
          <active dataType="Bool">true</active>
          <gameobj dataType="ObjectRef">1339327032</gameobj>
          <position dataType="Struct" type="Duality.Point2" />
        </item>
        <item dataType="Struct" type="LowResRoguelike.ItemSystem.HealthPotionPickup" id="3265763240">
          <_x003C_DisplayColor_x003E_k__BackingField dataType="Struct" type="Duality.Drawing.ColorRgba">
            <A dataType="Byte">255</A>
            <B dataType="Byte">77</B>
            <G dataType="Byte">0</G>
            <R dataType="Byte">255</R>
          </_x003C_DisplayColor_x003E_k__BackingField>
          <_x003C_HealthRestored_x003E_k__BackingField dataType="Int">5</_x003C_HealthRestored_x003E_k__BackingField>
          <active dataType="Bool">true</active>
          <gameobj dataType="ObjectRef">1339327032</gameobj>
        </item>
      </_items>
      <_size dataType="Int">4</_size>
    </compList>
    <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="2308463776" surrogate="true">
      <header />
      <body>
        <keys dataType="Array" type="System.Object[]" id="1959353733">
          <item dataType="Type" id="690254166" value="Duality.Components.Transform" />
          <item dataType="Type" id="1385038042" value="LowResRoguelike.DiscreteTransform" />
          <item dataType="Type" id="3615203702" value="LowResRoguelike.ItemSystem.HealthPotionPickup" />
          <item dataType="Type" id="550551162" value="Duality.Components.Renderers.SpriteRenderer" />
        </keys>
        <values dataType="Array" type="System.Object[]" id="1915230888">
          <item dataType="ObjectRef">3699641964</item>
          <item dataType="ObjectRef">2617186020</item>
          <item dataType="ObjectRef">3265763240</item>
          <item dataType="ObjectRef">2981493600</item>
        </values>
      </body>
    </compMap>
    <compTransform dataType="ObjectRef">3699641964</compTransform>
    <identifier dataType="Struct" type="System.Guid" surrogate="true">
      <header>
        <data dataType="Array" type="System.Byte[]" id="3744970383">OM26DG7l6E+jzKbTpedt6A==</data>
      </header>
      <body />
    </identifier>
    <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
    <name dataType="String">HealthPotionPickup</name>
    <parent />
    <prefabLink />
  </objTree>
</root>
<!-- XmlFormatterBase Document Separator -->

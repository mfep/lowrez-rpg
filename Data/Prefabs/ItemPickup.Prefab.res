<root dataType="Struct" type="Duality.Resources.Prefab" id="129723834">
  <assetInfo dataType="Struct" type="Duality.Editor.AssetManagement.AssetInfo" id="427169525">
    <customData />
    <importerId />
    <sourceFileHint />
  </assetInfo>
  <objTree dataType="Struct" type="Duality.GameObject" id="1369978599">
    <active dataType="Bool">true</active>
    <children />
    <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="717439820">
      <_items dataType="Array" type="Duality.Component[]" id="2710764964" length="8">
        <item dataType="Struct" type="Duality.Components.Transform" id="3730293531">
          <active dataType="Bool">true</active>
          <angle dataType="Float">0</angle>
          <angleAbs dataType="Float">0</angleAbs>
          <angleVel dataType="Float">0</angleVel>
          <angleVelAbs dataType="Float">0</angleVelAbs>
          <deriveAngle dataType="Bool">true</deriveAngle>
          <gameobj dataType="ObjectRef">1369978599</gameobj>
          <ignoreParent dataType="Bool">false</ignoreParent>
          <parentTransform />
          <pos dataType="Struct" type="Duality.Vector3" />
          <posAbs dataType="Struct" type="Duality.Vector3" />
          <scale dataType="Float">1</scale>
          <scaleAbs dataType="Float">1</scaleAbs>
          <vel dataType="Struct" type="Duality.Vector3" />
          <velAbs dataType="Struct" type="Duality.Vector3" />
        </item>
        <item dataType="Struct" type="Duality.Components.Renderers.AnimSpriteRenderer" id="1077413980">
          <active dataType="Bool">false</active>
          <animDuration dataType="Float">5</animDuration>
          <animFirstFrame dataType="Int">3</animFirstFrame>
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
          <gameobj dataType="ObjectRef">1369978599</gameobj>
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
            <contentPath dataType="String">Data\Spritesheet\spritesheet.Material.res</contentPath>
          </sharedMat>
          <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
        </item>
        <item dataType="Struct" type="LowResRoguelike.DiscreteTransform" id="2647837587">
          <_x003C_Blocker_x003E_k__BackingField dataType="Bool">false</_x003C_Blocker_x003E_k__BackingField>
          <active dataType="Bool">true</active>
          <gameobj dataType="ObjectRef">1369978599</gameobj>
          <position dataType="Struct" type="Duality.Point2" />
        </item>
        <item dataType="Struct" type="LowResRoguelike.ItemSystem.ItemPickup" id="2180884725">
          <_x003C_DisplayColor_x003E_k__BackingField dataType="Struct" type="Duality.Drawing.ColorRgba">
            <A dataType="Byte">255</A>
            <B dataType="Byte">255</B>
            <G dataType="Byte">255</G>
            <R dataType="Byte">255</R>
          </_x003C_DisplayColor_x003E_k__BackingField>
          <_x003C_DisplayText2_x003E_k__BackingField />
          <_x003C_Item_x003E_k__BackingField />
          <active dataType="Bool">true</active>
          <gameobj dataType="ObjectRef">1369978599</gameobj>
        </item>
        <item dataType="Struct" type="LowResRoguelike.VisibilityController" id="3487542170">
          <_x003C_RemainsSeen_x003E_k__BackingField dataType="Bool">true</_x003C_RemainsSeen_x003E_k__BackingField>
          <active dataType="Bool">true</active>
          <gameobj dataType="ObjectRef">1369978599</gameobj>
        </item>
      </_items>
      <_size dataType="Int">5</_size>
    </compList>
    <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="1693732854" surrogate="true">
      <header />
      <body>
        <keys dataType="Array" type="System.Object[]" id="2404909766">
          <item dataType="Type" id="1469358336" value="Duality.Components.Transform" />
          <item dataType="Type" id="3905632718" value="LowResRoguelike.DiscreteTransform" />
          <item dataType="Type" id="15578012" value="LowResRoguelike.ItemSystem.ItemPickup" />
          <item dataType="Type" id="2193160914" value="Duality.Components.Renderers.AnimSpriteRenderer" />
          <item dataType="Type" id="1658464184" value="LowResRoguelike.VisibilityController" />
        </keys>
        <values dataType="Array" type="System.Object[]" id="2591692474">
          <item dataType="ObjectRef">3730293531</item>
          <item dataType="ObjectRef">2647837587</item>
          <item dataType="ObjectRef">2180884725</item>
          <item dataType="ObjectRef">1077413980</item>
          <item dataType="ObjectRef">3487542170</item>
        </values>
      </body>
    </compMap>
    <compTransform dataType="ObjectRef">3730293531</compTransform>
    <identifier dataType="Struct" type="System.Guid" surrogate="true">
      <header>
        <data dataType="Array" type="System.Byte[]" id="2636119494">HXx5wdEuEkqUr76Zbf5v6A==</data>
      </header>
      <body />
    </identifier>
    <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
    <name dataType="String">ItemPickup</name>
    <parent />
    <prefabLink />
  </objTree>
</root>
<!-- XmlFormatterBase Document Separator -->

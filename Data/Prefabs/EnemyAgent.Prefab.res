<root dataType="Struct" type="Duality.Resources.Prefab" id="129723834">
  <assetInfo dataType="Struct" type="Duality.Editor.AssetManagement.AssetInfo" id="427169525">
    <customData />
    <importerId />
    <sourceFileHint />
  </assetInfo>
  <objTree dataType="Struct" type="Duality.GameObject" id="313610575">
    <active dataType="Bool">true</active>
    <children />
    <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="1081506804">
      <_items dataType="Array" type="Duality.Component[]" id="4238650532" length="8">
        <item dataType="Struct" type="Duality.Components.Transform" id="2673925507">
          <active dataType="Bool">true</active>
          <angle dataType="Float">0</angle>
          <angleAbs dataType="Float">0</angleAbs>
          <angleVel dataType="Float">0</angleVel>
          <angleVelAbs dataType="Float">0</angleVelAbs>
          <deriveAngle dataType="Bool">true</deriveAngle>
          <gameobj dataType="ObjectRef">313610575</gameobj>
          <ignoreParent dataType="Bool">false</ignoreParent>
          <parentTransform />
          <pos dataType="Struct" type="Duality.Vector3">
            <X dataType="Float">4</X>
            <Y dataType="Float">0</Y>
            <Z dataType="Float">0</Z>
          </pos>
          <posAbs dataType="Struct" type="Duality.Vector3">
            <X dataType="Float">4</X>
            <Y dataType="Float">0</Y>
            <Z dataType="Float">0</Z>
          </posAbs>
          <scale dataType="Float">1</scale>
          <scaleAbs dataType="Float">1</scaleAbs>
          <vel dataType="Struct" type="Duality.Vector3" />
          <velAbs dataType="Struct" type="Duality.Vector3" />
        </item>
        <item dataType="Struct" type="Duality.Components.Renderers.SpriteRenderer" id="1955777143">
          <active dataType="Bool">false</active>
          <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
            <A dataType="Byte">255</A>
            <B dataType="Byte">255</B>
            <G dataType="Byte">127</G>
            <R dataType="Byte">11</R>
          </colorTint>
          <customMat />
          <flipMode dataType="Enum" type="Duality.Components.Renderers.SpriteRenderer+FlipMode" name="None" value="0" />
          <gameobj dataType="ObjectRef">313610575</gameobj>
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
            <contentPath dataType="String">Default:Material:SolidWhite</contentPath>
          </sharedMat>
          <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
        </item>
        <item dataType="Struct" type="LowResRoguelike.CombatStats" id="2002491185">
          <_x003C_Attack_x003E_k__BackingField dataType="Int">5</_x003C_Attack_x003E_k__BackingField>
          <_x003C_Damage_x003E_k__BackingField dataType="Int">7</_x003C_Damage_x003E_k__BackingField>
          <_x003C_DamageReduction_x003E_k__BackingField dataType="Int">2</_x003C_DamageReduction_x003E_k__BackingField>
          <_x003C_Defense_x003E_k__BackingField dataType="Int">7</_x003C_Defense_x003E_k__BackingField>
          <_x003C_MaxHealth_x003E_k__BackingField dataType="Int">10</_x003C_MaxHealth_x003E_k__BackingField>
          <active dataType="Bool">true</active>
          <gameobj dataType="ObjectRef">313610575</gameobj>
        </item>
        <item dataType="Struct" type="LowResRoguelike.DiscreteTransform" id="1591469563">
          <active dataType="Bool">true</active>
          <gameobj dataType="ObjectRef">313610575</gameobj>
          <position dataType="Struct" type="Duality.Point2">
            <X dataType="Int">1</X>
            <Y dataType="Int">0</Y>
          </position>
        </item>
        <item dataType="Struct" type="LowResRoguelike.EnemyAgent" id="1083998481">
          <_x003C_Damage_x003E_k__BackingField dataType="Int">0</_x003C_Damage_x003E_k__BackingField>
          <_x003C_WatchDistanceSqr_x003E_k__BackingField dataType="Int">10000</_x003C_WatchDistanceSqr_x003E_k__BackingField>
          <active dataType="Bool">true</active>
          <gameobj dataType="ObjectRef">313610575</gameobj>
        </item>
      </_items>
      <_size dataType="Int">5</_size>
    </compList>
    <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="3661331190" surrogate="true">
      <header />
      <body>
        <keys dataType="Array" type="System.Object[]" id="801623006">
          <item dataType="Type" id="723640592" value="Duality.Components.Transform" />
          <item dataType="Type" id="2874130670" value="LowResRoguelike.DiscreteTransform" />
          <item dataType="Type" id="2729374188" value="LowResRoguelike.EnemyAgent" />
          <item dataType="Type" id="392245778" value="Duality.Components.Renderers.SpriteRenderer" />
          <item dataType="Type" id="2606491336" value="LowResRoguelike.CombatStats" />
        </keys>
        <values dataType="Array" type="System.Object[]" id="2494621962">
          <item dataType="ObjectRef">2673925507</item>
          <item dataType="ObjectRef">1591469563</item>
          <item dataType="ObjectRef">1083998481</item>
          <item dataType="ObjectRef">1955777143</item>
          <item dataType="ObjectRef">2002491185</item>
        </values>
      </body>
    </compMap>
    <compTransform dataType="ObjectRef">2673925507</compTransform>
    <identifier dataType="Struct" type="System.Guid" surrogate="true">
      <header>
        <data dataType="Array" type="System.Byte[]" id="2339024942">oRrjEVIdg0u2lh5sp8GebQ==</data>
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

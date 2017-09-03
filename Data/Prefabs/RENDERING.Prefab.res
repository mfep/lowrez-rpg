<root dataType="Struct" type="Duality.Resources.Prefab" id="129723834">
  <assetInfo dataType="Struct" type="Duality.Editor.AssetManagement.AssetInfo" id="427169525">
    <customData />
    <importerId />
    <sourceFileHint />
  </assetInfo>
  <objTree dataType="Struct" type="Duality.GameObject" id="917533743">
    <active dataType="Bool">true</active>
    <children dataType="Struct" type="System.Collections.Generic.List`1[[Duality.GameObject]]" id="1345650516">
      <_items dataType="Array" type="Duality.GameObject[]" id="3388687076" length="4">
        <item dataType="Struct" type="Duality.GameObject" id="1339701857">
          <active dataType="Bool">true</active>
          <children />
          <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="2198840893">
            <_items dataType="Array" type="Duality.Component[]" id="3890762790" length="4">
              <item dataType="Struct" type="Duality.Components.Transform" id="3700016789">
                <active dataType="Bool">true</active>
                <angle dataType="Float">0</angle>
                <angleAbs dataType="Float">0</angleAbs>
                <angleVel dataType="Float">0</angleVel>
                <angleVelAbs dataType="Float">0</angleVelAbs>
                <deriveAngle dataType="Bool">true</deriveAngle>
                <gameobj dataType="ObjectRef">1339701857</gameobj>
                <ignoreParent dataType="Bool">false</ignoreParent>
                <parentTransform />
                <pos dataType="Struct" type="Duality.Vector3">
                  <X dataType="Float">32</X>
                  <Y dataType="Float">32</Y>
                  <Z dataType="Float">-500</Z>
                </pos>
                <posAbs dataType="Struct" type="Duality.Vector3">
                  <X dataType="Float">32</X>
                  <Y dataType="Float">32</Y>
                  <Z dataType="Float">-500</Z>
                </posAbs>
                <scale dataType="Float">1</scale>
                <scaleAbs dataType="Float">1</scaleAbs>
                <vel dataType="Struct" type="Duality.Vector3" />
                <velAbs dataType="Struct" type="Duality.Vector3" />
              </item>
              <item dataType="Struct" type="Duality.Components.Camera" id="1876977664">
                <active dataType="Bool">true</active>
                <farZ dataType="Float">10000</farZ>
                <focusDist dataType="Float">500</focusDist>
                <gameobj dataType="ObjectRef">1339701857</gameobj>
                <nearZ dataType="Float">0</nearZ>
                <passes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Camera+Pass]]" id="3010402204">
                  <_items dataType="Array" type="Duality.Components.Camera+Pass[]" id="1763166660" length="4">
                    <item dataType="Struct" type="Duality.Components.Camera+Pass" id="2460637508">
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
                    <item dataType="Struct" type="Duality.Components.Camera+Pass" id="1249985174">
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
                <priority dataType="Int">0</priority>
                <visibilityMask dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0, Group1, Group2, Group3, Group4, Group5, Group6, Group7, Group8, Group9, Group10, Group11, Group12, Group13, Group14, Group15, Group16, Group17, Group18, Group19, Group20, Group21, Group22, Group23, Group24, Group25, Group26, Group27, Group28, Group29, AllFlags" value="3221225471" />
              </item>
            </_items>
            <_size dataType="Int">2</_size>
          </compList>
          <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="1117152952" surrogate="true">
            <header />
            <body>
              <keys dataType="Array" type="System.Object[]" id="4205125463">
                <item dataType="Type" id="3631459342" value="Duality.Components.Transform" />
                <item dataType="Type" id="3315565386" value="Duality.Components.Camera" />
              </keys>
              <values dataType="Array" type="System.Object[]" id="2181007808">
                <item dataType="ObjectRef">3700016789</item>
                <item dataType="ObjectRef">1876977664</item>
              </values>
            </body>
          </compMap>
          <compTransform dataType="ObjectRef">3700016789</compTransform>
          <identifier dataType="Struct" type="System.Guid" surrogate="true">
            <header>
              <data dataType="Array" type="System.Byte[]" id="1837872501">tH8ul/TGOEWklx5fHxXU7Q==</data>
            </header>
            <body />
          </identifier>
          <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
          <name dataType="String">GameCamera</name>
          <parent dataType="ObjectRef">917533743</parent>
          <prefabLink />
        </item>
        <item dataType="Struct" type="Duality.GameObject" id="1906124832">
          <active dataType="Bool">true</active>
          <children />
          <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="3148038056">
            <_items dataType="Array" type="Duality.Component[]" id="1760752300" length="4">
              <item dataType="Struct" type="Duality.Components.Transform" id="4266439764">
                <active dataType="Bool">true</active>
                <angle dataType="Float">0</angle>
                <angleAbs dataType="Float">0</angleAbs>
                <angleVel dataType="Float">0</angleVel>
                <angleVelAbs dataType="Float">0</angleVelAbs>
                <deriveAngle dataType="Bool">true</deriveAngle>
                <gameobj dataType="ObjectRef">1906124832</gameobj>
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
              <item dataType="Struct" type="Duality.Components.Camera" id="2443400639">
                <active dataType="Bool">true</active>
                <farZ dataType="Float">10000</farZ>
                <focusDist dataType="Float">500</focusDist>
                <gameobj dataType="ObjectRef">1906124832</gameobj>
                <nearZ dataType="Float">0</nearZ>
                <passes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Camera+Pass]]" id="583985475">
                  <_items dataType="Array" type="Duality.Components.Camera+Pass[]" id="3374949926" length="4">
                    <item dataType="Struct" type="Duality.Components.Camera+Pass" id="2104193280">
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
                <priority dataType="Int">0</priority>
                <visibilityMask dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group30" value="1073741824" />
              </item>
            </_items>
            <_size dataType="Int">2</_size>
          </compList>
          <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="2548429726" surrogate="true">
            <header />
            <body>
              <keys dataType="Array" type="System.Object[]" id="3390422122">
                <item dataType="ObjectRef">3631459342</item>
                <item dataType="ObjectRef">3315565386</item>
              </keys>
              <values dataType="Array" type="System.Object[]" id="89106138">
                <item dataType="ObjectRef">4266439764</item>
                <item dataType="ObjectRef">2443400639</item>
              </values>
            </body>
          </compMap>
          <compTransform dataType="ObjectRef">4266439764</compTransform>
          <identifier dataType="Struct" type="System.Guid" surrogate="true">
            <header>
              <data dataType="Array" type="System.Byte[]" id="3695202250">BGsFHZjD0UO1w696H6wt9Q==</data>
            </header>
            <body />
          </identifier>
          <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
          <name dataType="String">ScreenCamera</name>
          <parent dataType="ObjectRef">917533743</parent>
          <prefabLink />
        </item>
        <item dataType="Struct" type="Duality.GameObject" id="255253133">
          <active dataType="Bool">true</active>
          <children />
          <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="561016161">
            <_items dataType="Array" type="Duality.Component[]" id="966376302" length="4">
              <item dataType="Struct" type="Duality.Components.Transform" id="2615568065">
                <active dataType="Bool">true</active>
                <angle dataType="Float">0</angle>
                <angleAbs dataType="Float">0</angleAbs>
                <angleVel dataType="Float">0</angleVel>
                <angleVelAbs dataType="Float">0</angleVelAbs>
                <deriveAngle dataType="Bool">true</deriveAngle>
                <gameobj dataType="ObjectRef">255253133</gameobj>
                <ignoreParent dataType="Bool">false</ignoreParent>
                <parentTransform />
                <pos dataType="Struct" type="Duality.Vector3" />
                <posAbs dataType="Struct" type="Duality.Vector3" />
                <scale dataType="Float">1</scale>
                <scaleAbs dataType="Float">1</scaleAbs>
                <vel dataType="Struct" type="Duality.Vector3" />
                <velAbs dataType="Struct" type="Duality.Vector3" />
              </item>
              <item dataType="Struct" type="Duality.Components.Renderers.SpriteRenderer" id="1897419701">
                <active dataType="Bool">true</active>
                <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
                  <A dataType="Byte">255</A>
                  <B dataType="Byte">255</B>
                  <G dataType="Byte">255</G>
                  <R dataType="Byte">255</R>
                </colorTint>
                <customMat />
                <flipMode dataType="Enum" type="Duality.Components.Renderers.SpriteRenderer+FlipMode" name="None" value="0" />
                <gameobj dataType="ObjectRef">255253133</gameobj>
                <offset dataType="Int">0</offset>
                <pixelGrid dataType="Bool">true</pixelGrid>
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
          <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="3042893344" surrogate="true">
            <header />
            <body>
              <keys dataType="Array" type="System.Object[]" id="121643755">
                <item dataType="ObjectRef">3631459342</item>
                <item dataType="Type" id="3902161014" value="Duality.Components.Renderers.SpriteRenderer" />
              </keys>
              <values dataType="Array" type="System.Object[]" id="1975202504">
                <item dataType="ObjectRef">2615568065</item>
                <item dataType="ObjectRef">1897419701</item>
              </values>
            </body>
          </compMap>
          <compTransform dataType="ObjectRef">2615568065</compTransform>
          <identifier dataType="Struct" type="System.Guid" surrogate="true">
            <header>
              <data dataType="Array" type="System.Byte[]" id="1134770657">LJ2B6reL1Eeqmm6/V2LTdQ==</data>
            </header>
            <body />
          </identifier>
          <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
          <name dataType="String">ScreenRenderer</name>
          <parent dataType="ObjectRef">917533743</parent>
          <prefabLink />
        </item>
      </_items>
      <_size dataType="Int">3</_size>
    </children>
    <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="4167925174">
      <_items dataType="Array" type="Duality.Component[]" id="690233598" length="0" />
      <_size dataType="Int">0</_size>
    </compList>
    <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="902831216" surrogate="true">
      <header />
      <body>
        <keys dataType="Array" type="System.Object[]" id="3523915976" length="0" />
        <values dataType="Array" type="System.Object[]" id="3438133982" length="0" />
      </body>
    </compMap>
    <compTransform />
    <identifier dataType="Struct" type="System.Guid" surrogate="true">
      <header>
        <data dataType="Array" type="System.Byte[]" id="1285272884">6jxOFP5zgEisuFF9H45IRQ==</data>
      </header>
      <body />
    </identifier>
    <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
    <name dataType="String">RENDERING</name>
    <parent />
    <prefabLink />
  </objTree>
</root>
<!-- XmlFormatterBase Document Separator -->

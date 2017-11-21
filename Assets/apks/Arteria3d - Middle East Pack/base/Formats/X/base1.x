xof 0303txt 0032

// DirectX 9.0 file
// Creator: Ultimate Unwrap3D Pro v3.32
// Website: http://www.unwrap3d.com
// Time: Mon Sep 05 16:56:36 2011

// Start of Templates

template VertexDuplicationIndices {
 <b8d65549-d7c9-4995-89cf-53a9a8b031e3>
 DWORD nIndices;
 DWORD nOriginalVertices;
 array DWORD indices[nIndices];
}

template FVFData {
 <b6e70a0e-8ef9-4e83-94ad-ecc8b0c04897>
 DWORD dwFVF;
 DWORD nDWords;
 array DWORD data[nDWords];
}

template Header {
 <3D82AB43-62DA-11cf-AB39-0020AF71E433>
 WORD major;
 WORD minor;
 DWORD flags;
}

template Vector {
 <3D82AB5E-62DA-11cf-AB39-0020AF71E433>
 FLOAT x;
 FLOAT y;
 FLOAT z;
}

template Coords2d {
 <F6F23F44-7686-11cf-8F52-0040333594A3>
 FLOAT u;
 FLOAT v;
}

template Matrix4x4 {
 <F6F23F45-7686-11cf-8F52-0040333594A3>
 array FLOAT matrix[16];
}

template ColorRGBA {
 <35FF44E0-6C7C-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
 FLOAT alpha;
}

template ColorRGB {
 <D3E16E81-7835-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
}

template IndexedColor {
 <1630B820-7842-11cf-8F52-0040333594A3>
 DWORD index;
 ColorRGBA indexColor;
}

template Material {
 <3D82AB4D-62DA-11cf-AB39-0020AF71E433>
 ColorRGBA faceColor;
 FLOAT power;
 ColorRGB specularColor;
 ColorRGB emissiveColor;
 [...]
}

template TextureFilename {
 <A42790E1-7810-11cf-8F52-0040333594A3>
 STRING filename;
}

template MeshFace {
 <3D82AB5F-62DA-11cf-AB39-0020AF71E433>
 DWORD nFaceVertexIndices;
 array DWORD faceVertexIndices[nFaceVertexIndices];
}

template MeshTextureCoords {
 <F6F23F40-7686-11cf-8F52-0040333594A3>
 DWORD nTextureCoords;
 array Coords2d textureCoords[nTextureCoords];
}

template MeshMaterialList {
 <F6F23F42-7686-11cf-8F52-0040333594A3>
 DWORD nMaterials;
 DWORD nFaceIndexes;
 array DWORD faceIndexes[nFaceIndexes];
 [Material]
}

template MeshNormals {
 <F6F23F43-7686-11cf-8F52-0040333594A3>
 DWORD nNormals;
 array Vector normals[nNormals];
 DWORD nFaceNormals;
 array MeshFace faceNormals[nFaceNormals];
}

template MeshVertexColors {
 <1630B821-7842-11cf-8F52-0040333594A3>
 DWORD nVertexColors;
 array IndexedColor vertexColors[nVertexColors];
}

template Mesh {
 <3D82AB44-62DA-11cf-AB39-0020AF71E433>
 DWORD nVertices;
 array Vector vertices[nVertices];
 DWORD nFaces;
 array MeshFace faces[nFaces];
 [...]
}

template FrameTransformMatrix {
 <F6F23F41-7686-11cf-8F52-0040333594A3>
 Matrix4x4 frameMatrix;
}

template Frame {
 <3D82AB46-62DA-11cf-AB39-0020AF71E433>
 [...]
}

template FloatKeys {
 <10DD46A9-775B-11cf-8F52-0040333594A3>
 DWORD nValues;
 array FLOAT values[nValues];
}

template TimedFloatKeys {
 <F406B180-7B3B-11cf-8F52-0040333594A3>
 DWORD time;
 FloatKeys tfkeys;
}

template AnimationKey {
 <10DD46A8-775B-11cf-8F52-0040333594A3>
 DWORD keyType;
 DWORD nKeys;
 array TimedFloatKeys keys[nKeys];
}

template AnimationOptions {
 <E2BF56C0-840F-11cf-8F52-0040333594A3>
 DWORD openclosed;
 DWORD positionquality;
}

template Animation {
 <3D82AB4F-62DA-11cf-AB39-0020AF71E433>
 [...]
}

template AnimationSet {
 <3D82AB50-62DA-11cf-AB39-0020AF71E433>
 [Animation]
}

template XSkinMeshHeader {
 <3CF169CE-FF7C-44ab-93C0-F78F62D172E2>
 WORD nMaxSkinWeightsPerVertex;
 WORD nMaxSkinWeightsPerFace;
 WORD nBones;
}

template SkinWeights {
 <6F0D123B-BAD2-4167-A0D0-80224F25FABB>
 STRING transformNodeName;
 DWORD nWeights;
 array DWORD vertexIndices[nWeights];
 array FLOAT weights[nWeights];
 Matrix4x4 matrixOffset;
}

template AnimTicksPerSecond {
 <9E415A43-7BA6-4a73-8743-B73D47E88476>
 DWORD AnimTicksPerSecond;
}

AnimTicksPerSecond {
 4800;
}

// Start of Frames

Frame Body {
   FrameTransformMatrix {
    1.000000, 0.000000, 0.000000, 0.000000,
    0.000000, 1.000000, 0.000000, 0.000000,
    0.000000, 0.000000, 1.000000, 0.000000,
    0.000000, 0.000000, 0.000000, 1.000000;;
   }

   Mesh staticMesh {
    66;
    -210.304932; 6.691902; -90.895996;,
    -210.304932; 0.000000; -90.895996;,
    -210.304932; 6.691902; 474.949951;,
    -210.304932; 0.000000; 474.949951;,
    -210.304932; 6.691902; -469.908997;,
    -210.304932; 0.000000; -469.908997;,
    117.105103; 6.691902; -474.950012;,
    117.105103; 0.000000; -474.950012;,
    -200.394897; 6.691902; -470.061005;,
    -210.304932; 0.000000; -469.908997;,
    -210.304932; 6.691902; -469.908997;,
    117.105103; 13.745903; -474.950012;,
    -200.394897; 13.745903; -470.061005;,
    -200.394897; 13.745903; -90.973022;,
    -200.394897; 6.691902; -90.973022;,
    -200.394897; 13.745903; 474.949951;,
    -200.394897; 6.691902; 474.949951;,
    -200.394897; 13.745903; -470.061005;,
    -200.394897; 6.691902; -470.061005;,
    200.765015; 13.745903; 474.910034;,
    200.765015; 6.691902; 474.910034;,
    200.745117; 13.745903; -91.400024;,
    200.745117; 6.691902; -91.400024;,
    200.755127; 13.745903; -470.600006;,
    200.755127; 6.691902; -470.600006;,
    210.305054; 6.691902; 474.920044;,
    210.305054; 0.000000; 474.920044;,
    210.305054; 6.691902; -91.164978;,
    210.305054; 0.000000; -91.164978;,
    210.305054; 6.691902; -470.103027;,
    210.305054; 0.000000; -471.919983;,
    200.755127; 13.745903; -470.600006;,
    200.755127; 6.691902; -470.600006;,
    210.305054; 6.691902; -470.103027;,
    200.915039; 0.000000; -471.919983;,
    210.305054; 0.000000; -471.919983;,
    -200.394897; 6.691902; 474.949951;,
    -210.304932; 6.691902; 474.949951;,
    -200.374878; 0.000000; 474.949951;,
    -210.304932; 0.000000; 474.949951;,
    117.105103; 13.745903; 474.839966;,
    -200.394897; 13.745903; 474.949951;,
    114.075073; 6.691902; 474.949951;,
    114.105103; 0.000000; 474.949951;,
    200.765015; 13.745903; 474.910034;,
    200.765015; 6.691902; 474.910034;,
    199.625122; 0.000000; 474.949951;,
    210.305054; 6.691902; 474.920044;,
    210.305054; 0.000000; 474.920044;,
    -139.424927; 13.745903; -91.448975;,
    -139.424927; 13.745903; 416.290039;,
    117.105103; 13.745903; 409.699951;,
    117.105103; 13.745903; 474.839966;,
    -139.424927; 13.745903; -410.020020;,
    117.105103; 13.745903; -474.950012;,
    117.105103; 13.745903; -413.976990;,
    139.785034; 13.745903; 411.020020;,
    139.795044; 13.745903; -92.895020;,
    117.105103; 13.745903; -93.452026;,
    139.785034; 13.745903; -412.715027;,
    -139.424927; 13.745903; 416.290039;,
    117.105103; 13.745903; 409.699951;,
    -139.424927; 13.745903; -91.448975;,
    117.105103; 13.745903; -93.452026;,
    -139.424927; 13.745903; -410.020020;,
    117.105103; 13.745903; -413.976990;;
    71;
    3;0, 1, 2;,
    3;1, 3, 2;,
    3;4, 5, 0;,
    3;5, 1, 0;,
    3;6, 7, 8;,
    3;7, 9, 8;,
    3;8, 9, 10;,
    3;11, 6, 12;,
    3;6, 8, 12;,
    3;13, 14, 15;,
    3;14, 16, 15;,
    3;17, 18, 13;,
    3;18, 14, 13;,
    3;19, 20, 21;,
    3;20, 22, 21;,
    3;21, 22, 23;,
    3;22, 24, 23;,
    3;25, 26, 27;,
    3;26, 28, 27;,
    3;27, 28, 29;,
    3;28, 30, 29;,
    3;0, 2, 14;,
    3;2, 16, 14;,
    3;4, 0, 18;,
    3;0, 14, 18;,
    3;20, 25, 22;,
    3;25, 27, 22;,
    3;22, 27, 24;,
    3;27, 29, 24;,
    3;31, 32, 11;,
    3;32, 6, 11;,
    3;32, 33, 34;,
    3;33, 35, 34;,
    3;6, 32, 7;,
    3;32, 34, 7;,
    3;36, 37, 38;,
    3;37, 39, 38;,
    3;40, 41, 42;,
    3;41, 36, 42;,
    3;42, 36, 43;,
    3;36, 38, 43;,
    3;44, 40, 45;,
    3;40, 42, 45;,
    3;45, 42, 46;,
    3;42, 43, 46;,
    3;47, 45, 48;,
    3;45, 46, 48;,
    3;13, 15, 49;,
    3;15, 50, 49;,
    3;50, 15, 51;,
    3;15, 52, 51;,
    3;17, 13, 53;,
    3;13, 49, 53;,
    3;17, 53, 54;,
    3;53, 55, 54;,
    3;56, 57, 51;,
    3;57, 58, 51;,
    3;19, 21, 56;,
    3;21, 57, 56;,
    3;19, 56, 52;,
    3;56, 51, 52;,
    3;59, 55, 57;,
    3;55, 58, 57;,
    3;21, 23, 57;,
    3;23, 59, 57;,
    3;59, 23, 55;,
    3;23, 54, 55;,
    3;60, 61, 62;,
    3;61, 63, 62;,
    3;64, 62, 65;,
    3;62, 63, 65;;

   MeshNormals {
    66;
    -0.707107; 0.707107; 0.000000;,
    -1.000000; 0.000000; 0.000000;,
    -0.577350; 0.577350; 0.577350;,
    -0.707107; 0.000000; 0.707107;,
    -0.583253; 0.574410; -0.574342;,
    -0.712529; 0.000000; -0.701643;,
    0.018096; 0.048813; -0.998644;,
    0.017869; 0.097743; -0.995051;,
    -0.418676; 0.406169; -0.812242;,
    -0.712529; 0.000000; -0.701643;,
    -0.583253; 0.574410; -0.574342;,
    0.012921; 0.707307; -0.706788;,
    -0.413474; 0.814409; -0.407156;,
    -0.707107; 0.707107; 0.000000;,
    -0.707107; 0.707107; 0.000000;,
    -0.408130; 0.816544; 0.408272;,
    -0.301416; 0.301521; 0.904562;,
    -0.413474; 0.814409; -0.407156;,
    -0.418676; 0.406169; -0.812242;,
    0.405813; 0.818785; 0.406087;,
    0.300525; 0.307604; 0.902809;,
    0.707107; 0.707107; -0.000003;,
    0.707107; 0.707107; -0.000003;,
    0.425782; 0.809523; -0.404205;,
    0.331397; 0.418515; -0.845589;,
    0.575768; 0.579913; 0.576361;,
    0.706736; 0.004346; 0.707464;,
    0.707107; 0.707107; 0.000000;,
    1.000000; 0.000000; 0.000000;,
    0.551668; 0.662794; -0.506326;,
    0.724624; 0.180576; -0.665066;,
    0.425782; 0.809523; -0.404205;,
    0.331397; 0.418515; -0.845589;,
    0.551668; 0.662794; -0.506326;,
    0.050580; 0.228206; -0.972298;,
    0.724624; 0.180576; -0.665066;,
    -0.301416; 0.301521; 0.904562;,
    -0.577350; 0.577350; 0.577350;,
    0.000000; 0.000000; 1.000000;,
    -0.707107; 0.000000; 0.707107;,
    -0.000173; 0.709932; 0.704270;,
    -0.408130; 0.816544; 0.408272;,
    -0.000008; 0.003988; 0.999992;,
    0.000230; 0.000001; 1.000000;,
    0.405813; 0.818785; 0.406087;,
    0.300525; 0.307604; 0.902809;,
    -0.000294; 0.003073; 0.999995;,
    0.575768; 0.579913; 0.576361;,
    0.706736; 0.004346; 0.707464;,
    0.000000; 1.000000; 0.000000;,
    0.000000; 1.000000; 0.000000;,
    0.000000; 1.000000; 0.000000;,
    -0.000173; 0.709932; 0.704270;,
    0.000000; 1.000000; 0.000000;,
    0.012921; 0.707307; -0.706788;,
    0.000000; 1.000000; 0.000000;,
    0.000000; 1.000000; 0.000000;,
    0.000000; 1.000000; 0.000000;,
    0.000000; 1.000000; 0.000000;,
    0.000000; 1.000000; 0.000000;,
    0.000000; 1.000000; 0.000000;,
    0.000000; 1.000000; 0.000000;,
    0.000000; 1.000000; 0.000000;,
    0.000000; 1.000000; 0.000000;,
    0.000000; 1.000000; 0.000000;,
    0.000000; 1.000000; 0.000000;;
    71;
    3;0, 1, 2;,
    3;1, 3, 2;,
    3;4, 5, 0;,
    3;5, 1, 0;,
    3;6, 7, 8;,
    3;7, 9, 8;,
    3;8, 9, 10;,
    3;11, 6, 12;,
    3;6, 8, 12;,
    3;13, 14, 15;,
    3;14, 16, 15;,
    3;17, 18, 13;,
    3;18, 14, 13;,
    3;19, 20, 21;,
    3;20, 22, 21;,
    3;21, 22, 23;,
    3;22, 24, 23;,
    3;25, 26, 27;,
    3;26, 28, 27;,
    3;27, 28, 29;,
    3;28, 30, 29;,
    3;0, 2, 14;,
    3;2, 16, 14;,
    3;4, 0, 18;,
    3;0, 14, 18;,
    3;20, 25, 22;,
    3;25, 27, 22;,
    3;22, 27, 24;,
    3;27, 29, 24;,
    3;31, 32, 11;,
    3;32, 6, 11;,
    3;32, 33, 34;,
    3;33, 35, 34;,
    3;6, 32, 7;,
    3;32, 34, 7;,
    3;36, 37, 38;,
    3;37, 39, 38;,
    3;40, 41, 42;,
    3;41, 36, 42;,
    3;42, 36, 43;,
    3;36, 38, 43;,
    3;44, 40, 45;,
    3;40, 42, 45;,
    3;45, 42, 46;,
    3;42, 43, 46;,
    3;47, 45, 48;,
    3;45, 46, 48;,
    3;13, 15, 49;,
    3;15, 50, 49;,
    3;50, 15, 51;,
    3;15, 52, 51;,
    3;17, 13, 53;,
    3;13, 49, 53;,
    3;17, 53, 54;,
    3;53, 55, 54;,
    3;56, 57, 51;,
    3;57, 58, 51;,
    3;19, 21, 56;,
    3;21, 57, 56;,
    3;19, 56, 52;,
    3;56, 51, 52;,
    3;59, 55, 57;,
    3;55, 58, 57;,
    3;21, 23, 57;,
    3;23, 59, 57;,
    3;59, 23, 55;,
    3;23, 54, 55;,
    3;60, 61, 62;,
    3;61, 63, 62;,
    3;64, 62, 65;,
    3;62, 63, 65;;
   }

   MeshTextureCoords {
    66;
    1.468830; -1.003420;,
    1.468940; -1.045480;,
    -1.046810; -0.998500;,
    -1.047040; -1.039940;,
    3.151810; -0.985270;,
    3.164700; -1.009550;,
    1.484109; 0.322919;,
    1.484109; 0.358875;,
    -0.961625; 0.322919;,
    -1.037962; 0.358875;,
    -1.037962; 0.322919;,
    1.484109; 0.285017;,
    -0.961625; 0.285017;,
    1.468910; -0.897240;,
    1.469040; -0.941510;,
    -1.045050; -0.893530;,
    -1.045330; -0.937200;,
    3.140290; -0.898710;,
    3.152830; -0.924140;,
    -1.030700; 1.575354;,
    -1.030680; 1.618770;,
    1.472530; 1.572094;,
    1.472560; 1.615509;,
    3.145080; 1.569006;,
    3.145130; 1.612416;,
    -1.033330; 1.677493;,
    -1.033310; 1.718683;,
    1.471570; 1.674353;,
    1.471600; 1.715540;,
    3.142990; 1.671191;,
    3.151050; 1.712357;,
    2.128474; 0.285017;,
    2.128474; 0.322919;,
    2.202037; 0.322919;,
    2.129705; 0.358875;,
    2.202037; 0.358875;,
    -0.961625; 0.322919;,
    -1.037962; 0.322919;,
    -0.961470; 0.358875;,
    -1.037962; 0.358875;,
    1.484109; 0.285017;,
    -0.961625; 0.285017;,
    1.460768; 0.322919;,
    1.460999; 0.358875;,
    2.128550; 0.285017;,
    2.128550; 0.322919;,
    2.119769; 0.358875;,
    2.202037; 0.322919;,
    2.202037; 0.358875;,
    1.471270; -0.521900;,
    -0.768762; -0.518680;,
    -0.738552; 1.060082;,
    -1.007550; 1.060419;,
    2.875920; -0.523380;,
    3.163770; 1.054193;,
    2.894860; 1.054689;,
    -0.744286; 1.199707;,
    1.478850; 1.196923;,
    1.481200; 1.057297;,
    2.889420; 1.194245;,
    -1.812894; -0.967287;,
    -1.765465; 1.511368;,
    1.703956; -0.972343;,
    1.719546; 1.506996;,
    3.909256; -0.974667;,
    3.938992; 1.502902;;
   }

   MeshVertexColors {
    66;
    0; 1.000000; 1.000000; 1.000000; 1.000000;,
    1; 1.000000; 1.000000; 1.000000; 1.000000;,
    2; 1.000000; 1.000000; 1.000000; 1.000000;,
    3; 1.000000; 1.000000; 1.000000; 1.000000;,
    4; 1.000000; 1.000000; 1.000000; 1.000000;,
    5; 1.000000; 1.000000; 1.000000; 1.000000;,
    6; 1.000000; 1.000000; 1.000000; 1.000000;,
    7; 1.000000; 1.000000; 1.000000; 1.000000;,
    8; 1.000000; 1.000000; 1.000000; 1.000000;,
    9; 1.000000; 1.000000; 1.000000; 1.000000;,
    10; 1.000000; 1.000000; 1.000000; 1.000000;,
    11; 1.000000; 1.000000; 1.000000; 1.000000;,
    12; 1.000000; 1.000000; 1.000000; 1.000000;,
    13; 1.000000; 1.000000; 1.000000; 1.000000;,
    14; 1.000000; 1.000000; 1.000000; 1.000000;,
    15; 1.000000; 1.000000; 1.000000; 1.000000;,
    16; 1.000000; 1.000000; 1.000000; 1.000000;,
    17; 1.000000; 1.000000; 1.000000; 1.000000;,
    18; 1.000000; 1.000000; 1.000000; 1.000000;,
    19; 1.000000; 1.000000; 1.000000; 1.000000;,
    20; 1.000000; 1.000000; 1.000000; 1.000000;,
    21; 1.000000; 1.000000; 1.000000; 1.000000;,
    22; 1.000000; 1.000000; 1.000000; 1.000000;,
    23; 1.000000; 1.000000; 1.000000; 1.000000;,
    24; 1.000000; 1.000000; 1.000000; 1.000000;,
    25; 1.000000; 1.000000; 1.000000; 1.000000;,
    26; 1.000000; 1.000000; 1.000000; 1.000000;,
    27; 1.000000; 1.000000; 1.000000; 1.000000;,
    28; 1.000000; 1.000000; 1.000000; 1.000000;,
    29; 1.000000; 1.000000; 1.000000; 1.000000;,
    30; 1.000000; 1.000000; 1.000000; 1.000000;,
    31; 1.000000; 1.000000; 1.000000; 1.000000;,
    32; 1.000000; 1.000000; 1.000000; 1.000000;,
    33; 1.000000; 1.000000; 1.000000; 1.000000;,
    34; 1.000000; 1.000000; 1.000000; 1.000000;,
    35; 1.000000; 1.000000; 1.000000; 1.000000;,
    36; 1.000000; 1.000000; 1.000000; 1.000000;,
    37; 1.000000; 1.000000; 1.000000; 1.000000;,
    38; 1.000000; 1.000000; 1.000000; 1.000000;,
    39; 1.000000; 1.000000; 1.000000; 1.000000;,
    40; 1.000000; 1.000000; 1.000000; 1.000000;,
    41; 1.000000; 1.000000; 1.000000; 1.000000;,
    42; 1.000000; 1.000000; 1.000000; 1.000000;,
    43; 1.000000; 1.000000; 1.000000; 1.000000;,
    44; 1.000000; 1.000000; 1.000000; 1.000000;,
    45; 1.000000; 1.000000; 1.000000; 1.000000;,
    46; 1.000000; 1.000000; 1.000000; 1.000000;,
    47; 1.000000; 1.000000; 1.000000; 1.000000;,
    48; 1.000000; 1.000000; 1.000000; 1.000000;,
    49; 1.000000; 1.000000; 1.000000; 1.000000;,
    50; 1.000000; 1.000000; 1.000000; 1.000000;,
    51; 1.000000; 1.000000; 1.000000; 1.000000;,
    52; 1.000000; 1.000000; 1.000000; 1.000000;,
    53; 1.000000; 1.000000; 1.000000; 1.000000;,
    54; 1.000000; 1.000000; 1.000000; 1.000000;,
    55; 1.000000; 1.000000; 1.000000; 1.000000;,
    56; 1.000000; 1.000000; 1.000000; 1.000000;,
    57; 1.000000; 1.000000; 1.000000; 1.000000;,
    58; 1.000000; 1.000000; 1.000000; 1.000000;,
    59; 1.000000; 1.000000; 1.000000; 1.000000;,
    60; 1.000000; 1.000000; 1.000000; 1.000000;,
    61; 1.000000; 1.000000; 1.000000; 1.000000;,
    62; 1.000000; 1.000000; 1.000000; 1.000000;,
    63; 1.000000; 1.000000; 1.000000; 1.000000;,
    64; 1.000000; 1.000000; 1.000000; 1.000000;,
    65; 1.000000; 1.000000; 1.000000; 1.000000;;
   }

   MeshMaterialList {
    2;
    71;
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    1,
    1,
    1,
    1;

    Material floor1 {
     1.000000; 1.000000; 1.000000; 1.000000;;
     128.000000;
     1.000000; 1.000000; 1.000000;;
     0.000000; 0.000000; 0.000000;;

     TextureFilename {
      "floor1.dds";
     }
    }

    Material floor6 {
     1.000000; 1.000000; 1.000000; 1.000000;;
     128.000000;
     0.000000; 0.000000; 0.000000;;
     0.000000; 0.000000; 0.000000;;

     TextureFilename {
      "floor6.dds";
     }
    }

   }
  }
}

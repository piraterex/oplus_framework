.class public final enum Landroid/renderscript/Element$DataType;
.super Ljava/lang/Enum;
.source "Element.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/Element;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DataType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/renderscript/Element$DataType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/renderscript/Element$DataType;

.field public static final enum whitelist BOOLEAN:Landroid/renderscript/Element$DataType;

.field public static final enum whitelist FLOAT_16:Landroid/renderscript/Element$DataType;

.field public static final enum whitelist FLOAT_32:Landroid/renderscript/Element$DataType;

.field public static final enum whitelist FLOAT_64:Landroid/renderscript/Element$DataType;

.field public static final enum whitelist MATRIX_2X2:Landroid/renderscript/Element$DataType;

.field public static final enum whitelist MATRIX_3X3:Landroid/renderscript/Element$DataType;

.field public static final enum whitelist MATRIX_4X4:Landroid/renderscript/Element$DataType;

.field public static final enum whitelist NONE:Landroid/renderscript/Element$DataType;

.field public static final enum whitelist RS_ALLOCATION:Landroid/renderscript/Element$DataType;

.field public static final enum whitelist RS_ELEMENT:Landroid/renderscript/Element$DataType;

.field public static final enum whitelist RS_FONT:Landroid/renderscript/Element$DataType;

.field public static final enum whitelist RS_MESH:Landroid/renderscript/Element$DataType;

.field public static final enum whitelist RS_PROGRAM_FRAGMENT:Landroid/renderscript/Element$DataType;

.field public static final enum whitelist RS_PROGRAM_RASTER:Landroid/renderscript/Element$DataType;

.field public static final enum whitelist RS_PROGRAM_STORE:Landroid/renderscript/Element$DataType;

.field public static final enum whitelist RS_PROGRAM_VERTEX:Landroid/renderscript/Element$DataType;

.field public static final enum whitelist RS_SAMPLER:Landroid/renderscript/Element$DataType;

.field public static final enum whitelist RS_SCRIPT:Landroid/renderscript/Element$DataType;

.field public static final enum whitelist RS_TYPE:Landroid/renderscript/Element$DataType;

.field public static final enum whitelist SIGNED_16:Landroid/renderscript/Element$DataType;

.field public static final enum whitelist SIGNED_32:Landroid/renderscript/Element$DataType;

.field public static final enum whitelist SIGNED_64:Landroid/renderscript/Element$DataType;

.field public static final enum whitelist SIGNED_8:Landroid/renderscript/Element$DataType;

.field public static final enum whitelist UNSIGNED_16:Landroid/renderscript/Element$DataType;

.field public static final enum whitelist UNSIGNED_32:Landroid/renderscript/Element$DataType;

.field public static final enum whitelist UNSIGNED_4_4_4_4:Landroid/renderscript/Element$DataType;

.field public static final enum whitelist UNSIGNED_5_5_5_1:Landroid/renderscript/Element$DataType;

.field public static final enum whitelist UNSIGNED_5_6_5:Landroid/renderscript/Element$DataType;

.field public static final enum whitelist UNSIGNED_64:Landroid/renderscript/Element$DataType;

.field public static final enum whitelist UNSIGNED_8:Landroid/renderscript/Element$DataType;


# instance fields
.field greylist-max-o mID:I

.field greylist-max-o mSize:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 33

    .line 128
    new-instance v0, Landroid/renderscript/Element$DataType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v2}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Landroid/renderscript/Element$DataType;->NONE:Landroid/renderscript/Element$DataType;

    .line 129
    new-instance v1, Landroid/renderscript/Element$DataType;

    const-string v3, "FLOAT_16"

    const/4 v4, 0x1

    const/4 v5, 0x2

    invoke-direct {v1, v3, v4, v4, v5}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v1, Landroid/renderscript/Element$DataType;->FLOAT_16:Landroid/renderscript/Element$DataType;

    .line 130
    new-instance v3, Landroid/renderscript/Element$DataType;

    const-string v6, "FLOAT_32"

    const/4 v7, 0x4

    invoke-direct {v3, v6, v5, v5, v7}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v3, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    .line 131
    new-instance v6, Landroid/renderscript/Element$DataType;

    const-string v8, "FLOAT_64"

    const/4 v9, 0x3

    const/16 v10, 0x8

    invoke-direct {v6, v8, v9, v9, v10}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v6, Landroid/renderscript/Element$DataType;->FLOAT_64:Landroid/renderscript/Element$DataType;

    .line 132
    new-instance v8, Landroid/renderscript/Element$DataType;

    const-string v11, "SIGNED_8"

    invoke-direct {v8, v11, v7, v7, v4}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v8, Landroid/renderscript/Element$DataType;->SIGNED_8:Landroid/renderscript/Element$DataType;

    .line 133
    new-instance v11, Landroid/renderscript/Element$DataType;

    const-string v12, "SIGNED_16"

    const/4 v13, 0x5

    invoke-direct {v11, v12, v13, v13, v5}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v11, Landroid/renderscript/Element$DataType;->SIGNED_16:Landroid/renderscript/Element$DataType;

    .line 134
    new-instance v12, Landroid/renderscript/Element$DataType;

    const-string v14, "SIGNED_32"

    const/4 v15, 0x6

    invoke-direct {v12, v14, v15, v15, v7}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v12, Landroid/renderscript/Element$DataType;->SIGNED_32:Landroid/renderscript/Element$DataType;

    .line 135
    new-instance v14, Landroid/renderscript/Element$DataType;

    const-string v15, "SIGNED_64"

    const/4 v13, 0x7

    invoke-direct {v14, v15, v13, v13, v10}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v14, Landroid/renderscript/Element$DataType;->SIGNED_64:Landroid/renderscript/Element$DataType;

    .line 136
    new-instance v15, Landroid/renderscript/Element$DataType;

    const-string v13, "UNSIGNED_8"

    invoke-direct {v15, v13, v10, v10, v4}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v15, Landroid/renderscript/Element$DataType;->UNSIGNED_8:Landroid/renderscript/Element$DataType;

    .line 137
    new-instance v13, Landroid/renderscript/Element$DataType;

    const-string v9, "UNSIGNED_16"

    const/16 v2, 0x9

    invoke-direct {v13, v9, v2, v2, v5}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v13, Landroid/renderscript/Element$DataType;->UNSIGNED_16:Landroid/renderscript/Element$DataType;

    .line 138
    new-instance v9, Landroid/renderscript/Element$DataType;

    const-string v2, "UNSIGNED_32"

    const/16 v5, 0xa

    invoke-direct {v9, v2, v5, v5, v7}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v9, Landroid/renderscript/Element$DataType;->UNSIGNED_32:Landroid/renderscript/Element$DataType;

    .line 139
    new-instance v2, Landroid/renderscript/Element$DataType;

    const-string v5, "UNSIGNED_64"

    const/16 v7, 0xb

    invoke-direct {v2, v5, v7, v7, v10}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v2, Landroid/renderscript/Element$DataType;->UNSIGNED_64:Landroid/renderscript/Element$DataType;

    .line 141
    new-instance v5, Landroid/renderscript/Element$DataType;

    const-string v7, "BOOLEAN"

    const/16 v10, 0xc

    invoke-direct {v5, v7, v10, v10, v4}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v5, Landroid/renderscript/Element$DataType;->BOOLEAN:Landroid/renderscript/Element$DataType;

    .line 143
    new-instance v7, Landroid/renderscript/Element$DataType;

    const-string v10, "UNSIGNED_5_6_5"

    const/16 v4, 0xd

    move-object/from16 v16, v5

    const/4 v5, 0x2

    invoke-direct {v7, v10, v4, v4, v5}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v7, Landroid/renderscript/Element$DataType;->UNSIGNED_5_6_5:Landroid/renderscript/Element$DataType;

    .line 144
    new-instance v10, Landroid/renderscript/Element$DataType;

    const-string v4, "UNSIGNED_5_5_5_1"

    move-object/from16 v17, v7

    const/16 v7, 0xe

    invoke-direct {v10, v4, v7, v7, v5}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v10, Landroid/renderscript/Element$DataType;->UNSIGNED_5_5_5_1:Landroid/renderscript/Element$DataType;

    .line 145
    new-instance v4, Landroid/renderscript/Element$DataType;

    const-string v7, "UNSIGNED_4_4_4_4"

    move-object/from16 v18, v10

    const/16 v10, 0xf

    invoke-direct {v4, v7, v10, v10, v5}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v4, Landroid/renderscript/Element$DataType;->UNSIGNED_4_4_4_4:Landroid/renderscript/Element$DataType;

    .line 147
    new-instance v5, Landroid/renderscript/Element$DataType;

    const-string v7, "MATRIX_4X4"

    const/16 v10, 0x10

    move-object/from16 v19, v4

    const/16 v4, 0x40

    invoke-direct {v5, v7, v10, v10, v4}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v5, Landroid/renderscript/Element$DataType;->MATRIX_4X4:Landroid/renderscript/Element$DataType;

    .line 148
    new-instance v4, Landroid/renderscript/Element$DataType;

    const-string v7, "MATRIX_3X3"

    const/16 v10, 0x11

    move-object/from16 v20, v5

    const/16 v5, 0x24

    invoke-direct {v4, v7, v10, v10, v5}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v4, Landroid/renderscript/Element$DataType;->MATRIX_3X3:Landroid/renderscript/Element$DataType;

    .line 149
    new-instance v5, Landroid/renderscript/Element$DataType;

    const-string v7, "MATRIX_2X2"

    const/16 v10, 0x12

    move-object/from16 v21, v4

    const/16 v4, 0x10

    invoke-direct {v5, v7, v10, v10, v4}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;III)V

    sput-object v5, Landroid/renderscript/Element$DataType;->MATRIX_2X2:Landroid/renderscript/Element$DataType;

    .line 151
    new-instance v4, Landroid/renderscript/Element$DataType;

    const-string v7, "RS_ELEMENT"

    const/16 v10, 0x13

    move-object/from16 v22, v5

    const/16 v5, 0x3e8

    invoke-direct {v4, v7, v10, v5}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Landroid/renderscript/Element$DataType;->RS_ELEMENT:Landroid/renderscript/Element$DataType;

    .line 152
    new-instance v5, Landroid/renderscript/Element$DataType;

    const-string v7, "RS_TYPE"

    const/16 v10, 0x14

    move-object/from16 v23, v4

    const/16 v4, 0x3e9

    invoke-direct {v5, v7, v10, v4}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Landroid/renderscript/Element$DataType;->RS_TYPE:Landroid/renderscript/Element$DataType;

    .line 153
    new-instance v4, Landroid/renderscript/Element$DataType;

    const-string v7, "RS_ALLOCATION"

    const/16 v10, 0x15

    move-object/from16 v24, v5

    const/16 v5, 0x3ea

    invoke-direct {v4, v7, v10, v5}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Landroid/renderscript/Element$DataType;->RS_ALLOCATION:Landroid/renderscript/Element$DataType;

    .line 154
    new-instance v5, Landroid/renderscript/Element$DataType;

    const-string v7, "RS_SAMPLER"

    const/16 v10, 0x16

    move-object/from16 v25, v4

    const/16 v4, 0x3eb

    invoke-direct {v5, v7, v10, v4}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Landroid/renderscript/Element$DataType;->RS_SAMPLER:Landroid/renderscript/Element$DataType;

    .line 155
    new-instance v4, Landroid/renderscript/Element$DataType;

    const-string v7, "RS_SCRIPT"

    const/16 v10, 0x17

    move-object/from16 v26, v5

    const/16 v5, 0x3ec

    invoke-direct {v4, v7, v10, v5}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Landroid/renderscript/Element$DataType;->RS_SCRIPT:Landroid/renderscript/Element$DataType;

    .line 156
    new-instance v5, Landroid/renderscript/Element$DataType;

    const-string v7, "RS_MESH"

    const/16 v10, 0x18

    move-object/from16 v27, v4

    const/16 v4, 0x3ed

    invoke-direct {v5, v7, v10, v4}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Landroid/renderscript/Element$DataType;->RS_MESH:Landroid/renderscript/Element$DataType;

    .line 157
    new-instance v4, Landroid/renderscript/Element$DataType;

    const-string v7, "RS_PROGRAM_FRAGMENT"

    const/16 v10, 0x19

    move-object/from16 v28, v5

    const/16 v5, 0x3ee

    invoke-direct {v4, v7, v10, v5}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Landroid/renderscript/Element$DataType;->RS_PROGRAM_FRAGMENT:Landroid/renderscript/Element$DataType;

    .line 158
    new-instance v5, Landroid/renderscript/Element$DataType;

    const-string v7, "RS_PROGRAM_VERTEX"

    const/16 v10, 0x1a

    move-object/from16 v29, v4

    const/16 v4, 0x3ef

    invoke-direct {v5, v7, v10, v4}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Landroid/renderscript/Element$DataType;->RS_PROGRAM_VERTEX:Landroid/renderscript/Element$DataType;

    .line 159
    new-instance v4, Landroid/renderscript/Element$DataType;

    const-string v7, "RS_PROGRAM_RASTER"

    const/16 v10, 0x1b

    move-object/from16 v30, v5

    const/16 v5, 0x3f0

    invoke-direct {v4, v7, v10, v5}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Landroid/renderscript/Element$DataType;->RS_PROGRAM_RASTER:Landroid/renderscript/Element$DataType;

    .line 160
    new-instance v5, Landroid/renderscript/Element$DataType;

    const-string v7, "RS_PROGRAM_STORE"

    const/16 v10, 0x1c

    move-object/from16 v31, v4

    const/16 v4, 0x3f1

    invoke-direct {v5, v7, v10, v4}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Landroid/renderscript/Element$DataType;->RS_PROGRAM_STORE:Landroid/renderscript/Element$DataType;

    .line 161
    new-instance v4, Landroid/renderscript/Element$DataType;

    const-string v7, "RS_FONT"

    const/16 v10, 0x1d

    move-object/from16 v32, v5

    const/16 v5, 0x3f2

    invoke-direct {v4, v7, v10, v5}, Landroid/renderscript/Element$DataType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Landroid/renderscript/Element$DataType;->RS_FONT:Landroid/renderscript/Element$DataType;

    .line 127
    const/16 v5, 0x1e

    new-array v5, v5, [Landroid/renderscript/Element$DataType;

    const/4 v7, 0x0

    aput-object v0, v5, v7

    const/4 v0, 0x1

    aput-object v1, v5, v0

    const/4 v0, 0x2

    aput-object v3, v5, v0

    const/4 v0, 0x3

    aput-object v6, v5, v0

    const/4 v0, 0x4

    aput-object v8, v5, v0

    const/4 v0, 0x5

    aput-object v11, v5, v0

    const/4 v0, 0x6

    aput-object v12, v5, v0

    const/4 v0, 0x7

    aput-object v14, v5, v0

    const/16 v0, 0x8

    aput-object v15, v5, v0

    const/16 v0, 0x9

    aput-object v13, v5, v0

    const/16 v0, 0xa

    aput-object v9, v5, v0

    const/16 v0, 0xb

    aput-object v2, v5, v0

    const/16 v0, 0xc

    aput-object v16, v5, v0

    const/16 v0, 0xd

    aput-object v17, v5, v0

    const/16 v0, 0xe

    aput-object v18, v5, v0

    const/16 v0, 0xf

    aput-object v19, v5, v0

    const/16 v0, 0x10

    aput-object v20, v5, v0

    const/16 v0, 0x11

    aput-object v21, v5, v0

    const/16 v0, 0x12

    aput-object v22, v5, v0

    const/16 v0, 0x13

    aput-object v23, v5, v0

    const/16 v0, 0x14

    aput-object v24, v5, v0

    const/16 v0, 0x15

    aput-object v25, v5, v0

    const/16 v0, 0x16

    aput-object v26, v5, v0

    const/16 v0, 0x17

    aput-object v27, v5, v0

    const/16 v0, 0x18

    aput-object v28, v5, v0

    const/16 v0, 0x19

    aput-object v29, v5, v0

    const/16 v0, 0x1a

    aput-object v30, v5, v0

    const/16 v0, 0x1b

    aput-object v31, v5, v0

    const/16 v0, 0x1c

    aput-object v32, v5, v0

    const/16 v0, 0x1d

    aput-object v4, v5, v0

    sput-object v5, Landroid/renderscript/Element$DataType;->$VALUES:[Landroid/renderscript/Element$DataType;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 170
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 171
    iput p3, p0, Landroid/renderscript/Element$DataType;->mID:I

    .line 172
    const/4 p1, 0x4

    iput p1, p0, Landroid/renderscript/Element$DataType;->mSize:I

    .line 173
    sget p1, Landroid/renderscript/RenderScript;->sPointerSize:I

    const/16 p2, 0x8

    if-ne p1, p2, :cond_0

    .line 174
    const/16 p1, 0x20

    iput p1, p0, Landroid/renderscript/Element$DataType;->mSize:I

    .line 176
    :cond_0
    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;III)V
    .locals 0
    .param p3, "id"    # I
    .param p4, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 165
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 166
    iput p3, p0, Landroid/renderscript/Element$DataType;->mID:I

    .line 167
    iput p4, p0, Landroid/renderscript/Element$DataType;->mSize:I

    .line 168
    return-void
.end method

.method public static whitelist valueOf(Ljava/lang/String;)Landroid/renderscript/Element$DataType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 127
    const-class v0, Landroid/renderscript/Element$DataType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/renderscript/Element$DataType;

    return-object v0
.end method

.method public static whitelist values()[Landroid/renderscript/Element$DataType;
    .locals 1

    .line 127
    sget-object v0, Landroid/renderscript/Element$DataType;->$VALUES:[Landroid/renderscript/Element$DataType;

    invoke-virtual {v0}, [Landroid/renderscript/Element$DataType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/renderscript/Element$DataType;

    return-object v0
.end method

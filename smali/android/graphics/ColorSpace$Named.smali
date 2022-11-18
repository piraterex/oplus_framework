.class public final enum Landroid/graphics/ColorSpace$Named;
.super Ljava/lang/Enum;
.source "ColorSpace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/ColorSpace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Named"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/graphics/ColorSpace$Named;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/graphics/ColorSpace$Named;

.field public static final enum whitelist ACES:Landroid/graphics/ColorSpace$Named;

.field public static final enum whitelist ACESCG:Landroid/graphics/ColorSpace$Named;

.field public static final enum whitelist ADOBE_RGB:Landroid/graphics/ColorSpace$Named;

.field public static final enum whitelist BT2020:Landroid/graphics/ColorSpace$Named;

.field public static final enum whitelist BT709:Landroid/graphics/ColorSpace$Named;

.field public static final enum whitelist CIE_LAB:Landroid/graphics/ColorSpace$Named;

.field public static final enum whitelist CIE_XYZ:Landroid/graphics/ColorSpace$Named;

.field public static final enum whitelist DCI_P3:Landroid/graphics/ColorSpace$Named;

.field public static final enum whitelist DISPLAY_P3:Landroid/graphics/ColorSpace$Named;

.field public static final enum whitelist EXTENDED_SRGB:Landroid/graphics/ColorSpace$Named;

.field public static final enum whitelist LINEAR_EXTENDED_SRGB:Landroid/graphics/ColorSpace$Named;

.field public static final enum whitelist LINEAR_SRGB:Landroid/graphics/ColorSpace$Named;

.field public static final enum whitelist NTSC_1953:Landroid/graphics/ColorSpace$Named;

.field public static final enum whitelist PRO_PHOTO_RGB:Landroid/graphics/ColorSpace$Named;

.field public static final enum whitelist SMPTE_C:Landroid/graphics/ColorSpace$Named;

.field public static final enum whitelist SRGB:Landroid/graphics/ColorSpace$Named;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 19

    .line 273
    new-instance v0, Landroid/graphics/ColorSpace$Named;

    const-string v1, "SRGB"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/graphics/ColorSpace$Named;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    .line 300
    new-instance v1, Landroid/graphics/ColorSpace$Named;

    const-string v3, "LINEAR_SRGB"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Landroid/graphics/ColorSpace$Named;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroid/graphics/ColorSpace$Named;->LINEAR_SRGB:Landroid/graphics/ColorSpace$Named;

    .line 339
    new-instance v3, Landroid/graphics/ColorSpace$Named;

    const-string v5, "EXTENDED_SRGB"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Landroid/graphics/ColorSpace$Named;-><init>(Ljava/lang/String;I)V

    sput-object v3, Landroid/graphics/ColorSpace$Named;->EXTENDED_SRGB:Landroid/graphics/ColorSpace$Named;

    .line 366
    new-instance v5, Landroid/graphics/ColorSpace$Named;

    const-string v7, "LINEAR_EXTENDED_SRGB"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Landroid/graphics/ColorSpace$Named;-><init>(Ljava/lang/String;I)V

    sput-object v5, Landroid/graphics/ColorSpace$Named;->LINEAR_EXTENDED_SRGB:Landroid/graphics/ColorSpace$Named;

    .line 401
    new-instance v7, Landroid/graphics/ColorSpace$Named;

    const-string v9, "BT709"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Landroid/graphics/ColorSpace$Named;-><init>(Ljava/lang/String;I)V

    sput-object v7, Landroid/graphics/ColorSpace$Named;->BT709:Landroid/graphics/ColorSpace$Named;

    .line 436
    new-instance v9, Landroid/graphics/ColorSpace$Named;

    const-string v11, "BT2020"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Landroid/graphics/ColorSpace$Named;-><init>(Ljava/lang/String;I)V

    sput-object v9, Landroid/graphics/ColorSpace$Named;->BT2020:Landroid/graphics/ColorSpace$Named;

    .line 463
    new-instance v11, Landroid/graphics/ColorSpace$Named;

    const-string v13, "DCI_P3"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Landroid/graphics/ColorSpace$Named;-><init>(Ljava/lang/String;I)V

    sput-object v11, Landroid/graphics/ColorSpace$Named;->DCI_P3:Landroid/graphics/ColorSpace$Named;

    .line 498
    new-instance v13, Landroid/graphics/ColorSpace$Named;

    const-string v15, "DISPLAY_P3"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Landroid/graphics/ColorSpace$Named;-><init>(Ljava/lang/String;I)V

    sput-object v13, Landroid/graphics/ColorSpace$Named;->DISPLAY_P3:Landroid/graphics/ColorSpace$Named;

    .line 533
    new-instance v15, Landroid/graphics/ColorSpace$Named;

    const-string v14, "NTSC_1953"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Landroid/graphics/ColorSpace$Named;-><init>(Ljava/lang/String;I)V

    sput-object v15, Landroid/graphics/ColorSpace$Named;->NTSC_1953:Landroid/graphics/ColorSpace$Named;

    .line 568
    new-instance v14, Landroid/graphics/ColorSpace$Named;

    const-string v12, "SMPTE_C"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Landroid/graphics/ColorSpace$Named;-><init>(Ljava/lang/String;I)V

    sput-object v14, Landroid/graphics/ColorSpace$Named;->SMPTE_C:Landroid/graphics/ColorSpace$Named;

    .line 595
    new-instance v12, Landroid/graphics/ColorSpace$Named;

    const-string v10, "ADOBE_RGB"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Landroid/graphics/ColorSpace$Named;-><init>(Ljava/lang/String;I)V

    sput-object v12, Landroid/graphics/ColorSpace$Named;->ADOBE_RGB:Landroid/graphics/ColorSpace$Named;

    .line 630
    new-instance v10, Landroid/graphics/ColorSpace$Named;

    const-string v8, "PRO_PHOTO_RGB"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Landroid/graphics/ColorSpace$Named;-><init>(Ljava/lang/String;I)V

    sput-object v10, Landroid/graphics/ColorSpace$Named;->PRO_PHOTO_RGB:Landroid/graphics/ColorSpace$Named;

    .line 657
    new-instance v8, Landroid/graphics/ColorSpace$Named;

    const-string v6, "ACES"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Landroid/graphics/ColorSpace$Named;-><init>(Ljava/lang/String;I)V

    sput-object v8, Landroid/graphics/ColorSpace$Named;->ACES:Landroid/graphics/ColorSpace$Named;

    .line 684
    new-instance v6, Landroid/graphics/ColorSpace$Named;

    const-string v4, "ACESCG"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Landroid/graphics/ColorSpace$Named;-><init>(Ljava/lang/String;I)V

    sput-object v6, Landroid/graphics/ColorSpace$Named;->ACESCG:Landroid/graphics/ColorSpace$Named;

    .line 695
    new-instance v4, Landroid/graphics/ColorSpace$Named;

    const-string v2, "CIE_XYZ"

    move-object/from16 v17, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Landroid/graphics/ColorSpace$Named;-><init>(Ljava/lang/String;I)V

    sput-object v4, Landroid/graphics/ColorSpace$Named;->CIE_XYZ:Landroid/graphics/ColorSpace$Named;

    .line 706
    new-instance v2, Landroid/graphics/ColorSpace$Named;

    const-string v6, "CIE_LAB"

    move-object/from16 v18, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4}, Landroid/graphics/ColorSpace$Named;-><init>(Ljava/lang/String;I)V

    sput-object v2, Landroid/graphics/ColorSpace$Named;->CIE_LAB:Landroid/graphics/ColorSpace$Named;

    .line 237
    const/16 v6, 0x10

    new-array v6, v6, [Landroid/graphics/ColorSpace$Named;

    const/16 v16, 0x0

    aput-object v0, v6, v16

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v3, v6, v0

    const/4 v0, 0x3

    aput-object v5, v6, v0

    const/4 v0, 0x4

    aput-object v7, v6, v0

    const/4 v0, 0x5

    aput-object v9, v6, v0

    const/4 v0, 0x6

    aput-object v11, v6, v0

    const/4 v0, 0x7

    aput-object v13, v6, v0

    const/16 v0, 0x8

    aput-object v15, v6, v0

    const/16 v0, 0x9

    aput-object v14, v6, v0

    const/16 v0, 0xa

    aput-object v12, v6, v0

    const/16 v0, 0xb

    aput-object v10, v6, v0

    const/16 v0, 0xc

    aput-object v8, v6, v0

    const/16 v0, 0xd

    aput-object v17, v6, v0

    const/16 v0, 0xe

    aput-object v18, v6, v0

    aput-object v2, v6, v4

    sput-object v6, Landroid/graphics/ColorSpace$Named;->$VALUES:[Landroid/graphics/ColorSpace$Named;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 237
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static whitelist valueOf(Ljava/lang/String;)Landroid/graphics/ColorSpace$Named;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 237
    const-class v0, Landroid/graphics/ColorSpace$Named;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/graphics/ColorSpace$Named;

    return-object v0
.end method

.method public static whitelist values()[Landroid/graphics/ColorSpace$Named;
    .locals 1

    .line 237
    sget-object v0, Landroid/graphics/ColorSpace$Named;->$VALUES:[Landroid/graphics/ColorSpace$Named;

    invoke-virtual {v0}, [Landroid/graphics/ColorSpace$Named;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/ColorSpace$Named;

    return-object v0
.end method

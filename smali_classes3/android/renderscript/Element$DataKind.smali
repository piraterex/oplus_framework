.class public final enum Landroid/renderscript/Element$DataKind;
.super Ljava/lang/Enum;
.source "Element.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/Element;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DataKind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/renderscript/Element$DataKind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/renderscript/Element$DataKind;

.field public static final enum whitelist PIXEL_A:Landroid/renderscript/Element$DataKind;

.field public static final enum whitelist PIXEL_DEPTH:Landroid/renderscript/Element$DataKind;

.field public static final enum whitelist PIXEL_L:Landroid/renderscript/Element$DataKind;

.field public static final enum whitelist PIXEL_LA:Landroid/renderscript/Element$DataKind;

.field public static final enum whitelist PIXEL_RGB:Landroid/renderscript/Element$DataKind;

.field public static final enum whitelist PIXEL_RGBA:Landroid/renderscript/Element$DataKind;

.field public static final enum whitelist PIXEL_YUV:Landroid/renderscript/Element$DataKind;

.field public static final enum whitelist USER:Landroid/renderscript/Element$DataKind;


# instance fields
.field greylist-max-o mID:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 16

    .line 186
    new-instance v0, Landroid/renderscript/Element$DataKind;

    const-string v1, "USER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroid/renderscript/Element$DataKind;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/renderscript/Element$DataKind;->USER:Landroid/renderscript/Element$DataKind;

    .line 188
    new-instance v1, Landroid/renderscript/Element$DataKind;

    const-string v3, "PIXEL_L"

    const/4 v4, 0x1

    const/4 v5, 0x7

    invoke-direct {v1, v3, v4, v5}, Landroid/renderscript/Element$DataKind;-><init>(Ljava/lang/String;II)V

    sput-object v1, Landroid/renderscript/Element$DataKind;->PIXEL_L:Landroid/renderscript/Element$DataKind;

    .line 189
    new-instance v3, Landroid/renderscript/Element$DataKind;

    const-string v6, "PIXEL_A"

    const/4 v7, 0x2

    const/16 v8, 0x8

    invoke-direct {v3, v6, v7, v8}, Landroid/renderscript/Element$DataKind;-><init>(Ljava/lang/String;II)V

    sput-object v3, Landroid/renderscript/Element$DataKind;->PIXEL_A:Landroid/renderscript/Element$DataKind;

    .line 190
    new-instance v6, Landroid/renderscript/Element$DataKind;

    const-string v9, "PIXEL_LA"

    const/4 v10, 0x3

    const/16 v11, 0x9

    invoke-direct {v6, v9, v10, v11}, Landroid/renderscript/Element$DataKind;-><init>(Ljava/lang/String;II)V

    sput-object v6, Landroid/renderscript/Element$DataKind;->PIXEL_LA:Landroid/renderscript/Element$DataKind;

    .line 191
    new-instance v9, Landroid/renderscript/Element$DataKind;

    const-string v11, "PIXEL_RGB"

    const/4 v12, 0x4

    const/16 v13, 0xa

    invoke-direct {v9, v11, v12, v13}, Landroid/renderscript/Element$DataKind;-><init>(Ljava/lang/String;II)V

    sput-object v9, Landroid/renderscript/Element$DataKind;->PIXEL_RGB:Landroid/renderscript/Element$DataKind;

    .line 192
    new-instance v11, Landroid/renderscript/Element$DataKind;

    const-string v13, "PIXEL_RGBA"

    const/4 v14, 0x5

    const/16 v15, 0xb

    invoke-direct {v11, v13, v14, v15}, Landroid/renderscript/Element$DataKind;-><init>(Ljava/lang/String;II)V

    sput-object v11, Landroid/renderscript/Element$DataKind;->PIXEL_RGBA:Landroid/renderscript/Element$DataKind;

    .line 193
    new-instance v13, Landroid/renderscript/Element$DataKind;

    const-string v15, "PIXEL_DEPTH"

    const/4 v14, 0x6

    const/16 v12, 0xc

    invoke-direct {v13, v15, v14, v12}, Landroid/renderscript/Element$DataKind;-><init>(Ljava/lang/String;II)V

    sput-object v13, Landroid/renderscript/Element$DataKind;->PIXEL_DEPTH:Landroid/renderscript/Element$DataKind;

    .line 194
    new-instance v12, Landroid/renderscript/Element$DataKind;

    const-string v15, "PIXEL_YUV"

    const/16 v14, 0xd

    invoke-direct {v12, v15, v5, v14}, Landroid/renderscript/Element$DataKind;-><init>(Ljava/lang/String;II)V

    sput-object v12, Landroid/renderscript/Element$DataKind;->PIXEL_YUV:Landroid/renderscript/Element$DataKind;

    .line 185
    new-array v8, v8, [Landroid/renderscript/Element$DataKind;

    aput-object v0, v8, v2

    aput-object v1, v8, v4

    aput-object v3, v8, v7

    aput-object v6, v8, v10

    const/4 v0, 0x4

    aput-object v9, v8, v0

    const/4 v0, 0x5

    aput-object v11, v8, v0

    const/4 v0, 0x6

    aput-object v13, v8, v0

    aput-object v12, v8, v5

    sput-object v8, Landroid/renderscript/Element$DataKind;->$VALUES:[Landroid/renderscript/Element$DataKind;

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

    .line 197
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 198
    iput p3, p0, Landroid/renderscript/Element$DataKind;->mID:I

    .line 199
    return-void
.end method

.method public static whitelist valueOf(Ljava/lang/String;)Landroid/renderscript/Element$DataKind;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 185
    const-class v0, Landroid/renderscript/Element$DataKind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/renderscript/Element$DataKind;

    return-object v0
.end method

.method public static whitelist values()[Landroid/renderscript/Element$DataKind;
    .locals 1

    .line 185
    sget-object v0, Landroid/renderscript/Element$DataKind;->$VALUES:[Landroid/renderscript/Element$DataKind;

    invoke-virtual {v0}, [Landroid/renderscript/Element$DataKind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/renderscript/Element$DataKind;

    return-object v0
.end method

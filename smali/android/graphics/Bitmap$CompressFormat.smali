.class public final enum Landroid/graphics/Bitmap$CompressFormat;
.super Ljava/lang/Enum;
.source "Bitmap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CompressFormat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/graphics/Bitmap$CompressFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/graphics/Bitmap$CompressFormat;

.field public static final enum whitelist JPEG:Landroid/graphics/Bitmap$CompressFormat;

.field public static final enum whitelist PNG:Landroid/graphics/Bitmap$CompressFormat;

.field public static final enum whitelist WEBP:Landroid/graphics/Bitmap$CompressFormat;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum whitelist WEBP_LOSSLESS:Landroid/graphics/Bitmap$CompressFormat;

.field public static final enum whitelist WEBP_LOSSY:Landroid/graphics/Bitmap$CompressFormat;


# instance fields
.field final greylist-max-o nativeInt:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 11

    .line 1384
    new-instance v0, Landroid/graphics/Bitmap$CompressFormat;

    const-string v1, "JPEG"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/Bitmap$CompressFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .line 1389
    new-instance v1, Landroid/graphics/Bitmap$CompressFormat;

    const-string v3, "PNG"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Landroid/graphics/Bitmap$CompressFormat;-><init>(Ljava/lang/String;II)V

    sput-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 1401
    new-instance v3, Landroid/graphics/Bitmap$CompressFormat;

    const-string v5, "WEBP"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Landroid/graphics/Bitmap$CompressFormat;-><init>(Ljava/lang/String;II)V

    sput-object v3, Landroid/graphics/Bitmap$CompressFormat;->WEBP:Landroid/graphics/Bitmap$CompressFormat;

    .line 1408
    new-instance v5, Landroid/graphics/Bitmap$CompressFormat;

    const-string v7, "WEBP_LOSSY"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Landroid/graphics/Bitmap$CompressFormat;-><init>(Ljava/lang/String;II)V

    sput-object v5, Landroid/graphics/Bitmap$CompressFormat;->WEBP_LOSSY:Landroid/graphics/Bitmap$CompressFormat;

    .line 1416
    new-instance v7, Landroid/graphics/Bitmap$CompressFormat;

    const-string v9, "WEBP_LOSSLESS"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Landroid/graphics/Bitmap$CompressFormat;-><init>(Ljava/lang/String;II)V

    sput-object v7, Landroid/graphics/Bitmap$CompressFormat;->WEBP_LOSSLESS:Landroid/graphics/Bitmap$CompressFormat;

    .line 1378
    const/4 v9, 0x5

    new-array v9, v9, [Landroid/graphics/Bitmap$CompressFormat;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Landroid/graphics/Bitmap$CompressFormat;->$VALUES:[Landroid/graphics/Bitmap$CompressFormat;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "nativeInt"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1418
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1419
    iput p3, p0, Landroid/graphics/Bitmap$CompressFormat;->nativeInt:I

    .line 1420
    return-void
.end method

.method public static whitelist valueOf(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 1378
    const-class v0, Landroid/graphics/Bitmap$CompressFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap$CompressFormat;

    return-object v0
.end method

.method public static whitelist values()[Landroid/graphics/Bitmap$CompressFormat;
    .locals 1

    .line 1378
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->$VALUES:[Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v0}, [Landroid/graphics/Bitmap$CompressFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/Bitmap$CompressFormat;

    return-object v0
.end method

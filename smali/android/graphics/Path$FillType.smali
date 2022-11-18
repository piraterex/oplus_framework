.class public final enum Landroid/graphics/Path$FillType;
.super Ljava/lang/Enum;
.source "Path.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/Path;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FillType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/graphics/Path$FillType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/graphics/Path$FillType;

.field public static final enum whitelist EVEN_ODD:Landroid/graphics/Path$FillType;

.field public static final enum whitelist INVERSE_EVEN_ODD:Landroid/graphics/Path$FillType;

.field public static final enum whitelist INVERSE_WINDING:Landroid/graphics/Path$FillType;

.field public static final enum whitelist WINDING:Landroid/graphics/Path$FillType;


# instance fields
.field final greylist-max-o nativeInt:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 9

    .line 250
    new-instance v0, Landroid/graphics/Path$FillType;

    const-string v1, "WINDING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/Path$FillType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    .line 255
    new-instance v1, Landroid/graphics/Path$FillType;

    const-string v3, "EVEN_ODD"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Landroid/graphics/Path$FillType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    .line 259
    new-instance v3, Landroid/graphics/Path$FillType;

    const-string v5, "INVERSE_WINDING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Landroid/graphics/Path$FillType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Landroid/graphics/Path$FillType;->INVERSE_WINDING:Landroid/graphics/Path$FillType;

    .line 263
    new-instance v5, Landroid/graphics/Path$FillType;

    const-string v7, "INVERSE_EVEN_ODD"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Landroid/graphics/Path$FillType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Landroid/graphics/Path$FillType;->INVERSE_EVEN_ODD:Landroid/graphics/Path$FillType;

    .line 244
    const/4 v7, 0x4

    new-array v7, v7, [Landroid/graphics/Path$FillType;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Landroid/graphics/Path$FillType;->$VALUES:[Landroid/graphics/Path$FillType;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "ni"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 265
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 266
    iput p3, p0, Landroid/graphics/Path$FillType;->nativeInt:I

    .line 267
    return-void
.end method

.method public static whitelist valueOf(Ljava/lang/String;)Landroid/graphics/Path$FillType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 244
    const-class v0, Landroid/graphics/Path$FillType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/graphics/Path$FillType;

    return-object v0
.end method

.method public static whitelist values()[Landroid/graphics/Path$FillType;
    .locals 1

    .line 244
    sget-object v0, Landroid/graphics/Path$FillType;->$VALUES:[Landroid/graphics/Path$FillType;

    invoke-virtual {v0}, [Landroid/graphics/Path$FillType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/Path$FillType;

    return-object v0
.end method

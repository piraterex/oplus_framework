.class public final enum Landroid/graphics/Canvas$VertexMode;
.super Ljava/lang/Enum;
.source "Canvas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/Canvas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VertexMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/graphics/Canvas$VertexMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/graphics/Canvas$VertexMode;

.field public static final enum whitelist TRIANGLES:Landroid/graphics/Canvas$VertexMode;

.field public static final enum whitelist TRIANGLE_FAN:Landroid/graphics/Canvas$VertexMode;

.field public static final enum whitelist TRIANGLE_STRIP:Landroid/graphics/Canvas$VertexMode;


# instance fields
.field final greylist-max-o nativeInt:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 7

    .line 1348
    new-instance v0, Landroid/graphics/Canvas$VertexMode;

    const-string v1, "TRIANGLES"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/Canvas$VertexMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/Canvas$VertexMode;->TRIANGLES:Landroid/graphics/Canvas$VertexMode;

    .line 1349
    new-instance v1, Landroid/graphics/Canvas$VertexMode;

    const-string v3, "TRIANGLE_STRIP"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Landroid/graphics/Canvas$VertexMode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Landroid/graphics/Canvas$VertexMode;->TRIANGLE_STRIP:Landroid/graphics/Canvas$VertexMode;

    .line 1350
    new-instance v3, Landroid/graphics/Canvas$VertexMode;

    const-string v5, "TRIANGLE_FAN"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Landroid/graphics/Canvas$VertexMode;-><init>(Ljava/lang/String;II)V

    sput-object v3, Landroid/graphics/Canvas$VertexMode;->TRIANGLE_FAN:Landroid/graphics/Canvas$VertexMode;

    .line 1347
    const/4 v5, 0x3

    new-array v5, v5, [Landroid/graphics/Canvas$VertexMode;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Landroid/graphics/Canvas$VertexMode;->$VALUES:[Landroid/graphics/Canvas$VertexMode;

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

    .line 1352
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1353
    iput p3, p0, Landroid/graphics/Canvas$VertexMode;->nativeInt:I

    .line 1354
    return-void
.end method

.method public static whitelist valueOf(Ljava/lang/String;)Landroid/graphics/Canvas$VertexMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 1347
    const-class v0, Landroid/graphics/Canvas$VertexMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/graphics/Canvas$VertexMode;

    return-object v0
.end method

.method public static whitelist values()[Landroid/graphics/Canvas$VertexMode;
    .locals 1

    .line 1347
    sget-object v0, Landroid/graphics/Canvas$VertexMode;->$VALUES:[Landroid/graphics/Canvas$VertexMode;

    invoke-virtual {v0}, [Landroid/graphics/Canvas$VertexMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/Canvas$VertexMode;

    return-object v0
.end method

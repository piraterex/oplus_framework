.class public final enum Landroid/graphics/Shader$TileMode;
.super Ljava/lang/Enum;
.source "Shader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/Shader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TileMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/graphics/Shader$TileMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/graphics/Shader$TileMode;

.field public static final enum whitelist CLAMP:Landroid/graphics/Shader$TileMode;

.field public static final enum whitelist DECAL:Landroid/graphics/Shader$TileMode;

.field public static final enum whitelist MIRROR:Landroid/graphics/Shader$TileMode;

.field public static final enum whitelist REPEAT:Landroid/graphics/Shader$TileMode;


# instance fields
.field final blacklist nativeInt:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 9

    .line 94
    new-instance v0, Landroid/graphics/Shader$TileMode;

    const-string v1, "CLAMP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/Shader$TileMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 98
    new-instance v1, Landroid/graphics/Shader$TileMode;

    const-string v3, "REPEAT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Landroid/graphics/Shader$TileMode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    .line 103
    new-instance v3, Landroid/graphics/Shader$TileMode;

    const-string v5, "MIRROR"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Landroid/graphics/Shader$TileMode;-><init>(Ljava/lang/String;II)V

    sput-object v3, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    .line 108
    new-instance v5, Landroid/graphics/Shader$TileMode;

    const-string v7, "DECAL"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Landroid/graphics/Shader$TileMode;-><init>(Ljava/lang/String;II)V

    sput-object v5, Landroid/graphics/Shader$TileMode;->DECAL:Landroid/graphics/Shader$TileMode;

    .line 89
    const/4 v7, 0x4

    new-array v7, v7, [Landroid/graphics/Shader$TileMode;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Landroid/graphics/Shader$TileMode;->$VALUES:[Landroid/graphics/Shader$TileMode;

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

    .line 110
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 111
    iput p3, p0, Landroid/graphics/Shader$TileMode;->nativeInt:I

    .line 112
    return-void
.end method

.method public static whitelist valueOf(Ljava/lang/String;)Landroid/graphics/Shader$TileMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 89
    const-class v0, Landroid/graphics/Shader$TileMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/graphics/Shader$TileMode;

    return-object v0
.end method

.method public static whitelist values()[Landroid/graphics/Shader$TileMode;
    .locals 1

    .line 89
    sget-object v0, Landroid/graphics/Shader$TileMode;->$VALUES:[Landroid/graphics/Shader$TileMode;

    invoke-virtual {v0}, [Landroid/graphics/Shader$TileMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/Shader$TileMode;

    return-object v0
.end method

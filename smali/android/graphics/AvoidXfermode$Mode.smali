.class public final enum Landroid/graphics/AvoidXfermode$Mode;
.super Ljava/lang/Enum;
.source "AvoidXfermode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/AvoidXfermode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/graphics/AvoidXfermode$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/graphics/AvoidXfermode$Mode;

.field public static final enum greylist AVOID:Landroid/graphics/AvoidXfermode$Mode;

.field public static final enum greylist TARGET:Landroid/graphics/AvoidXfermode$Mode;


# instance fields
.field final greylist-max-o nativeInt:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 5

    .line 30
    new-instance v0, Landroid/graphics/AvoidXfermode$Mode;

    const-string v1, "AVOID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/AvoidXfermode$Mode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/AvoidXfermode$Mode;->AVOID:Landroid/graphics/AvoidXfermode$Mode;

    .line 31
    new-instance v1, Landroid/graphics/AvoidXfermode$Mode;

    const-string v3, "TARGET"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Landroid/graphics/AvoidXfermode$Mode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Landroid/graphics/AvoidXfermode$Mode;->TARGET:Landroid/graphics/AvoidXfermode$Mode;

    .line 29
    const/4 v3, 0x2

    new-array v3, v3, [Landroid/graphics/AvoidXfermode$Mode;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Landroid/graphics/AvoidXfermode$Mode;->$VALUES:[Landroid/graphics/AvoidXfermode$Mode;

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

    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 34
    iput p3, p0, Landroid/graphics/AvoidXfermode$Mode;->nativeInt:I

    .line 35
    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/graphics/AvoidXfermode$Mode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 29
    const-class v0, Landroid/graphics/AvoidXfermode$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/graphics/AvoidXfermode$Mode;

    return-object v0
.end method

.method public static blacklist values()[Landroid/graphics/AvoidXfermode$Mode;
    .locals 1

    .line 29
    sget-object v0, Landroid/graphics/AvoidXfermode$Mode;->$VALUES:[Landroid/graphics/AvoidXfermode$Mode;

    invoke-virtual {v0}, [Landroid/graphics/AvoidXfermode$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/AvoidXfermode$Mode;

    return-object v0
.end method

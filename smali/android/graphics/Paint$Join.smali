.class public final enum Landroid/graphics/Paint$Join;
.super Ljava/lang/Enum;
.source "Paint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/Paint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Join"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/graphics/Paint$Join;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/graphics/Paint$Join;

.field public static final enum whitelist BEVEL:Landroid/graphics/Paint$Join;

.field public static final enum whitelist MITER:Landroid/graphics/Paint$Join;

.field public static final enum whitelist ROUND:Landroid/graphics/Paint$Join;


# instance fields
.field final greylist-max-o nativeInt:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 7

    .line 531
    new-instance v0, Landroid/graphics/Paint$Join;

    const-string v1, "MITER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/Paint$Join;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    .line 535
    new-instance v1, Landroid/graphics/Paint$Join;

    const-string v3, "ROUND"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Landroid/graphics/Paint$Join;-><init>(Ljava/lang/String;II)V

    sput-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    .line 539
    new-instance v3, Landroid/graphics/Paint$Join;

    const-string v5, "BEVEL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Landroid/graphics/Paint$Join;-><init>(Ljava/lang/String;II)V

    sput-object v3, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    .line 527
    const/4 v5, 0x3

    new-array v5, v5, [Landroid/graphics/Paint$Join;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Landroid/graphics/Paint$Join;->$VALUES:[Landroid/graphics/Paint$Join;

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

    .line 541
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 542
    iput p3, p0, Landroid/graphics/Paint$Join;->nativeInt:I

    .line 543
    return-void
.end method

.method public static whitelist valueOf(Ljava/lang/String;)Landroid/graphics/Paint$Join;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 527
    const-class v0, Landroid/graphics/Paint$Join;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/graphics/Paint$Join;

    return-object v0
.end method

.method public static whitelist values()[Landroid/graphics/Paint$Join;
    .locals 1

    .line 527
    sget-object v0, Landroid/graphics/Paint$Join;->$VALUES:[Landroid/graphics/Paint$Join;

    invoke-virtual {v0}, [Landroid/graphics/Paint$Join;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/Paint$Join;

    return-object v0
.end method

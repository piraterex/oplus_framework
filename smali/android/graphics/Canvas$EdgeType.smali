.class public final enum Landroid/graphics/Canvas$EdgeType;
.super Ljava/lang/Enum;
.source "Canvas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/Canvas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EdgeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/graphics/Canvas$EdgeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/graphics/Canvas$EdgeType;

.field public static final enum whitelist AA:Landroid/graphics/Canvas$EdgeType;

.field public static final enum whitelist BW:Landroid/graphics/Canvas$EdgeType;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 5

    .line 1149
    new-instance v0, Landroid/graphics/Canvas$EdgeType;

    const-string v1, "BW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/graphics/Canvas$EdgeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/graphics/Canvas$EdgeType;->BW:Landroid/graphics/Canvas$EdgeType;

    .line 1154
    new-instance v1, Landroid/graphics/Canvas$EdgeType;

    const-string v3, "AA"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Landroid/graphics/Canvas$EdgeType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroid/graphics/Canvas$EdgeType;->AA:Landroid/graphics/Canvas$EdgeType;

    .line 1144
    const/4 v3, 0x2

    new-array v3, v3, [Landroid/graphics/Canvas$EdgeType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Landroid/graphics/Canvas$EdgeType;->$VALUES:[Landroid/graphics/Canvas$EdgeType;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1144
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static whitelist valueOf(Ljava/lang/String;)Landroid/graphics/Canvas$EdgeType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 1144
    const-class v0, Landroid/graphics/Canvas$EdgeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/graphics/Canvas$EdgeType;

    return-object v0
.end method

.method public static whitelist values()[Landroid/graphics/Canvas$EdgeType;
    .locals 1

    .line 1144
    sget-object v0, Landroid/graphics/Canvas$EdgeType;->$VALUES:[Landroid/graphics/Canvas$EdgeType;

    invoke-virtual {v0}, [Landroid/graphics/Canvas$EdgeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/Canvas$EdgeType;

    return-object v0
.end method

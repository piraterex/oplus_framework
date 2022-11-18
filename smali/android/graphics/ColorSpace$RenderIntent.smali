.class public final enum Landroid/graphics/ColorSpace$RenderIntent;
.super Ljava/lang/Enum;
.source "ColorSpace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/ColorSpace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RenderIntent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/graphics/ColorSpace$RenderIntent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/graphics/ColorSpace$RenderIntent;

.field public static final enum whitelist ABSOLUTE:Landroid/graphics/ColorSpace$RenderIntent;

.field public static final enum whitelist PERCEPTUAL:Landroid/graphics/ColorSpace$RenderIntent;

.field public static final enum whitelist RELATIVE:Landroid/graphics/ColorSpace$RenderIntent;

.field public static final enum whitelist SATURATION:Landroid/graphics/ColorSpace$RenderIntent;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 9

    .line 728
    new-instance v0, Landroid/graphics/ColorSpace$RenderIntent;

    const-string v1, "PERCEPTUAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/graphics/ColorSpace$RenderIntent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/graphics/ColorSpace$RenderIntent;->PERCEPTUAL:Landroid/graphics/ColorSpace$RenderIntent;

    .line 734
    new-instance v1, Landroid/graphics/ColorSpace$RenderIntent;

    const-string v3, "RELATIVE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Landroid/graphics/ColorSpace$RenderIntent;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroid/graphics/ColorSpace$RenderIntent;->RELATIVE:Landroid/graphics/ColorSpace$RenderIntent;

    .line 743
    new-instance v3, Landroid/graphics/ColorSpace$RenderIntent;

    const-string v5, "SATURATION"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Landroid/graphics/ColorSpace$RenderIntent;-><init>(Ljava/lang/String;I)V

    sput-object v3, Landroid/graphics/ColorSpace$RenderIntent;->SATURATION:Landroid/graphics/ColorSpace$RenderIntent;

    .line 750
    new-instance v5, Landroid/graphics/ColorSpace$RenderIntent;

    const-string v7, "ABSOLUTE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Landroid/graphics/ColorSpace$RenderIntent;-><init>(Ljava/lang/String;I)V

    sput-object v5, Landroid/graphics/ColorSpace$RenderIntent;->ABSOLUTE:Landroid/graphics/ColorSpace$RenderIntent;

    .line 718
    const/4 v7, 0x4

    new-array v7, v7, [Landroid/graphics/ColorSpace$RenderIntent;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Landroid/graphics/ColorSpace$RenderIntent;->$VALUES:[Landroid/graphics/ColorSpace$RenderIntent;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 718
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static whitelist valueOf(Ljava/lang/String;)Landroid/graphics/ColorSpace$RenderIntent;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 718
    const-class v0, Landroid/graphics/ColorSpace$RenderIntent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/graphics/ColorSpace$RenderIntent;

    return-object v0
.end method

.method public static whitelist values()[Landroid/graphics/ColorSpace$RenderIntent;
    .locals 1

    .line 718
    sget-object v0, Landroid/graphics/ColorSpace$RenderIntent;->$VALUES:[Landroid/graphics/ColorSpace$RenderIntent;

    invoke-virtual {v0}, [Landroid/graphics/ColorSpace$RenderIntent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/ColorSpace$RenderIntent;

    return-object v0
.end method

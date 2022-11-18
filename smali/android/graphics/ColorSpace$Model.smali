.class public final enum Landroid/graphics/ColorSpace$Model;
.super Ljava/lang/Enum;
.source "ColorSpace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/ColorSpace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Model"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/graphics/ColorSpace$Model;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/graphics/ColorSpace$Model;

.field public static final enum whitelist CMYK:Landroid/graphics/ColorSpace$Model;

.field public static final enum whitelist LAB:Landroid/graphics/ColorSpace$Model;

.field public static final enum whitelist RGB:Landroid/graphics/ColorSpace$Model;

.field public static final enum whitelist XYZ:Landroid/graphics/ColorSpace$Model;


# instance fields
.field private final greylist-max-o mComponentCount:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 10

    .line 838
    new-instance v0, Landroid/graphics/ColorSpace$Model;

    const-string v1, "RGB"

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/ColorSpace$Model;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/ColorSpace$Model;->RGB:Landroid/graphics/ColorSpace$Model;

    .line 844
    new-instance v1, Landroid/graphics/ColorSpace$Model;

    const-string v4, "XYZ"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v3}, Landroid/graphics/ColorSpace$Model;-><init>(Ljava/lang/String;II)V

    sput-object v1, Landroid/graphics/ColorSpace$Model;->XYZ:Landroid/graphics/ColorSpace$Model;

    .line 850
    new-instance v4, Landroid/graphics/ColorSpace$Model;

    const-string v6, "LAB"

    const/4 v7, 0x2

    invoke-direct {v4, v6, v7, v3}, Landroid/graphics/ColorSpace$Model;-><init>(Ljava/lang/String;II)V

    sput-object v4, Landroid/graphics/ColorSpace$Model;->LAB:Landroid/graphics/ColorSpace$Model;

    .line 857
    new-instance v6, Landroid/graphics/ColorSpace$Model;

    const-string v8, "CMYK"

    const/4 v9, 0x4

    invoke-direct {v6, v8, v3, v9}, Landroid/graphics/ColorSpace$Model;-><init>(Ljava/lang/String;II)V

    sput-object v6, Landroid/graphics/ColorSpace$Model;->CMYK:Landroid/graphics/ColorSpace$Model;

    .line 832
    new-array v8, v9, [Landroid/graphics/ColorSpace$Model;

    aput-object v0, v8, v2

    aput-object v1, v8, v5

    aput-object v4, v8, v7

    aput-object v6, v8, v3

    sput-object v8, Landroid/graphics/ColorSpace$Model;->$VALUES:[Landroid/graphics/ColorSpace$Model;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "componentCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 861
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 862
    iput p3, p0, Landroid/graphics/ColorSpace$Model;->mComponentCount:I

    .line 863
    return-void
.end method

.method public static whitelist valueOf(Ljava/lang/String;)Landroid/graphics/ColorSpace$Model;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 832
    const-class v0, Landroid/graphics/ColorSpace$Model;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/graphics/ColorSpace$Model;

    return-object v0
.end method

.method public static whitelist values()[Landroid/graphics/ColorSpace$Model;
    .locals 1

    .line 832
    sget-object v0, Landroid/graphics/ColorSpace$Model;->$VALUES:[Landroid/graphics/ColorSpace$Model;

    invoke-virtual {v0}, [Landroid/graphics/ColorSpace$Model;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/ColorSpace$Model;

    return-object v0
.end method


# virtual methods
.method public whitelist getComponentCount()I
    .locals 1

    .line 872
    iget v0, p0, Landroid/graphics/ColorSpace$Model;->mComponentCount:I

    return v0
.end method

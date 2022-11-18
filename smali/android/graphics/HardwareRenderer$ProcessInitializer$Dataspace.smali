.class final enum Landroid/graphics/HardwareRenderer$ProcessInitializer$Dataspace;
.super Ljava/lang/Enum;
.source "HardwareRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/HardwareRenderer$ProcessInitializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Dataspace"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/graphics/HardwareRenderer$ProcessInitializer$Dataspace;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/graphics/HardwareRenderer$ProcessInitializer$Dataspace;

.field public static final enum blacklist DISPLAY_P3:Landroid/graphics/HardwareRenderer$ProcessInitializer$Dataspace;

.field public static final enum blacklist SCRGB:Landroid/graphics/HardwareRenderer$ProcessInitializer$Dataspace;

.field public static final enum blacklist SRGB:Landroid/graphics/HardwareRenderer$ProcessInitializer$Dataspace;


# instance fields
.field private final blacklist mColorSpace:Landroid/graphics/ColorSpace$Named;

.field private final blacklist mNativeDataspace:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmNativeDataspace(Landroid/graphics/HardwareRenderer$ProcessInitializer$Dataspace;)I
    .locals 0

    iget p0, p0, Landroid/graphics/HardwareRenderer$ProcessInitializer$Dataspace;->mNativeDataspace:I

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 9

    .line 1215
    new-instance v0, Landroid/graphics/HardwareRenderer$ProcessInitializer$Dataspace;

    sget-object v1, Landroid/graphics/ColorSpace$Named;->DISPLAY_P3:Landroid/graphics/ColorSpace$Named;

    const-string v2, "DISPLAY_P3"

    const/4 v3, 0x0

    const/high16 v4, 0x88a0000

    invoke-direct {v0, v2, v3, v1, v4}, Landroid/graphics/HardwareRenderer$ProcessInitializer$Dataspace;-><init>(Ljava/lang/String;ILandroid/graphics/ColorSpace$Named;I)V

    sput-object v0, Landroid/graphics/HardwareRenderer$ProcessInitializer$Dataspace;->DISPLAY_P3:Landroid/graphics/HardwareRenderer$ProcessInitializer$Dataspace;

    .line 1216
    new-instance v1, Landroid/graphics/HardwareRenderer$ProcessInitializer$Dataspace;

    sget-object v2, Landroid/graphics/ColorSpace$Named;->EXTENDED_SRGB:Landroid/graphics/ColorSpace$Named;

    const-string v4, "SCRGB"

    const/4 v5, 0x1

    const/high16 v6, 0x18810000

    invoke-direct {v1, v4, v5, v2, v6}, Landroid/graphics/HardwareRenderer$ProcessInitializer$Dataspace;-><init>(Ljava/lang/String;ILandroid/graphics/ColorSpace$Named;I)V

    sput-object v1, Landroid/graphics/HardwareRenderer$ProcessInitializer$Dataspace;->SCRGB:Landroid/graphics/HardwareRenderer$ProcessInitializer$Dataspace;

    .line 1217
    new-instance v2, Landroid/graphics/HardwareRenderer$ProcessInitializer$Dataspace;

    sget-object v4, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    const-string v6, "SRGB"

    const/4 v7, 0x2

    const/high16 v8, 0x8810000

    invoke-direct {v2, v6, v7, v4, v8}, Landroid/graphics/HardwareRenderer$ProcessInitializer$Dataspace;-><init>(Ljava/lang/String;ILandroid/graphics/ColorSpace$Named;I)V

    sput-object v2, Landroid/graphics/HardwareRenderer$ProcessInitializer$Dataspace;->SRGB:Landroid/graphics/HardwareRenderer$ProcessInitializer$Dataspace;

    .line 1214
    const/4 v4, 0x3

    new-array v4, v4, [Landroid/graphics/HardwareRenderer$ProcessInitializer$Dataspace;

    aput-object v0, v4, v3

    aput-object v1, v4, v5

    aput-object v2, v4, v7

    sput-object v4, Landroid/graphics/HardwareRenderer$ProcessInitializer$Dataspace;->$VALUES:[Landroid/graphics/HardwareRenderer$ProcessInitializer$Dataspace;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;ILandroid/graphics/ColorSpace$Named;I)V
    .locals 0
    .param p3, "colorSpace"    # Landroid/graphics/ColorSpace$Named;
    .param p4, "nativeDataspace"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/ColorSpace$Named;",
            "I)V"
        }
    .end annotation

    .line 1221
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1222
    iput-object p3, p0, Landroid/graphics/HardwareRenderer$ProcessInitializer$Dataspace;->mColorSpace:Landroid/graphics/ColorSpace$Named;

    .line 1223
    iput p4, p0, Landroid/graphics/HardwareRenderer$ProcessInitializer$Dataspace;->mNativeDataspace:I

    .line 1224
    return-void
.end method

.method static blacklist find(Landroid/graphics/ColorSpace;)Ljava/util/Optional;
    .locals 2
    .param p0, "colorSpace"    # Landroid/graphics/ColorSpace;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/ColorSpace;",
            ")",
            "Ljava/util/Optional<",
            "Landroid/graphics/HardwareRenderer$ProcessInitializer$Dataspace;",
            ">;"
        }
    .end annotation

    .line 1227
    invoke-static {}, Landroid/graphics/HardwareRenderer$ProcessInitializer$Dataspace;->values()[Landroid/graphics/HardwareRenderer$ProcessInitializer$Dataspace;

    move-result-object v0

    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Landroid/graphics/HardwareRenderer$ProcessInitializer$Dataspace$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/graphics/HardwareRenderer$ProcessInitializer$Dataspace$$ExternalSyntheticLambda0;-><init>(Landroid/graphics/ColorSpace;)V

    .line 1228
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 1229
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    .line 1227
    return-object v0
.end method

.method static synthetic blacklist lambda$find$0(Landroid/graphics/ColorSpace;Landroid/graphics/HardwareRenderer$ProcessInitializer$Dataspace;)Z
    .locals 1
    .param p0, "colorSpace"    # Landroid/graphics/ColorSpace;
    .param p1, "d"    # Landroid/graphics/HardwareRenderer$ProcessInitializer$Dataspace;

    .line 1228
    iget-object v0, p1, Landroid/graphics/HardwareRenderer$ProcessInitializer$Dataspace;->mColorSpace:Landroid/graphics/ColorSpace$Named;

    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/graphics/ColorSpace;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/graphics/HardwareRenderer$ProcessInitializer$Dataspace;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 1214
    const-class v0, Landroid/graphics/HardwareRenderer$ProcessInitializer$Dataspace;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/graphics/HardwareRenderer$ProcessInitializer$Dataspace;

    return-object v0
.end method

.method public static blacklist values()[Landroid/graphics/HardwareRenderer$ProcessInitializer$Dataspace;
    .locals 1

    .line 1214
    sget-object v0, Landroid/graphics/HardwareRenderer$ProcessInitializer$Dataspace;->$VALUES:[Landroid/graphics/HardwareRenderer$ProcessInitializer$Dataspace;

    invoke-virtual {v0}, [Landroid/graphics/HardwareRenderer$ProcessInitializer$Dataspace;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/HardwareRenderer$ProcessInitializer$Dataspace;

    return-object v0
.end method

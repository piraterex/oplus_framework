.class public Landroid/graphics/ImageDecoder$ImageInfo;
.super Ljava/lang/Object;
.source "ImageDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/ImageDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageInfo"
.end annotation


# instance fields
.field private greylist-max-o mDecoder:Landroid/graphics/ImageDecoder;

.field private final greylist-max-o mSize:Landroid/util/Size;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmDecoder(Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder;)V
    .locals 0

    iput-object p1, p0, Landroid/graphics/ImageDecoder$ImageInfo;->mDecoder:Landroid/graphics/ImageDecoder;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/graphics/ImageDecoder;)V
    .locals 3
    .param p1, "decoder"    # Landroid/graphics/ImageDecoder;

    .line 575
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 576
    new-instance v0, Landroid/util/Size;

    invoke-static {p1}, Landroid/graphics/ImageDecoder;->-$$Nest$fgetmWidth(Landroid/graphics/ImageDecoder;)I

    move-result v1

    invoke-static {p1}, Landroid/graphics/ImageDecoder;->-$$Nest$fgetmHeight(Landroid/graphics/ImageDecoder;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Landroid/graphics/ImageDecoder$ImageInfo;->mSize:Landroid/util/Size;

    .line 577
    iput-object p1, p0, Landroid/graphics/ImageDecoder$ImageInfo;->mDecoder:Landroid/graphics/ImageDecoder;

    .line 578
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/graphics/ImageDecoder$ImageInfo;-><init>(Landroid/graphics/ImageDecoder;)V

    return-void
.end method


# virtual methods
.method public whitelist getColorSpace()Landroid/graphics/ColorSpace;
    .locals 1

    .line 615
    iget-object v0, p0, Landroid/graphics/ImageDecoder$ImageInfo;->mDecoder:Landroid/graphics/ImageDecoder;

    invoke-static {v0}, Landroid/graphics/ImageDecoder;->-$$Nest$mgetColorSpace(Landroid/graphics/ImageDecoder;)Landroid/graphics/ColorSpace;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getMimeType()Ljava/lang/String;
    .locals 1

    .line 593
    iget-object v0, p0, Landroid/graphics/ImageDecoder$ImageInfo;->mDecoder:Landroid/graphics/ImageDecoder;

    invoke-static {v0}, Landroid/graphics/ImageDecoder;->-$$Nest$mgetMimeType(Landroid/graphics/ImageDecoder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSize()Landroid/util/Size;
    .locals 1

    .line 585
    iget-object v0, p0, Landroid/graphics/ImageDecoder$ImageInfo;->mSize:Landroid/util/Size;

    return-object v0
.end method

.method public whitelist isAnimated()Z
    .locals 1

    .line 603
    iget-object v0, p0, Landroid/graphics/ImageDecoder$ImageInfo;->mDecoder:Landroid/graphics/ImageDecoder;

    invoke-static {v0}, Landroid/graphics/ImageDecoder;->-$$Nest$fgetmAnimated(Landroid/graphics/ImageDecoder;)Z

    move-result v0

    return v0
.end method

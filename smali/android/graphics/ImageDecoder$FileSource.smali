.class Landroid/graphics/ImageDecoder$FileSource;
.super Landroid/graphics/ImageDecoder$Source;
.source "ImageDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/ImageDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FileSource"
.end annotation


# instance fields
.field private final greylist-max-o mFile:Ljava/io/File;


# direct methods
.method constructor greylist-max-o <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    .line 533
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/graphics/ImageDecoder$Source;-><init>(Landroid/graphics/ImageDecoder$Source-IA;)V

    .line 534
    iput-object p1, p0, Landroid/graphics/ImageDecoder$FileSource;->mFile:Ljava/io/File;

    .line 535
    return-void
.end method


# virtual methods
.method public blacklist createImageDecoder(Z)Landroid/graphics/ImageDecoder;
    .locals 1
    .param p1, "preferAnimation"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 541
    iget-object v0, p0, Landroid/graphics/ImageDecoder$FileSource;->mFile:Ljava/io/File;

    invoke-static {v0, p1, p0}, Landroid/graphics/ImageDecoder;->-$$Nest$smcreateFromFile(Ljava/io/File;ZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;

    move-result-object v0

    return-object v0
.end method

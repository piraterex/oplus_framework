.class Landroid/graphics/ImageDecoder$InputStreamSource;
.super Landroid/graphics/ImageDecoder$Source;
.source "ImageDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/ImageDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InputStreamSource"
.end annotation


# instance fields
.field final greylist-max-o mInputDensity:I

.field greylist-max-o mInputStream:Ljava/io/InputStream;

.field final greylist-max-o mResources:Landroid/content/res/Resources;


# direct methods
.method constructor greylist-max-o <init>(Landroid/content/res/Resources;Ljava/io/InputStream;I)V
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "is"    # Ljava/io/InputStream;
    .param p3, "inputDensity"    # I

    .line 377
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/graphics/ImageDecoder$Source;-><init>(Landroid/graphics/ImageDecoder$Source-IA;)V

    .line 378
    if-eqz p2, :cond_0

    .line 381
    iput-object p1, p0, Landroid/graphics/ImageDecoder$InputStreamSource;->mResources:Landroid/content/res/Resources;

    .line 382
    iput-object p2, p0, Landroid/graphics/ImageDecoder$InputStreamSource;->mInputStream:Ljava/io/InputStream;

    .line 383
    iput p3, p0, Landroid/graphics/ImageDecoder$InputStreamSource;->mInputDensity:I

    .line 384
    return-void

    .line 379
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The InputStream cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist createImageDecoder(Z)Landroid/graphics/ImageDecoder;
    .locals 2
    .param p1, "preferAnimation"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 399
    monitor-enter p0

    .line 400
    :try_start_0
    iget-object v0, p0, Landroid/graphics/ImageDecoder$InputStreamSource;->mInputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 403
    nop

    .line 404
    .local v0, "is":Ljava/io/InputStream;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/graphics/ImageDecoder$InputStreamSource;->mInputStream:Ljava/io/InputStream;

    .line 405
    const/4 v1, 0x0

    invoke-static {v0, v1, p1, p0}, Landroid/graphics/ImageDecoder;->-$$Nest$smcreateFromStream(Ljava/io/InputStream;ZZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 401
    .end local v0    # "is":Ljava/io/InputStream;
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Cannot reuse InputStreamSource"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/graphics/ImageDecoder$InputStreamSource;
    .end local p1    # "preferAnimation":Z
    throw v0

    .line 406
    .restart local p0    # "this":Landroid/graphics/ImageDecoder$InputStreamSource;
    .restart local p1    # "preferAnimation":Z
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public greylist-max-o getDensity()I
    .locals 1

    .line 394
    iget v0, p0, Landroid/graphics/ImageDecoder$InputStreamSource;->mInputDensity:I

    return v0
.end method

.method public greylist-max-o getResources()Landroid/content/res/Resources;
    .locals 1

    .line 391
    iget-object v0, p0, Landroid/graphics/ImageDecoder$InputStreamSource;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.class Landroid/graphics/ImageDecoder$ResourceSource;
.super Landroid/graphics/ImageDecoder$Source;
.source "ImageDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/ImageDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResourceSource"
.end annotation


# instance fields
.field private greylist-max-o mLock:Ljava/lang/Object;

.field greylist-max-o mResDensity:I

.field final greylist-max-o mResId:I

.field final greylist-max-o mResources:Landroid/content/res/Resources;


# direct methods
.method constructor greylist-max-o <init>(Landroid/content/res/Resources;I)V
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "resId"    # I

    .line 456
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/graphics/ImageDecoder$Source;-><init>(Landroid/graphics/ImageDecoder$Source-IA;)V

    .line 465
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/graphics/ImageDecoder$ResourceSource;->mLock:Ljava/lang/Object;

    .line 457
    iput-object p1, p0, Landroid/graphics/ImageDecoder$ResourceSource;->mResources:Landroid/content/res/Resources;

    .line 458
    iput p2, p0, Landroid/graphics/ImageDecoder$ResourceSource;->mResId:I

    .line 459
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/ImageDecoder$ResourceSource;->mResDensity:I

    .line 460
    return-void
.end method


# virtual methods
.method public blacklist createImageDecoder(Z)Landroid/graphics/ImageDecoder;
    .locals 5
    .param p1, "preferAnimation"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 479
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 482
    .local v0, "value":Landroid/util/TypedValue;
    iget-object v1, p0, Landroid/graphics/ImageDecoder$ResourceSource;->mResources:Landroid/content/res/Resources;

    iget v2, p0, Landroid/graphics/ImageDecoder$ResourceSource;->mResId:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/Resources;->openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v1

    .line 484
    .local v1, "is":Ljava/io/InputStream;
    iget-object v2, p0, Landroid/graphics/ImageDecoder$ResourceSource;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 485
    :try_start_0
    iget v3, v0, Landroid/util/TypedValue;->density:I

    if-nez v3, :cond_0

    .line 486
    const/16 v3, 0xa0

    iput v3, p0, Landroid/graphics/ImageDecoder$ResourceSource;->mResDensity:I

    goto :goto_0

    .line 487
    :cond_0
    iget v3, v0, Landroid/util/TypedValue;->density:I

    const v4, 0xffff

    if-eq v3, v4, :cond_1

    .line 488
    iget v3, v0, Landroid/util/TypedValue;->density:I

    iput v3, p0, Landroid/graphics/ImageDecoder$ResourceSource;->mResDensity:I

    .line 490
    :cond_1
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 492
    move-object v2, v1

    check-cast v2, Landroid/content/res/AssetManager$AssetInputStream;

    invoke-static {v2, p1, p0}, Landroid/graphics/ImageDecoder;->-$$Nest$smcreateFromAsset(Landroid/content/res/AssetManager$AssetInputStream;ZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;

    move-result-object v2

    return-object v2

    .line 490
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public greylist-max-o getDensity()I
    .locals 2

    .line 472
    iget-object v0, p0, Landroid/graphics/ImageDecoder$ResourceSource;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 473
    :try_start_0
    iget v1, p0, Landroid/graphics/ImageDecoder$ResourceSource;->mResDensity:I

    monitor-exit v0

    return v1

    .line 474
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist-max-o getResources()Landroid/content/res/Resources;
    .locals 1

    .line 468
    iget-object v0, p0, Landroid/graphics/ImageDecoder$ResourceSource;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

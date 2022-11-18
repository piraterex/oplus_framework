.class Landroid/graphics/ImageDecoder$ContentResolverSource;
.super Landroid/graphics/ImageDecoder$Source;
.source "ImageDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/ImageDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ContentResolverSource"
.end annotation


# instance fields
.field private final greylist-max-o mResolver:Landroid/content/ContentResolver;

.field private final greylist-max-o mResources:Landroid/content/res/Resources;

.field private final greylist-max-o mUri:Landroid/net/Uri;


# direct methods
.method constructor greylist-max-o <init>(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/res/Resources;)V
    .locals 1
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "res"    # Landroid/content/res/Resources;

    .line 254
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/graphics/ImageDecoder$Source;-><init>(Landroid/graphics/ImageDecoder$Source-IA;)V

    .line 255
    iput-object p1, p0, Landroid/graphics/ImageDecoder$ContentResolverSource;->mResolver:Landroid/content/ContentResolver;

    .line 256
    iput-object p2, p0, Landroid/graphics/ImageDecoder$ContentResolverSource;->mUri:Landroid/net/Uri;

    .line 257
    iput-object p3, p0, Landroid/graphics/ImageDecoder$ContentResolverSource;->mResources:Landroid/content/res/Resources;

    .line 258
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

    .line 269
    const/4 v0, 0x0

    .line 271
    .local v0, "assetFd":Landroid/content/res/AssetFileDescriptor;
    :try_start_0
    const-string v1, "content"

    iget-object v2, p0, Landroid/graphics/ImageDecoder$ContentResolverSource;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 272
    iget-object v1, p0, Landroid/graphics/ImageDecoder$ContentResolverSource;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Landroid/graphics/ImageDecoder$ContentResolverSource;->mUri:Landroid/net/Uri;

    const-string v3, "image/*"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->openTypedAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 275
    :cond_0
    iget-object v1, p0, Landroid/graphics/ImageDecoder$ContentResolverSource;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Landroid/graphics/ImageDecoder$ContentResolverSource;->mUri:Landroid/net/Uri;

    const-string/jumbo v3, "r"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 279
    :goto_0
    goto :goto_1

    .line 277
    :catch_0
    move-exception v1

    .line 281
    :goto_1
    if-nez v0, :cond_2

    .line 284
    iget-object v1, p0, Landroid/graphics/ImageDecoder$ContentResolverSource;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Landroid/graphics/ImageDecoder$ContentResolverSource;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 285
    .local v1, "is":Ljava/io/InputStream;
    if-eqz v1, :cond_1

    .line 289
    const/4 v2, 0x1

    invoke-static {v1, v2, p1, p0}, Landroid/graphics/ImageDecoder;->-$$Nest$smcreateFromStream(Ljava/io/InputStream;ZZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;

    move-result-object v2

    return-object v2

    .line 286
    :cond_1
    new-instance v2, Ljava/io/FileNotFoundException;

    iget-object v3, p0, Landroid/graphics/ImageDecoder$ContentResolverSource;->mUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 292
    .end local v1    # "is":Ljava/io/InputStream;
    :cond_2
    invoke-static {v0, p1, p0}, Landroid/graphics/ImageDecoder;->-$$Nest$smcreateFromAssetFileDescriptor(Landroid/content/res/AssetFileDescriptor;ZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;

    move-result-object v1

    return-object v1
.end method

.method greylist-max-o getResources()Landroid/content/res/Resources;
    .locals 1

    .line 265
    iget-object v0, p0, Landroid/graphics/ImageDecoder$ContentResolverSource;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

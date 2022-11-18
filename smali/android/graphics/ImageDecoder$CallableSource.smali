.class Landroid/graphics/ImageDecoder$CallableSource;
.super Landroid/graphics/ImageDecoder$Source;
.source "ImageDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/ImageDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CallableSource"
.end annotation


# instance fields
.field private final blacklist mCallable:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "Landroid/content/res/AssetFileDescriptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Ljava/util/concurrent/Callable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Landroid/content/res/AssetFileDescriptor;",
            ">;)V"
        }
    .end annotation

    .line 546
    .local p1, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Landroid/content/res/AssetFileDescriptor;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/graphics/ImageDecoder$Source;-><init>(Landroid/graphics/ImageDecoder$Source-IA;)V

    .line 547
    iput-object p1, p0, Landroid/graphics/ImageDecoder$CallableSource;->mCallable:Ljava/util/concurrent/Callable;

    .line 548
    return-void
.end method


# virtual methods
.method public blacklist createImageDecoder(Z)Landroid/graphics/ImageDecoder;
    .locals 3
    .param p1, "preferAnimation"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 554
    const/4 v0, 0x0

    .line 556
    .local v0, "assetFd":Landroid/content/res/AssetFileDescriptor;
    :try_start_0
    iget-object v1, p0, Landroid/graphics/ImageDecoder$CallableSource;->mCallable:Ljava/util/concurrent/Callable;

    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 563
    nop

    .line 564
    invoke-static {v0, p1, p0}, Landroid/graphics/ImageDecoder;->-$$Nest$smcreateFromAssetFileDescriptor(Landroid/content/res/AssetFileDescriptor;ZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;

    move-result-object v1

    return-object v1

    .line 557
    :catch_0
    move-exception v1

    .line 558
    .local v1, "e":Ljava/lang/Exception;
    instance-of v2, v1, Ljava/io/IOException;

    if-eqz v2, :cond_0

    .line 559
    move-object v2, v1

    check-cast v2, Ljava/io/IOException;

    throw v2

    .line 561
    :cond_0
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

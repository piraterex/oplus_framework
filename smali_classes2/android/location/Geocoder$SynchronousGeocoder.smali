.class Landroid/location/Geocoder$SynchronousGeocoder;
.super Ljava/lang/Object;
.source "Geocoder.java"

# interfaces
.implements Landroid/location/Geocoder$GeocodeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/Geocoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SynchronousGeocoder"
.end annotation


# instance fields
.field private blacklist mError:Ljava/lang/String;

.field private final blacklist mLatch:Ljava/util/concurrent/CountDownLatch;

.field private blacklist mResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/location/Address;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>()V
    .locals 2

    .line 364
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 359
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Landroid/location/Geocoder$SynchronousGeocoder;->mLatch:Ljava/util/concurrent/CountDownLatch;

    .line 361
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/location/Geocoder$SynchronousGeocoder;->mError:Ljava/lang/String;

    .line 362
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/location/Geocoder$SynchronousGeocoder;->mResults:Ljava/util/List;

    .line 364
    return-void
.end method


# virtual methods
.method public blacklist getResults()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/location/Address;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 380
    :try_start_0
    iget-object v0, p0, Landroid/location/Geocoder$SynchronousGeocoder;->mLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/32 v1, 0xea60

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 381
    const-string v0, "Service not Available"

    iput-object v0, p0, Landroid/location/Geocoder$SynchronousGeocoder;->mError:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 385
    :cond_0
    goto :goto_0

    .line 383
    :catch_0
    move-exception v0

    .line 384
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 387
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_0
    iget-object v0, p0, Landroid/location/Geocoder$SynchronousGeocoder;->mError:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 390
    iget-object v0, p0, Landroid/location/Geocoder$SynchronousGeocoder;->mResults:Ljava/util/List;

    return-object v0

    .line 388
    :cond_1
    new-instance v0, Ljava/io/IOException;

    iget-object v1, p0, Landroid/location/Geocoder$SynchronousGeocoder;->mError:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist onError(Ljava/lang/String;)V
    .locals 1
    .param p1, "errorMessage"    # Ljava/lang/String;

    .line 374
    iput-object p1, p0, Landroid/location/Geocoder$SynchronousGeocoder;->mError:Ljava/lang/String;

    .line 375
    iget-object v0, p0, Landroid/location/Geocoder$SynchronousGeocoder;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 376
    return-void
.end method

.method public whitelist onGeocode(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/location/Address;",
            ">;)V"
        }
    .end annotation

    .line 368
    .local p1, "addresses":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    iput-object p1, p0, Landroid/location/Geocoder$SynchronousGeocoder;->mResults:Ljava/util/List;

    .line 369
    iget-object v0, p0, Landroid/location/Geocoder$SynchronousGeocoder;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 370
    return-void
.end method

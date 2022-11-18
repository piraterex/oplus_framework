.class Landroid/location/LocationManager$BatchedLocationCallbackWrapper;
.super Ljava/lang/Object;
.source "LocationManager.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/LocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BatchedLocationCallbackWrapper"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final blacklist mCallback:Landroid/location/BatchedLocationCallback;


# direct methods
.method constructor blacklist <init>(Landroid/location/BatchedLocationCallback;)V
    .locals 0
    .param p1, "callback"    # Landroid/location/BatchedLocationCallback;

    .line 3688
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3689
    iput-object p1, p0, Landroid/location/LocationManager$BatchedLocationCallbackWrapper;->mCallback:Landroid/location/BatchedLocationCallback;

    .line 3690
    return-void
.end method


# virtual methods
.method public whitelist onLocationChanged(Landroid/location/Location;)V
    .locals 2
    .param p1, "location"    # Landroid/location/Location;

    .line 3694
    iget-object v0, p0, Landroid/location/LocationManager$BatchedLocationCallbackWrapper;->mCallback:Landroid/location/BatchedLocationCallback;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/BatchedLocationCallback;->onLocationBatch(Ljava/util/List;)V

    .line 3695
    return-void
.end method

.method public whitelist onLocationChanged(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/location/Location;",
            ">;)V"
        }
    .end annotation

    .line 3699
    .local p1, "locations":Ljava/util/List;, "Ljava/util/List<Landroid/location/Location;>;"
    iget-object v0, p0, Landroid/location/LocationManager$BatchedLocationCallbackWrapper;->mCallback:Landroid/location/BatchedLocationCallback;

    invoke-virtual {v0, p1}, Landroid/location/BatchedLocationCallback;->onLocationBatch(Ljava/util/List;)V

    .line 3700
    return-void
.end method

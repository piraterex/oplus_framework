.class Landroid/location/Geocoder$GeocoderImpl;
.super Landroid/location/IGeocodeListener$Stub;
.source "Geocoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/Geocoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GeocoderImpl"
.end annotation


# instance fields
.field private blacklist mListener:Landroid/location/Geocoder$GeocodeListener;


# direct methods
.method constructor blacklist <init>(Landroid/location/Geocoder$GeocodeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/location/Geocoder$GeocodeListener;

    .line 334
    invoke-direct {p0}, Landroid/location/IGeocodeListener$Stub;-><init>()V

    .line 335
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Geocoder$GeocodeListener;

    iput-object v0, p0, Landroid/location/Geocoder$GeocoderImpl;->mListener:Landroid/location/Geocoder$GeocodeListener;

    .line 336
    return-void
.end method


# virtual methods
.method public blacklist onResults(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .param p1, "error"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/location/Address;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 340
    .local p2, "addresses":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    iget-object v0, p0, Landroid/location/Geocoder$GeocoderImpl;->mListener:Landroid/location/Geocoder$GeocodeListener;

    if-nez v0, :cond_0

    .line 341
    return-void

    .line 344
    :cond_0
    iget-object v0, p0, Landroid/location/Geocoder$GeocoderImpl;->mListener:Landroid/location/Geocoder$GeocodeListener;

    .line 345
    .local v0, "listener":Landroid/location/Geocoder$GeocodeListener;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/location/Geocoder$GeocoderImpl;->mListener:Landroid/location/Geocoder$GeocodeListener;

    .line 347
    if-eqz p1, :cond_1

    .line 348
    invoke-interface {v0, p1}, Landroid/location/Geocoder$GeocodeListener;->onError(Ljava/lang/String;)V

    goto :goto_0

    .line 350
    :cond_1
    if-nez p2, :cond_2

    .line 351
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    .line 353
    :cond_2
    invoke-interface {v0, p2}, Landroid/location/Geocoder$GeocodeListener;->onGeocode(Ljava/util/List;)V

    .line 355
    :goto_0
    return-void
.end method

.class public final Landroid/location/Geocoder;
.super Ljava/lang/Object;
.source "Geocoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/Geocoder$SynchronousGeocoder;,
        Landroid/location/Geocoder$GeocoderImpl;,
        Landroid/location/Geocoder$GeocodeListener;
    }
.end annotation


# static fields
.field private static final blacklist TIMEOUT_MS:J = 0xea60L


# instance fields
.field private final greylist-max-o mParams:Landroid/location/GeocoderParams;

.field private final greylist-max-o mService:Landroid/location/ILocationManager;


# direct methods
.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 86
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    .line 87
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Ljava/util/Locale;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "locale"    # Ljava/util/Locale;

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Landroid/location/GeocoderParams;

    invoke-direct {v0, p1, p2}, Landroid/location/GeocoderParams;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    iput-object v0, p0, Landroid/location/Geocoder;->mParams:Landroid/location/GeocoderParams;

    .line 94
    nop

    .line 95
    const-string v0, "location"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 94
    invoke-static {v0}, Landroid/location/ILocationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ILocationManager;

    move-result-object v0

    iput-object v0, p0, Landroid/location/Geocoder;->mService:Landroid/location/ILocationManager;

    .line 96
    return-void
.end method

.method public static whitelist isPresent()Z
    .locals 3

    .line 73
    nop

    .line 74
    const-string v0, "location"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 73
    invoke-static {v0}, Landroid/location/ILocationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ILocationManager;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/ILocationManager;

    .line 76
    .local v0, "lm":Landroid/location/ILocationManager;
    :try_start_0
    invoke-interface {v0}, Landroid/location/ILocationManager;->geocoderIsPresent()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 77
    :catch_0
    move-exception v1

    .line 78
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method


# virtual methods
.method public whitelist getFromLocation(DDI)Ljava/util/List;
    .locals 7
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "maxResults"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DDI)",
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 132
    new-instance v6, Landroid/location/Geocoder$SynchronousGeocoder;

    invoke-direct {v6}, Landroid/location/Geocoder$SynchronousGeocoder;-><init>()V

    .line 133
    .local v6, "listener":Landroid/location/Geocoder$SynchronousGeocoder;
    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/location/Geocoder;->getFromLocation(DDILandroid/location/Geocoder$GeocodeListener;)V

    .line 134
    invoke-virtual {v6}, Landroid/location/Geocoder$SynchronousGeocoder;->getResults()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getFromLocation(DDILandroid/location/Geocoder$GeocodeListener;)V
    .locals 16
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "maxResults"    # I
    .param p6, "listener"    # Landroid/location/Geocoder$GeocodeListener;

    .line 159
    move-object/from16 v1, p0

    const-wide v4, -0x3fa9800000000000L    # -90.0

    const-wide v6, 0x4056800000000000L    # 90.0

    const-string v8, "latitude"

    move-wide/from16 v2, p1

    invoke-static/range {v2 .. v8}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(DDDLjava/lang/String;)D

    .line 160
    const-wide v11, -0x3f99800000000000L    # -180.0

    const-wide v13, 0x4066800000000000L    # 180.0

    const-string v15, "longitude"

    move-wide/from16 v9, p3

    invoke-static/range {v9 .. v15}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(DDDLjava/lang/String;)D

    .line 163
    :try_start_0
    iget-object v2, v1, Landroid/location/Geocoder;->mService:Landroid/location/ILocationManager;

    iget-object v8, v1, Landroid/location/Geocoder;->mParams:Landroid/location/GeocoderParams;

    new-instance v9, Landroid/location/Geocoder$GeocoderImpl;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v10, p6

    :try_start_1
    invoke-direct {v9, v10}, Landroid/location/Geocoder$GeocoderImpl;-><init>(Landroid/location/Geocoder$GeocodeListener;)V

    move-wide/from16 v3, p1

    move-wide/from16 v5, p3

    move/from16 v7, p5

    invoke-interface/range {v2 .. v9}, Landroid/location/ILocationManager;->getFromLocation(DDILandroid/location/GeocoderParams;Landroid/location/IGeocodeListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 167
    nop

    .line 168
    return-void

    .line 165
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object/from16 v10, p6

    .line 166
    .local v0, "e":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist getFromLocationName(Ljava/lang/String;I)Ljava/util/List;
    .locals 11
    .param p1, "locationName"    # Ljava/lang/String;
    .param p2, "maxResults"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 202
    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v10}, Landroid/location/Geocoder;->getFromLocationName(Ljava/lang/String;IDDDD)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getFromLocationName(Ljava/lang/String;IDDDD)Ljava/util/List;
    .locals 12
    .param p1, "locationName"    # Ljava/lang/String;
    .param p2, "maxResults"    # I
    .param p3, "lowerLeftLatitude"    # D
    .param p5, "lowerLeftLongitude"    # D
    .param p7, "upperRightLatitude"    # D
    .param p9, "upperRightLongitude"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IDDDD)",
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 274
    new-instance v11, Landroid/location/Geocoder$SynchronousGeocoder;

    invoke-direct {v11}, Landroid/location/Geocoder$SynchronousGeocoder;-><init>()V

    .line 275
    .local v11, "listener":Landroid/location/Geocoder$SynchronousGeocoder;
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    invoke-virtual/range {v0 .. v11}, Landroid/location/Geocoder;->getFromLocationName(Ljava/lang/String;IDDDDLandroid/location/Geocoder$GeocodeListener;)V

    .line 277
    invoke-virtual {v11}, Landroid/location/Geocoder$SynchronousGeocoder;->getResults()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getFromLocationName(Ljava/lang/String;IDDDDLandroid/location/Geocoder$GeocodeListener;)V
    .locals 16
    .param p1, "locationName"    # Ljava/lang/String;
    .param p2, "maxResults"    # I
    .param p3, "lowerLeftLatitude"    # D
    .param p5, "lowerLeftLongitude"    # D
    .param p7, "upperRightLatitude"    # D
    .param p9, "upperRightLongitude"    # D
    .param p11, "listener"    # Landroid/location/Geocoder$GeocodeListener;

    .line 314
    move-object/from16 v1, p0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 315
    const-wide v4, -0x3fa9800000000000L    # -90.0

    const-wide v6, 0x4056800000000000L    # 90.0

    const-string v8, "lowerLeftLatitude"

    move-wide/from16 v2, p3

    invoke-static/range {v2 .. v8}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(DDDLjava/lang/String;)D

    .line 316
    const-wide v11, -0x3f99800000000000L    # -180.0

    const-wide v13, 0x4066800000000000L    # 180.0

    const-string v15, "lowerLeftLongitude"

    move-wide/from16 v9, p5

    invoke-static/range {v9 .. v15}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(DDDLjava/lang/String;)D

    .line 317
    const-string/jumbo v8, "upperRightLatitude"

    move-wide/from16 v2, p7

    invoke-static/range {v2 .. v8}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(DDDLjava/lang/String;)D

    .line 318
    const-string/jumbo v15, "upperRightLongitude"

    move-wide/from16 v9, p9

    invoke-static/range {v9 .. v15}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(DDDLjava/lang/String;)D

    .line 322
    :try_start_0
    iget-object v2, v1, Landroid/location/Geocoder;->mService:Landroid/location/ILocationManager;

    iget-object v13, v1, Landroid/location/Geocoder;->mParams:Landroid/location/GeocoderParams;

    new-instance v14, Landroid/location/Geocoder$GeocoderImpl;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v15, p11

    :try_start_1
    invoke-direct {v14, v15}, Landroid/location/Geocoder$GeocoderImpl;-><init>(Landroid/location/Geocoder$GeocodeListener;)V

    move-object/from16 v3, p1

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    move/from16 v12, p2

    invoke-interface/range {v2 .. v14}, Landroid/location/ILocationManager;->getFromLocationName(Ljava/lang/String;DDDDILandroid/location/GeocoderParams;Landroid/location/IGeocodeListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 327
    nop

    .line 328
    return-void

    .line 325
    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object/from16 v15, p11

    .line 326
    .local v0, "e":Landroid/os/RemoteException;
    :goto_1
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist getFromLocationName(Ljava/lang/String;ILandroid/location/Geocoder$GeocodeListener;)V
    .locals 12
    .param p1, "locationName"    # Ljava/lang/String;
    .param p2, "maxResults"    # I
    .param p3, "listener"    # Landroid/location/Geocoder$GeocodeListener;

    .line 226
    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v11, p3

    invoke-virtual/range {v0 .. v11}, Landroid/location/Geocoder;->getFromLocationName(Ljava/lang/String;IDDDDLandroid/location/Geocoder$GeocodeListener;)V

    .line 227
    return-void
.end method

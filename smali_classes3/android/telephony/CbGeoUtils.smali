.class public Landroid/telephony/CbGeoUtils;
.super Ljava/lang/Object;
.source "CbGeoUtils.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/CbGeoUtils$Circle;,
        Landroid/telephony/CbGeoUtils$Polygon;,
        Landroid/telephony/CbGeoUtils$LatLng;,
        Landroid/telephony/CbGeoUtils$Geometry;
    }
.end annotation


# static fields
.field private static final blacklist CIRCLE_SYMBOL:Ljava/lang/String; = "circle"

.field public static final blacklist EARTH_RADIUS_METER:I = 0x6136b8

.field public static final blacklist EPS:D = 1.0E-7

.field public static final blacklist GEOMETRY_TYPE_CIRCLE:I = 0x3

.field public static final blacklist GEOMETRY_TYPE_POLYGON:I = 0x2

.field public static final blacklist GEO_FENCING_MAXIMUM_WAIT_TIME:I = 0x1

.field private static final blacklist POLYGON_SYMBOL:Ljava/lang/String; = "polygon"

.field private static final blacklist TAG:Ljava/lang/String; = "CbGeoUtils"


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist encodeGeometriesToString(Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/CbGeoUtils$Geometry;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 440
    .local p0, "geometries":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CbGeoUtils$Geometry;>;"
    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 441
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Landroid/telephony/CbGeoUtils$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/telephony/CbGeoUtils$$ExternalSyntheticLambda0;-><init>()V

    .line 442
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Landroid/telephony/CbGeoUtils$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/telephony/CbGeoUtils$$ExternalSyntheticLambda1;-><init>()V

    .line 443
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 444
    const-string v1, ";"

    invoke-static {v1}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 441
    return-object v0

    .line 440
    :cond_1
    :goto_0
    const-string v0, ""

    return-object v0
.end method

.method private static blacklist encodeGeometryToString(Landroid/telephony/CbGeoUtils$Geometry;)Ljava/lang/String;
    .locals 7
    .param p0, "geometry"    # Landroid/telephony/CbGeoUtils$Geometry;

    .line 457
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 458
    .local v0, "sb":Ljava/lang/StringBuilder;
    instance-of v1, p0, Landroid/telephony/CbGeoUtils$Polygon;

    const-string v2, ","

    const-string/jumbo v3, "|"

    if-eqz v1, :cond_1

    .line 459
    const-string/jumbo v1, "polygon"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    move-object v1, p0

    check-cast v1, Landroid/telephony/CbGeoUtils$Polygon;

    invoke-virtual {v1}, Landroid/telephony/CbGeoUtils$Polygon;->getVertices()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/CbGeoUtils$LatLng;

    .line 461
    .local v4, "latLng":Landroid/telephony/CbGeoUtils$LatLng;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    iget-wide v5, v4, Landroid/telephony/CbGeoUtils$LatLng;->lat:D

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 463
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    iget-wide v5, v4, Landroid/telephony/CbGeoUtils$LatLng;->lng:D

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 465
    .end local v4    # "latLng":Landroid/telephony/CbGeoUtils$LatLng;
    goto :goto_0

    :cond_0
    goto :goto_1

    .line 466
    :cond_1
    instance-of v1, p0, Landroid/telephony/CbGeoUtils$Circle;

    if-eqz v1, :cond_2

    .line 467
    const-string v1, "circle"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    move-object v1, p0

    check-cast v1, Landroid/telephony/CbGeoUtils$Circle;

    .line 471
    .local v1, "circle":Landroid/telephony/CbGeoUtils$Circle;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    invoke-virtual {v1}, Landroid/telephony/CbGeoUtils$Circle;->getCenter()Landroid/telephony/CbGeoUtils$LatLng;

    move-result-object v4

    iget-wide v4, v4, Landroid/telephony/CbGeoUtils$LatLng;->lat:D

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 473
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    invoke-virtual {v1}, Landroid/telephony/CbGeoUtils$Circle;->getCenter()Landroid/telephony/CbGeoUtils$LatLng;

    move-result-object v2

    iget-wide v4, v2, Landroid/telephony/CbGeoUtils$LatLng;->lng:D

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 477
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    invoke-virtual {v1}, Landroid/telephony/CbGeoUtils$Circle;->getRadius()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 479
    .end local v1    # "circle":Landroid/telephony/CbGeoUtils$Circle;
    nop

    .line 483
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 480
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported geometry object "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CbGeoUtils"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    const/4 v1, 0x0

    return-object v1
.end method

.method static synthetic blacklist lambda$encodeGeometriesToString$0(Landroid/telephony/CbGeoUtils$Geometry;)Ljava/lang/String;
    .locals 1
    .param p0, "geometry"    # Landroid/telephony/CbGeoUtils$Geometry;

    .line 442
    invoke-static {p0}, Landroid/telephony/CbGeoUtils;->encodeGeometryToString(Landroid/telephony/CbGeoUtils$Geometry;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$encodeGeometriesToString$1(Ljava/lang/String;)Z
    .locals 1
    .param p0, "encodedStr"    # Ljava/lang/String;

    .line 443
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static blacklist parseGeometriesFromString(Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .param p0, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/telephony/CbGeoUtils$Geometry;",
            ">;"
        }
    .end annotation

    .line 408
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 409
    .local v0, "geometries":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CbGeoUtils$Geometry;>;"
    const-string v1, "\\s*;\\s*"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    .line 410
    .local v5, "geometryStr":Ljava/lang/String;
    const-string v6, "\\s*\\|\\s*"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 411
    .local v6, "geoParameters":[Ljava/lang/String;
    aget-object v7, v6, v3

    const/4 v8, -0x1

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v9

    const/4 v10, 0x1

    sparse-switch v9, :sswitch_data_0

    :cond_0
    goto :goto_1

    :sswitch_0
    const-string/jumbo v9, "polygon"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move v8, v10

    goto :goto_1

    :sswitch_1
    const-string v9, "circle"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move v8, v3

    :goto_1
    packed-switch v8, :pswitch_data_0

    .line 424
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid geometry format "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "CbGeoUtils"

    invoke-static {v8, v7}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 417
    :pswitch_0
    new-instance v7, Ljava/util/ArrayList;

    array-length v8, v6

    sub-int/2addr v8, v10

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 418
    .local v7, "vertices":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CbGeoUtils$LatLng;>;"
    const/4 v8, 0x1

    .local v8, "i":I
    :goto_2
    array-length v9, v6

    if-ge v8, v9, :cond_1

    .line 419
    aget-object v9, v6, v8

    invoke-static {v9}, Landroid/telephony/CbGeoUtils;->parseLatLngFromString(Ljava/lang/String;)Landroid/telephony/CbGeoUtils$LatLng;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 418
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 421
    .end local v8    # "i":I
    :cond_1
    new-instance v8, Landroid/telephony/CbGeoUtils$Polygon;

    invoke-direct {v8, v7}, Landroid/telephony/CbGeoUtils$Polygon;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 422
    goto :goto_3

    .line 413
    .end local v7    # "vertices":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CbGeoUtils$LatLng;>;"
    :pswitch_1
    new-instance v7, Landroid/telephony/CbGeoUtils$Circle;

    aget-object v8, v6, v10

    invoke-static {v8}, Landroid/telephony/CbGeoUtils;->parseLatLngFromString(Ljava/lang/String;)Landroid/telephony/CbGeoUtils$LatLng;

    move-result-object v8

    const/4 v9, 0x2

    aget-object v9, v6, v9

    .line 414
    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v9

    invoke-direct {v7, v8, v9, v10}, Landroid/telephony/CbGeoUtils$Circle;-><init>(Landroid/telephony/CbGeoUtils$LatLng;D)V

    .line 413
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 415
    nop

    .line 409
    .end local v5    # "geometryStr":Ljava/lang/String;
    .end local v6    # "geoParameters":[Ljava/lang/String;
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 427
    :cond_2
    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x51134330 -> :sswitch_1
        -0x17b1aac6 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist parseLatLngFromString(Ljava/lang/String;)Landroid/telephony/CbGeoUtils$LatLng;
    .locals 6
    .param p0, "str"    # Ljava/lang/String;

    .line 496
    const-string v0, "\\s*,\\s*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 497
    .local v0, "latLng":[Ljava/lang/String;
    new-instance v1, Landroid/telephony/CbGeoUtils$LatLng;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    const/4 v4, 0x1

    aget-object v4, v0, v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/telephony/CbGeoUtils$LatLng;-><init>(DD)V

    return-object v1
.end method

.method public static blacklist sign(D)I
    .locals 2
    .param p0, "value"    # D

    .line 506
    const-wide v0, 0x3e7ad7f29abcaf48L    # 1.0E-7

    cmpl-double v0, p0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 507
    :cond_0
    const-wide v0, -0x4185280d654350b8L    # -1.0E-7

    cmpg-double v0, p0, v0

    if-gez v0, :cond_1

    const/4 v0, -0x1

    return v0

    .line 508
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

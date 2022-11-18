.class Landroid/location/GeocoderParams$1;
.super Ljava/lang/Object;
.source "GeocoderParams.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GeocoderParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/location/GeocoderParams;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/location/GeocoderParams;
    .locals 13
    .param p1, "in"    # Landroid/os/Parcel;

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 98
    .local v6, "uid":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v7

    .line 99
    .local v7, "packageName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v8

    .line 100
    .local v8, "attributionTag":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v9

    .line 101
    .local v9, "language":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v10

    .line 102
    .local v10, "country":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v11

    .line 104
    .local v11, "variant":Ljava/lang/String;
    new-instance v12, Landroid/location/GeocoderParams;

    new-instance v4, Ljava/util/Locale;

    invoke-direct {v4, v9, v10, v11}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    move-object v0, v12

    move v1, v6

    move-object v2, v7

    move-object v3, v8

    invoke-direct/range {v0 .. v5}, Landroid/location/GeocoderParams;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/Locale;Landroid/location/GeocoderParams-IA;)V

    return-object v12
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 95
    invoke-virtual {p0, p1}, Landroid/location/GeocoderParams$1;->createFromParcel(Landroid/os/Parcel;)Landroid/location/GeocoderParams;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/location/GeocoderParams;
    .locals 1
    .param p1, "size"    # I

    .line 109
    new-array v0, p1, [Landroid/location/GeocoderParams;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 95
    invoke-virtual {p0, p1}, Landroid/location/GeocoderParams$1;->newArray(I)[Landroid/location/GeocoderParams;

    move-result-object p1

    return-object p1
.end method

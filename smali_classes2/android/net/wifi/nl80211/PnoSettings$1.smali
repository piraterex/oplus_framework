.class Landroid/net/wifi/nl80211/PnoSettings$1;
.super Ljava/lang/Object;
.source "PnoSettings.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/nl80211/PnoSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/nl80211/PnoSettings;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/nl80211/PnoSettings;
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 192
    new-instance v0, Landroid/net/wifi/nl80211/PnoSettings;

    invoke-direct {v0}, Landroid/net/wifi/nl80211/PnoSettings;-><init>()V

    .line 193
    .local v0, "result":Landroid/net/wifi/nl80211/PnoSettings;
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/net/wifi/nl80211/PnoSettings;->-$$Nest$fputmIntervalMs(Landroid/net/wifi/nl80211/PnoSettings;J)V

    .line 194
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Landroid/net/wifi/nl80211/PnoSettings;->-$$Nest$fputmMin2gRssi(Landroid/net/wifi/nl80211/PnoSettings;I)V

    .line 195
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Landroid/net/wifi/nl80211/PnoSettings;->-$$Nest$fputmMin5gRssi(Landroid/net/wifi/nl80211/PnoSettings;I)V

    .line 196
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Landroid/net/wifi/nl80211/PnoSettings;->-$$Nest$fputmMin6gRssi(Landroid/net/wifi/nl80211/PnoSettings;I)V

    .line 198
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Landroid/net/wifi/nl80211/PnoSettings;->-$$Nest$fputmPnoNetworks(Landroid/net/wifi/nl80211/PnoSettings;Ljava/util/List;)V

    .line 199
    invoke-static {v0}, Landroid/net/wifi/nl80211/PnoSettings;->-$$Nest$fgetmPnoNetworks(Landroid/net/wifi/nl80211/PnoSettings;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Landroid/net/wifi/nl80211/PnoNetwork;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 201
    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 189
    invoke-virtual {p0, p1}, Landroid/net/wifi/nl80211/PnoSettings$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/nl80211/PnoSettings;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/net/wifi/nl80211/PnoSettings;
    .locals 1
    .param p1, "size"    # I

    .line 206
    new-array v0, p1, [Landroid/net/wifi/nl80211/PnoSettings;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 189
    invoke-virtual {p0, p1}, Landroid/net/wifi/nl80211/PnoSettings$1;->newArray(I)[Landroid/net/wifi/nl80211/PnoSettings;

    move-result-object p1

    return-object p1
.end method

.class Landroid/os/PackageTagsList$1;
.super Ljava/lang/Object;
.source "PackageTagsList.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/PackageTagsList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/os/PackageTagsList;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/os/PackageTagsList;
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 149
    .local v0, "count":I
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1, v0}, Landroid/util/ArrayMap;-><init>(I)V

    .line 150
    .local v1, "packageTags":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x0

    if-ge v2, v0, :cond_0

    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v4

    .line 152
    .local v4, "key":Ljava/lang/String;
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readArraySet(Ljava/lang/ClassLoader;)Landroid/util/ArraySet;

    move-result-object v3

    .line 153
    .local v3, "value":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {v1, v4, v3}, Landroid/util/ArrayMap;->append(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 150
    .end local v3    # "value":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v4    # "key":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 155
    .end local v2    # "i":I
    :cond_0
    new-instance v2, Landroid/os/PackageTagsList;

    invoke-direct {v2, v1, v3}, Landroid/os/PackageTagsList;-><init>(Landroid/util/ArrayMap;Landroid/os/PackageTagsList-IA;)V

    return-object v2
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 144
    invoke-virtual {p0, p1}, Landroid/os/PackageTagsList$1;->createFromParcel(Landroid/os/Parcel;)Landroid/os/PackageTagsList;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/os/PackageTagsList;
    .locals 1
    .param p1, "size"    # I

    .line 160
    new-array v0, p1, [Landroid/os/PackageTagsList;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 144
    invoke-virtual {p0, p1}, Landroid/os/PackageTagsList$1;->newArray(I)[Landroid/os/PackageTagsList;

    move-result-object p1

    return-object p1
.end method

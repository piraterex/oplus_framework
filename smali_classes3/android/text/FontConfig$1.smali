.class Landroid/text/FontConfig$1;
.super Ljava/lang/Object;
.source "FontConfig.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/FontConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/text/FontConfig;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/text/FontConfig;
    .locals 12
    .param p1, "source"    # Landroid/os/Parcel;

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-class v1, Landroid/text/FontConfig$FontFamily;

    .line 146
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v2, Landroid/text/FontConfig$FontFamily;

    .line 145
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Parcel;->readParcelableList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 147
    .local v0, "families":Ljava/util/List;, "Ljava/util/List<Landroid/text/FontConfig$FontFamily;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-class v2, Landroid/text/FontConfig$Alias;

    .line 148
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const-class v3, Landroid/text/FontConfig$Alias;

    .line 147
    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Parcel;->readParcelableList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    .line 149
    .local v1, "aliases":Ljava/util/List;, "Ljava/util/List<Landroid/text/FontConfig$Alias;>;"
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v9

    .line 150
    .local v9, "lastModifiedDate":J
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 151
    .local v2, "configVersion":I
    new-instance v11, Landroid/text/FontConfig;

    move-object v3, v11

    move-object v4, v0

    move-object v5, v1

    move-wide v6, v9

    move v8, v2

    invoke-direct/range {v3 .. v8}, Landroid/text/FontConfig;-><init>(Ljava/util/List;Ljava/util/List;JI)V

    return-object v11
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 142
    invoke-virtual {p0, p1}, Landroid/text/FontConfig$1;->createFromParcel(Landroid/os/Parcel;)Landroid/text/FontConfig;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/text/FontConfig;
    .locals 1
    .param p1, "size"    # I

    .line 156
    new-array v0, p1, [Landroid/text/FontConfig;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 142
    invoke-virtual {p0, p1}, Landroid/text/FontConfig$1;->newArray(I)[Landroid/text/FontConfig;

    move-result-object p1

    return-object p1
.end method

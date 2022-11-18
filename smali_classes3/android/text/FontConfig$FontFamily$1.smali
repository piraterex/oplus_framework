.class Landroid/text/FontConfig$FontFamily$1;
.super Ljava/lang/Object;
.source "FontConfig.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/FontConfig$FontFamily;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/text/FontConfig$FontFamily;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 615
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/text/FontConfig$FontFamily;
    .locals 6
    .param p1, "source"    # Landroid/os/Parcel;

    .line 619
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-class v1, Landroid/text/FontConfig$Font;

    .line 620
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v2, Landroid/text/FontConfig$Font;

    .line 619
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Parcel;->readParcelableList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 621
    .local v0, "fonts":Ljava/util/List;, "Ljava/util/List<Landroid/text/FontConfig$Font;>;"
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v1

    .line 622
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v2

    .line 623
    .local v2, "langTags":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 625
    .local v3, "variant":I
    new-instance v4, Landroid/text/FontConfig$FontFamily;

    invoke-static {v2}, Landroid/os/LocaleList;->forLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object v5

    invoke-direct {v4, v0, v1, v5, v3}, Landroid/text/FontConfig$FontFamily;-><init>(Ljava/util/List;Ljava/lang/String;Landroid/os/LocaleList;I)V

    return-object v4
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 615
    invoke-virtual {p0, p1}, Landroid/text/FontConfig$FontFamily$1;->createFromParcel(Landroid/os/Parcel;)Landroid/text/FontConfig$FontFamily;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/text/FontConfig$FontFamily;
    .locals 1
    .param p1, "size"    # I

    .line 630
    new-array v0, p1, [Landroid/text/FontConfig$FontFamily;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 615
    invoke-virtual {p0, p1}, Landroid/text/FontConfig$FontFamily$1;->newArray(I)[Landroid/text/FontConfig$FontFamily;

    move-result-object p1

    return-object p1
.end method

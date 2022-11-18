.class Landroid/content/pm/PackageManager$Property$1;
.super Ljava/lang/Object;
.source "PackageManager.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageManager$Property;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/content/pm/PackageManager$Property;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 377
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/content/pm/PackageManager$Property;
    .locals 11
    .param p1, "source"    # Landroid/os/Parcel;

    .line 380
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 381
    .local v6, "name":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 382
    .local v7, "type":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 383
    .local v8, "packageName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 384
    .local v9, "className":Ljava/lang/String;
    const/4 v0, 0x1

    if-ne v7, v0, :cond_0

    .line 385
    new-instance v0, Landroid/content/pm/PackageManager$Property;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-direct {v0, v6, v1, v8, v9}, Landroid/content/pm/PackageManager$Property;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 386
    :cond_0
    const/4 v0, 0x2

    if-ne v7, v0, :cond_1

    .line 387
    new-instance v0, Landroid/content/pm/PackageManager$Property;

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    invoke-direct {v0, v6, v1, v8, v9}, Landroid/content/pm/PackageManager$Property;-><init>(Ljava/lang/String;FLjava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 388
    :cond_1
    const/4 v0, 0x3

    if-ne v7, v0, :cond_2

    .line 389
    new-instance v10, Landroid/content/pm/PackageManager$Property;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v3, 0x0

    move-object v0, v10

    move-object v1, v6

    move-object v4, v8

    move-object v5, v9

    invoke-direct/range {v0 .. v5}, Landroid/content/pm/PackageManager$Property;-><init>(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;)V

    return-object v10

    .line 390
    :cond_2
    const/4 v0, 0x4

    if-ne v7, v0, :cond_3

    .line 391
    new-instance v10, Landroid/content/pm/PackageManager$Property;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v3, 0x1

    move-object v0, v10

    move-object v1, v6

    move-object v4, v8

    move-object v5, v9

    invoke-direct/range {v0 .. v5}, Landroid/content/pm/PackageManager$Property;-><init>(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;)V

    return-object v10

    .line 392
    :cond_3
    const/4 v0, 0x5

    if-ne v7, v0, :cond_4

    .line 393
    new-instance v0, Landroid/content/pm/PackageManager$Property;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v6, v1, v8, v9}, Landroid/content/pm/PackageManager$Property;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 395
    :cond_4
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 377
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager$Property$1;->createFromParcel(Landroid/os/Parcel;)Landroid/content/pm/PackageManager$Property;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/content/pm/PackageManager$Property;
    .locals 1
    .param p1, "size"    # I

    .line 400
    new-array v0, p1, [Landroid/content/pm/PackageManager$Property;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 377
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager$Property$1;->newArray(I)[Landroid/content/pm/PackageManager$Property;

    move-result-object p1

    return-object p1
.end method

.class Landroid/app/admin/ParcelableResource$1;
.super Ljava/lang/Object;
.source "ParcelableResource.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/admin/ParcelableResource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/app/admin/ParcelableResource;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 345
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/app/admin/ParcelableResource;
    .locals 11
    .param p1, "in"    # Landroid/os/Parcel;

    .line 348
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 349
    .local v6, "resourceId":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 350
    .local v7, "packageName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 351
    .local v8, "resourceName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 353
    .local v9, "resourceType":I
    new-instance v10, Landroid/app/admin/ParcelableResource;

    const/4 v5, 0x0

    move-object v0, v10

    move v1, v6

    move-object v2, v7

    move-object v3, v8

    move v4, v9

    invoke-direct/range {v0 .. v5}, Landroid/app/admin/ParcelableResource;-><init>(ILjava/lang/String;Ljava/lang/String;ILandroid/app/admin/ParcelableResource-IA;)V

    return-object v10
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 345
    invoke-virtual {p0, p1}, Landroid/app/admin/ParcelableResource$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/admin/ParcelableResource;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/app/admin/ParcelableResource;
    .locals 1
    .param p1, "size"    # I

    .line 359
    new-array v0, p1, [Landroid/app/admin/ParcelableResource;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 345
    invoke-virtual {p0, p1}, Landroid/app/admin/ParcelableResource$1;->newArray(I)[Landroid/app/admin/ParcelableResource;

    move-result-object p1

    return-object p1
.end method

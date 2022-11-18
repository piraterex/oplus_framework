.class Landroid/nfc/Tag$1;
.super Ljava/lang/Object;
.source "Tag.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/Tag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/nfc/Tag;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 455
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/nfc/Tag;
    .locals 13
    .param p1, "in"    # Landroid/os/Parcel;

    .line 461
    invoke-static {p1}, Landroid/nfc/Tag;->readBytesWithNull(Landroid/os/Parcel;)[B

    move-result-object v6

    .line 462
    .local v6, "id":[B
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v7, v0, [I

    .line 463
    .local v7, "techList":[I
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->readIntArray([I)V

    .line 464
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, [Landroid/os/Bundle;

    .line 465
    .local v8, "techExtras":[Landroid/os/Bundle;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 466
    .local v9, "serviceHandle":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 467
    .local v10, "isMock":I
    if-nez v10, :cond_0

    .line 468
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/nfc/INfcTag$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcTag;

    move-result-object v0

    move-object v11, v0

    .local v0, "tagService":Landroid/nfc/INfcTag;
    goto :goto_0

    .line 471
    .end local v0    # "tagService":Landroid/nfc/INfcTag;
    :cond_0
    const/4 v0, 0x0

    move-object v11, v0

    .line 474
    .local v11, "tagService":Landroid/nfc/INfcTag;
    :goto_0
    new-instance v12, Landroid/nfc/Tag;

    move-object v0, v12

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    move v4, v9

    move-object v5, v11

    invoke-direct/range {v0 .. v5}, Landroid/nfc/Tag;-><init>([B[I[Landroid/os/Bundle;ILandroid/nfc/INfcTag;)V

    return-object v12
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 455
    invoke-virtual {p0, p1}, Landroid/nfc/Tag$1;->createFromParcel(Landroid/os/Parcel;)Landroid/nfc/Tag;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/nfc/Tag;
    .locals 1
    .param p1, "size"    # I

    .line 479
    new-array v0, p1, [Landroid/nfc/Tag;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 455
    invoke-virtual {p0, p1}, Landroid/nfc/Tag$1;->newArray(I)[Landroid/nfc/Tag;

    move-result-object p1

    return-object p1
.end method

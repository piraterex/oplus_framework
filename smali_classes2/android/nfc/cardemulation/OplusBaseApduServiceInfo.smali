.class public Landroid/nfc/cardemulation/OplusBaseApduServiceInfo;
.super Ljava/lang/Object;
.source "OplusBaseApduServiceInfo.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "OplusBaseApduServiceInfo"


# instance fields
.field blacklist mByteArrayBanner:[B

.field protected whitelist mServiceState:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 2

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x2

    iput v0, p0, Landroid/nfc/cardemulation/OplusBaseApduServiceInfo;->mServiceState:I

    .line 61
    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte v1, v0, v1

    iput-object v0, p0, Landroid/nfc/cardemulation/OplusBaseApduServiceInfo;->mByteArrayBanner:[B

    .line 69
    return-void
.end method


# virtual methods
.method public blacklist getBitmapBanner()Landroid/graphics/Bitmap;
    .locals 3

    .line 113
    iget-object v0, p0, Landroid/nfc/cardemulation/OplusBaseApduServiceInfo;->mByteArrayBanner:[B

    if-nez v0, :cond_0

    .line 114
    const/4 v0, 0x0

    return-object v0

    .line 116
    :cond_0
    const-string v0, "OplusBaseApduServiceInfo"

    const-string v1, "getBitmapBanner++"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v0, p0, Landroid/nfc/cardemulation/OplusBaseApduServiceInfo;->mByteArrayBanner:[B

    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 118
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    return-object v0
.end method

.method public whitelist isServiceEnabled(Ljava/lang/String;)Z
    .locals 3
    .param p1, "category"    # Ljava/lang/String;

    .line 83
    const-string v0, "other"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 84
    return v1

    .line 86
    :cond_0
    iget v0, p0, Landroid/nfc/cardemulation/OplusBaseApduServiceInfo;->mServiceState:I

    if-eq v0, v1, :cond_2

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    goto :goto_0

    .line 90
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 88
    :cond_2
    :goto_0
    return v1
.end method

.method public blacklist loadBanner(Landroid/content/pm/PackageManager;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "bannerResourceId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;,
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 133
    const/4 v0, 0x0

    .line 134
    .local v0, "banner":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1, p3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    .line 135
    .local v1, "res":Landroid/content/res/Resources;
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 136
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/nfc/cardemulation/OplusBaseApduServiceInfo;->getBitmapBanner()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    move-object v0, v2

    goto :goto_0

    .line 138
    :cond_0
    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 141
    :goto_0
    return-object v0
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/nfc/cardemulation/OplusBaseApduServiceInfo;->mServiceState:I

    .line 160
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Landroid/nfc/cardemulation/OplusBaseApduServiceInfo;->mByteArrayBanner:[B

    .line 161
    return-void
.end method

.method public blacklist setServiceState(Ljava/lang/String;I)I
    .locals 1
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "state"    # I

    .line 98
    const-string v0, "other"

    if-eq p1, v0, :cond_0

    .line 99
    const/4 v0, 0x1

    return v0

    .line 102
    :cond_0
    iput p2, p0, Landroid/nfc/cardemulation/OplusBaseApduServiceInfo;->mServiceState:I

    .line 103
    return p2
.end method

.method public blacklist setUpData(I[B)V
    .locals 0
    .param p1, "serviceState"    # I
    .param p2, "banner"    # [B

    .line 75
    iput p1, p0, Landroid/nfc/cardemulation/OplusBaseApduServiceInfo;->mServiceState:I

    .line 76
    iput-object p2, p0, Landroid/nfc/cardemulation/OplusBaseApduServiceInfo;->mByteArrayBanner:[B

    .line 77
    return-void
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 150
    iget v0, p0, Landroid/nfc/cardemulation/OplusBaseApduServiceInfo;->mServiceState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    iget-object v0, p0, Landroid/nfc/cardemulation/OplusBaseApduServiceInfo;->mByteArrayBanner:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 153
    return-void
.end method

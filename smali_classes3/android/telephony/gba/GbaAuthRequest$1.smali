.class Landroid/telephony/gba/GbaAuthRequest$1;
.super Ljava/lang/Object;
.source "GbaAuthRequest.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/gba/GbaAuthRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/telephony/gba/GbaAuthRequest;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/telephony/gba/GbaAuthRequest;
    .locals 18
    .param p1, "in"    # Landroid/os/Parcel;

    .line 120
    move-object/from16 v0, p1

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 121
    .local v9, "token":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 122
    .local v10, "subId":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 123
    .local v11, "appType":I
    const-class v1, Landroid/telephony/gba/GbaAuthRequest;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v2, Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/net/Uri;

    .line 124
    .local v12, "nafUrl":Landroid/net/Uri;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 125
    .local v13, "len":I
    new-array v14, v13, [B

    .line 126
    .local v14, "protocol":[B
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->readByteArray([B)V

    .line 127
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v15

    .line 128
    .local v15, "forceBootStrapping":Z
    nop

    .line 130
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/IBootstrapAuthenticationCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/IBootstrapAuthenticationCallback;

    move-result-object v16

    .line 131
    .local v16, "callback":Landroid/telephony/IBootstrapAuthenticationCallback;
    new-instance v17, Landroid/telephony/gba/GbaAuthRequest;

    move-object/from16 v1, v17

    move v2, v9

    move v3, v10

    move v4, v11

    move-object v5, v12

    move-object v6, v14

    move v7, v15

    move-object/from16 v8, v16

    invoke-direct/range {v1 .. v8}, Landroid/telephony/gba/GbaAuthRequest;-><init>(IIILandroid/net/Uri;[BZLandroid/telephony/IBootstrapAuthenticationCallback;)V

    return-object v17
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 117
    invoke-virtual {p0, p1}, Landroid/telephony/gba/GbaAuthRequest$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telephony/gba/GbaAuthRequest;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/telephony/gba/GbaAuthRequest;
    .locals 1
    .param p1, "size"    # I

    .line 137
    new-array v0, p1, [Landroid/telephony/gba/GbaAuthRequest;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 117
    invoke-virtual {p0, p1}, Landroid/telephony/gba/GbaAuthRequest$1;->newArray(I)[Landroid/telephony/gba/GbaAuthRequest;

    move-result-object p1

    return-object p1
.end method
